<x-app-layout>
    <br />
    <div class="container">
        <div class="card">
            <div class="card-header p-6">
                <p class="font-semibold mb-4">{{ $post->title }}
                <div class="text-gray-600 text-right">投稿者: {{ $post->user->name }}</div>
                </p>
            </div>
            <div class="card-body p-6">
                本文： <p class="font-semibold p-6">{{ $post->main_text }}</p>
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
                                </p>
                            </div>
                        </div>
                    @endforeach
                </div>
                <br />
                <hr>
                <br />
                <div class="text-center">
                    <p class="text-danger">この投稿を本当に削除しますか？</p>
                    <form method="post" action="
                    {{ route('destroy', ['id' => $post->id]) }}
                    ">
                    @csrf
                        <input type="hidden" name="id" value="{{ $post->id }}">
                        <button class="btn btn-danger"><input type="submit" value="削除する"></button>
                    </form>
                </div>
                <br />

            </div>
        </div>
    </div>


</x-app-layout>
