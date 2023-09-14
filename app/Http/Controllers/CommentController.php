<?php

namespace App\Http\Controllers;

use App\Models\Comment;
use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CommentController extends Controller
{
    /**
     * Display a listing of the resource.
     */

    public function index($id)
    {
    }



    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $rules = [
            'comment' => 'required|max:255', // タイトルは必須で最大255文字まで
        ];

        // バリデーションを実行
        $request->validate($rules);

        // ログインしているユーザーのIDを取得
        $user_id = Auth::user()->id;

        // リクエストデータに 'user_id' を追加して保存
        Comment::create(array_merge($request->all(), ['user_id' => $user_id]));
        return redirect()->route('post.show', ['id' => $request->post_id]);
    }


    /**
     * Display the specified resource.
     */
    public function show($id)
    {
    }


    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {

        $comment = Comment::find($id);
        return view('comment/edit', compact('comment'));
    }

    /**
     * Update the specified resource in storage.
     */

    public function update(Request $request, $id)
    {
        $rules = [
            'comment' => 'required|max:255', // タイトルは必須で最大255文字まで
        ];

        // バリデーションを実行
        $request->validate($rules);
        $comment = Comment::find($id);

        // リクエストデータを使用して投稿を更新
        $comment->update([
            'comment' => $request->input('comment'),
        ]);

        session()->flash('success', 'コメントが更新されました。');
        return redirect()->route('post.show', ['id' => $comment->post_id]);
    }
    public function delete($id)
    {

        $comment = Comment::find($id);
        $post = Post::find($comment->post_id);
        return view('comment/delete', compact('post', 'comment'));
    }


    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $comment = Comment::find($id);
        $comment->delete();
        session()->flash('success', 'コメントが削除されました。');
        return redirect()->route('post.show', ['id' => $comment->post_id]);
    }
}
