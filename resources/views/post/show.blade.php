<x-app-layout>
    <br />
    <div class="container">
        @if (session()->has('success'))
            <div class="alert alert-success">
                {{ session()->get('success') }}
            </div>
        @endif
        <div class="card">
            <div class="card-header p-6">
                <p class="font-semibold mb-4">{{ $post->title }}
                <div class="text-right">
                    @if (Auth::check() && $post->user->id === Auth::id())
                        <div class="text-right">
                            <a href="{{ route('edit', ['id' => $post->id]) }}" class="btn btn-primary ">編集</a>
                            <a href="{{ route('delete', ['id' => $post->id]) }}" class="btn btn-danger">削除</a>
                        </div>
                    @endif
                    <br />
                    @if (Auth::check() && Auth::user()->name != 'Guest User')
                        <!-- いいねボタン -->
                        @if (Auth::check() && Auth::user()->name != 'Guest User')
                            @if ($post->isLiked)
                                <button type="button" class="btn bg-danger btn_like liked"
                                    data-post-id="{{ $post->id }}">♡
                                    {{ $post->likes->count() }}
                                </button>
                            @else
                                <button type="button" class="btn btn_like" data-post-id="{{ $post->id }}">♡
                                    {{ $post->likes->count() }}
                                </button>
                            @endif
                        @endif
                    @endif
                    <style>
                        .rounded-icon {
                            width: 40px;
                            height: 40px;
                            border-radius: 50%;
                            object-fit: cover;
                            margin-right: 10px;
                            /* アイコンとユーザー名の間隔を調整 */
                        }
                    </style>
                    <div style="display: flex; align-items: center;">
                        <img src="{{ asset('storage/icons/' . $post->user->icon) }}" alt="Icon"
                            class="rounded-icon">
                        <p>{{ $post->user->name }}</p>
                    </div>
                </div>
                <div class="card-body p-6">
                    本文： <p class="font-semibold p-6">{{ $post->main_text }}</p>
                    タグ： <p class="font-semibold p-6">{{ $post->tag }}</p>
                    <br />
                    <hr>
                    <br />
                    <div class="container">
                        <p class="text-white bg-black text-center">コメント一覧</p>
                        <br />
                        @foreach ($comments as $comment)
                            <div class="media">
                                <div class="media-body">
                                    {{ $comment->comment }}
                                    <br/>
                                     <br/>
                                    <div style="display: flex; align-items: center;">
                                        <img src="{{ asset('storage/icons/' . $post->user->icon) }}" alt="Icon"
                                            class="rounded-icon">
                                        {{ '@' . $comment->user->name }}

                                        @if (Auth::check() && $comment->user->id === Auth::id())
                                            <div class="text-right">
                                                <a href="{{ route('comment.edit', ['id' => $comment->id]) }}"
                                                    class="btn btn-primary">編集</a>
                                                <a href="{{ route('comment.delete', ['id' => $comment->id]) }}"
                                                    class="btn btn-danger">削除</a>
                                            </div>
                                        @endif
                                    </div>
                                    <br />
                                    <hr />
                                    <br />
                                    </p>
                                </div>
                            </div>
                        @endforeach
                        {{ $comments->links() }}
                    </div>
                    <br />
               
                    <br />

                    <div class="row justify-content-center">
                        @if ($errors->any())
                            <div class="alert alert-danger">
                                <ul>
                                    @foreach ($errors->all() as $error)
                                        <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div>
                        @endif
                        <div class="col-md-6"> <!-- 適切なカラムサイズを指定 -->
                            @if (Auth::check() && Auth::user()->name != 'Guest User')
                                <form method="POST" action="{{ route('post.show', ['id' => $post->id]) }}">
                                    @csrf
                                    <div class="form-group">
                                        <input type="hidden" name="post_id" value="{{ $post->id }}">
                                        <input type="text" name="comment" class="form-control" placeholder="コメントを入力"
                                            required>
                                            <br/>
                                        <button class="btn btn-primary"><input type="submit" value="コメントを送信"></button>
                                    </div>
                                </form>
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
            crossorigin="anonymous"></script>
        <script>
            let userId = {{ auth()->user()->id }}; // ログインユーザーのIDを取得

            $(document).ready(function() {
                $(".btn_like").click(function() {
                    const button = $(this);
                    const post_id = button.data("post-id"); // ボタンのdata-post-id属性を取得
                    const csrf_token = "{{ csrf_token() }}";

                    $(document).ready(function() {



                        button.prop("disabled", true);

                        // いいねの状態を取得
                        const isLiked = button.hasClass("liked");

                        $.ajax({
                            type: "POST",
                            url: "/like",
                            data: {
                                user_id: userId, // ログインユーザーのIDを使用
                                post_id: post_id,
                                _token: csrf_token
                            },
                            success: function(response) {
                                console.log(response); // レスポンスをコンソールに表示してデータを確認
                                if (isLiked) {
                                    // いいねを解除した場合
                                    button.removeClass("liked");
                                    button.removeClass("bg-danger");
                                } else {
                                    // いいねを付けた場合
                                    button.addClass("liked");
                                    button.addClass("bg-danger");
                                }
                                button.text("♡ " + response
                                    .likeCount); // responseからいいねの数を取得
                            },

                            error: function() {
                                // エラー処理
                                alert("エラーが発生しました。");
                            },
                            complete: function() {
                                button.prop("disabled", false);
                            }
                        });
                    });
                });
            });
        </script>
</x-app-layout>
