<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Like;
use App\Models\Post;

class LikeController extends Controller
{
    public function store(Request $request)
    {
        $user_id = auth()->user()->id;
        $post_id = $request->input('post_id');
        // すでにいいねが存在するか確認
        $existingLike = Like::where('user_id', $user_id)
            ->where('post_id', $post_id)
            ->first();

        if ($existingLike) {
            // いいねが既に存在する場合、削除
            $existingLike->delete();
            $message = 'いいねが解除されました。';
        } else {
            // いいねが存在しない場合、新規作成
            Like::create([
                'user_id' => $user_id,
                'post_id' => $post_id,
            ]);
            $message = 'いいねが付けられました。';
        }

        // いいねのカウントを再取得
        $post = Post::find($post_id);
        $likes = $post->likes->count();

        return response()->json(['message' => $message, 'likeCount' => $likes]);
    }

}
