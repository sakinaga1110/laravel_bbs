<?php

namespace App\Http\Controllers;

use App\Models\Comment;
use App\Models\Like;
use Illuminate\Contracts\Auth\Authenticatable;
use App\Models\Post;
use App\Models\User;
use Illuminate\Http\Request;
use SebastianBergmann\CodeCoverage\Report\Html\Index;
use Illuminate\Support\Facades\Auth;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     */
  
    public function index()
    {
        // ログインしたユーザーのIDを取得
        $user_id = auth()->user()->id;
    
        // ログインしたユーザーがいいねした投稿のID一覧を取得
        $likedPosts = Like::where('user_id', $user_id)->pluck('post_id')->toArray();
    
        // 投稿一覧を取得
        $posts = Post::with('user')->orderBy('created_at', 'desc')->paginate(10);
    
        // 各投稿にいいねの状態を設定
        foreach ($posts as $post) {
            $isLiked = in_array($post->id, $likedPosts);
            $post->isLiked = $isLiked;
        }
    
        // ビューにデータを渡す
        return view('index', compact('posts'));
    }
    
    
    


    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('post.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // ユーザーがログインしているか確認
        if (Auth::check()) {
            // ログインしているユーザーのIDを取得
            $user_id = Auth::user()->id;

            // リクエストデータに 'user_id' を追加して保存
            Post::create(array_merge($request->all(), ['user_id' => $user_id]));
             // フラッシュメッセージを設定
        session()->flash('success', '投稿が掲示されました。');
        }

        return redirect()->route('index');
    }

    public function show($id)
    {
        // ログインしたユーザーのIDを取得
        $user_id = auth()->user()->id;
        // ログインしたユーザーがいいねした投稿のID一覧を取得
        $likedPosts = Like::where('user_id', $user_id)->pluck('post_id')->toArray();
        $post = Post::find($id); // 渡された ID に対応する投稿を取得
        $isLiked = in_array($post->id, $likedPosts);
        $post->isLiked = $isLiked;
        $comments = Comment::where('post_id', $id)->with('user')->get();
        $comments = Comment::where('post_id', $id)->orderBy('created_at', 'desc') // created_atカラムで降順にソート
        ->paginate(10);
        return view('post.show', compact('post', 'comments'));
    }
    
    




    /**
     * Display the specified resource.
     */


    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $post = Post::find($id); 
        return view('post.edit',compact('post'));
    }

    /**
     * Update the specified resource in storage.
     */
    
public function update(Request $request, $id)
{
    
    $post = Post::find($id);

    // リクエストデータを使用して投稿を更新
    $post->update([
        'title' => $request->input('title'),
        'main_text' => $request->input('main_text'),
        'tag' => $request->input('tag'),
        // 他の更新が必要なカラムもここに追加
    ]);

    session()->flash('success', '投稿が更新されました。');
    return redirect()->route('index');
}
public function delete($id)
{
    $post = Post::find($id); // 渡された ID に対応する投稿を取得
    $comments = Comment::where('post_id', $id)->with('user')->get();

    return view('post.delete', compact('post', 'comments'));
}

    
    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $post = Post::find($id);
        $post->delete();
        session()->flash('success', '投稿が削除されました。');
        return redirect()->route('index');
    }
}
