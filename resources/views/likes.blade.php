<x-app-layout>
    @if (!Auth::check() || Auth::user()->name == 'Guest User')
        return redirect('login');
    @else
        <x-slot name="header">
            <h2 class="font-semibold text-xl text-gray-800 leading-tight">
                {{ __('お気に入りの投稿一覧') }}
            </h2>
        </x-slot>

        <div class="py-12">
            <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
                <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                    <div class="p-6 text-gray-900">
                        <div class="container">
                            <br />
                            @if (session()->has('success'))
                                <div class="alert alert-success">
                                    {{ session()->get('success') }}
                                </div>
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
                            @foreach ($likedPosts as $post)
                                <br />
                                <a href="{{ route('post.show', ['id' => $post->id]) }}">

                                    <p class="btn btn-info">{{ $post->title }}</p>
                                </a>
                                <div class="text-right">
                                    <!-- いいねボタン -->
                                    @if (Auth::check() && Auth::user()->name != 'Guest User')
                                        @if ($post->isLiked)
                                            <button type="button" class="btn bg-danger btn_like liked"
                                                data-post-id="{{ $post->id }}">♡
                                                {{ $post->likes->count() }}
                                            </button>
                                        @else
                                            <button type="button" class="btn btn_like"
                                                data-post-id="{{ $post->id }}">♡
                                                {{ $post->likes->count() }}
                                            </button>
                                        @endif
                                    @endif
                                </div>
                                <div style="display: flex; align-items: center;">
                                    <img src="{{ asset('storage/icons/' . $post->user->icon) }}" alt="Icon"
                                        class="rounded-icon">
                                    <p>{{ $post->user->name }}</p>
                                </div>

                                @if (Auth::check() && $post->user->id === Auth::id())
                                    <div class="text-right">

                                        <a href="{{ route('edit', ['id' => $post->id]) }}"
                                            class="btn btn-primary ">編集</a>
                                        <a href="{{ route('delete', ['id' => $post->id]) }}"
                                            class="btn btn-danger">削除</a>
                                    </div>
                                @endif

                                </a>
                                <br />
                                <hr />
                            @endforeach
                        </div>
                        {{ $likedPosts->links() }}
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
    @endif
</x-app-layout>
