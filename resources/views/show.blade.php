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
                    @if ($post->isLiked)
                        <button type="button" class="btn bg-danger btn_like liked"
                            data-post-id="{{ $post->id }}">♡</button>
                    @else
                        <button type="button" class="btn btn_like" data-post-id="{{ $post->id }}">♡</button>
                    @endif
                    <div class="text-gray-600 text-right">投稿者: {{ $post->user->name }}</div>
                    </p>
                </div>
                <div class="card-body p-6">
                    本文： <p class="font-semibold p-6">{{ $post->main_text }}</p>
                    タグ： <p class="font-semibold p-6">{{ $post->tag }}</p>
                    <br />
                    <hr>
                    <br />
                    <div class="container">
                        コメント一覧
                        @foreach ($comments as $comment)
                            <div class="media">
                                <div class="media-body">
                                    {{ $comment->comment }}
                                    {{ '　＠' . $comment->user->name }}
                                    @if (Auth::check() && $comment->user->id === Auth::id())
                                        <div class="text-right">
                                            <a href="{{ route('comment.edit', ['id' => $comment->id]) }}"
                                                class="btn btn-primary">編集</a>
                                            <a href="{{ route('comment.delete', ['id' => $comment->id]) }}"
                                                class="btn btn-danger">削除</a>
                                        </div>
                                    @endif
                                    </p>
                                </div>
                            </div>
                        @endforeach
                        {{ $comments->links() }}
                    </div>
                    <br />
                    <hr>
                    <br />

                    <div class="row justify-content-center">
                        <div class="col-md-6"> <!-- 適切なカラムサイズを指定 -->
                            <form method="POST" action="{{ route('show', ['id' => $post->id]) }}">
                                @csrf
                                <input type="hidden" name="post_id" value="{{ $post->id }}">
                                <input type="text" name="comment" placeholder="コメントを入力" required>
                                <button class="btn btn-primary"><input type="submit" value="コメントを送信"></button>

                            </form>
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
                                if (isLiked) {
                                    // いいねを解除した場合
                                    button.removeClass("liked");
                                    button.removeClass("bg-danger");
                                    button.text("♡");
                                } else {
                                    // いいねを付けた場合
                                    button.addClass("liked");
                                    button.addClass("bg-danger");
                                    button.text("♡");
                                }
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
