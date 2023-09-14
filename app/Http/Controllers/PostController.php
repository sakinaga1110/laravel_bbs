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
use Illuminate\Pagination\LengthAwarePaginator;
use Illuminate\Support\Facades\DB;


class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     */

    public function index()
    {
        Post::get(['*'])->searchable();
        // ログインしたユーザーのIDを取得
        $user_id = auth()->user()->id;

        // ログインしたユーザーがいいねした投稿のID一覧を取得
        $likedPosts = Like::where('user_id', $user_id)->pluck('post_id')->toArray();

        // 投稿一覧を取得
        $results = Post::with('user')->orderBy('created_at', 'desc')->paginate(10);

        // 各投稿にいいねの状態を設定
        foreach ($results as $post) {
            $isLiked = in_array($post->id, $likedPosts);
            $post->isLiked = $isLiked;
        }
        $msg = '';

        $posts = [
            'input' => '',
            'msg' => $msg,
            'posts' => $results,
        ];
        // ビューにデータを渡す
        return view('index', $posts);
    }
    public function my_post()
    {

        // ログインしたユーザーのIDを取得
        $user_id = auth()->user()->id;

        // ログインしたユーザーの投稿のみを取得
        $userPosts = Post::where('user_id', $user_id)->orderBy('created_at', 'desc')->paginate(10);

        // ログインしたユーザーがいいねした投稿のID一覧を取得
        $likedPosts = Like::where('user_id', $user_id)->pluck('post_id')->toArray();

        // 各投稿にいいねの状態を設定
        foreach ($userPosts as $post) {
            $isLiked = in_array($post->id, $likedPosts);
            $post->isLiked = $isLiked;
        }

        $msg = '';

        $posts = [
            'input' => '',
            'msg' => $msg,
            'posts' => $userPosts,
        ];

        // ビューにデータを渡す
        return view('my_post', $posts);
    }




    public function send(Request $request)
    {
        $input = $request->input('find');
        $msg = '検索:' . $input;

        // 投稿タイトルと本文を検索
        $postSearchResult = Post::search('*' . $input . '*')->get();

        // ユーザー名を検索
        $userSearchResult = User::where('name', 'like', '%' . $input . '%')->pluck('id')->toArray();

        // ユーザー名の検索結果を元に投稿を検索
        $postUserSearchResult = Post::whereIn('user_id', $userSearchResult)->get();

        // 投稿タイトルと本文、ユーザー名で検索した結果を結合
        $combinedResults = $postSearchResult->concat($postUserSearchResult);
        // ログインしたユーザーのIDを取得
        $user_id = auth()->user()->id;
        // ログインしたユーザーがいいねした投稿のID一覧を取得
        $likedPosts = Like::where('user_id', $user_id)->pluck('post_id')->toArray();

        // 各投稿にいいねの状態を設定
        foreach ($postUserSearchResult as $post) {
            $isLiked = in_array($post->id, $likedPosts);
            $post->isLiked = $isLiked;
        }
        // ページネーションの設定
        $currentPage = LengthAwarePaginator::resolveCurrentPage();
        $perPage = 10;
        $currentPageSearchResults = $combinedResults->slice(($currentPage - 1) * $perPage, $perPage)->all();
        $posts = new LengthAwarePaginator($currentPageSearchResults, count($combinedResults), $perPage);

        $posts->withPath(route('my_post')); // ページネーションのリンク先を設定

        $postsData = [
            'input' => $input,
            'msg' => '検索ワード：' . $msg,
            'posts' => $posts,
        ];

        return view('index', $postsData);
    }
    public function my_send(Request $request)
    {
        $input = $request->input('find');
        $msg = '検索:' . $input;

        // ログインユーザーのIDを取得
        $user_id = auth()->user()->id;

        // ユーザーIDがログインユーザーのIDと一致し、かつ投稿タイトルまたは本文に検索キーワードが含まれる投稿を検索
        $postSearchResult = Post::where('user_id', $user_id)
            ->where(function ($query) use ($input) {
                $query->where('title', 'like', '%' . $input . '%')
                    ->orWhere('main_text', 'like', '%' . $input . '%');
            })
            ->get();
        // ログインしたユーザーがいいねした投稿のID一覧を取得
        $likedPosts = Like::where('user_id', $user_id)->pluck('post_id')->toArray();

        // 各投稿にいいねの状態を設定
        foreach ($postSearchResult as $post) {
            $isLiked = in_array($post->id, $likedPosts);
            $post->isLiked = $isLiked;
        }
        // ページネーションの設定
        $currentPage = LengthAwarePaginator::resolveCurrentPage();
        $perPage = 10;
        $currentPageSearchResults = $postSearchResult->slice(($currentPage - 1) * $perPage, $perPage)->all();
        $posts = new LengthAwarePaginator($currentPageSearchResults, count($postSearchResult), $perPage);

        $posts->withPath(route('my_post')); // ページネーションのリンク先を設定

        $postsData = [
            'input' => $input,
            'msg' => '検索ワード：' . $msg,
            'posts' => $posts,
        ];
        return view('my_post', $postsData);
    }



    public function likes_index()
    {
        // ログインしたユーザーのIDを取得
        $user_id = auth()->user()->id;

        // ログインしたユーザーがいいねした投稿のID一覧を取得
        $likedPostIds = Like::where('user_id', $user_id)->pluck('post_id')->toArray();

        // 投稿一覧を取得
        $likedPosts = Post::with('user')
            ->whereIn('id', $likedPostIds)
            ->orderBy('created_at', 'desc')
            ->paginate(10);

        // 各投稿にいいねの状態を設定
        foreach ($likedPosts as $post) {
            $isLiked = in_array($post->id, $likedPostIds);
            $post->isLiked = $isLiked;
        }

        return view('likes', compact('likedPosts'));
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
        // バリデーションルールを定義
        $rules = [
            'title' => 'required|max:255', // タイトルは必須で最大255文字まで
            'main_text' => 'required|max:1000', // コンテンツは必須最大1000文字まで
            'tag' => 'max:30',
        ];

        // バリデーションを実行
        $request->validate($rules);

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
        return view('post.edit', compact('post'));
    }

    /**
     * Update the specified resource in storage.
     */

    public function update(Request $request, $id)
    {
        // バリデーションルールを定義
        $rules = [
            'title' => 'required|max:255', // タイトルは必須で最大255文字まで
            'main_text' => 'required|max:1000', // コンテンツは必須最大1000文字まで
            'tag' => 'max:30',
        ];

        // バリデーションを実行
        $request->validate($rules);
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
