<x-app-layout>
    <br />
    <div class="container">
        <div class="card">
            <div class="card-body p-6">
                
                    <p class="font-semibold mb-4">{{ $post->title }}
                    <div class="text-gray-600 text-right">投稿者: {{ $post->user->name }}</div>
                    </p>
                    本文： <p class="font-semibold p-6">{{ $post->main_text }}</p>
                <div class="text-center">
                    <p>あなたのコメント：
                    {{ $comment->comment }}</p>
                    <p class="text-danger">このコメントを本当に削除しますか？</p>
                    <form method="post" action="
                    {{ route('comment.destroy', ['id' => $comment->id]) }}
                    ">
                    @csrf
                        <input type="hidden" name="id" value="{{ $comment->id }}">
                        <button class="btn btn-danger"><input type="submit" value="削除する"></button>
                    </form>
                </div>
                <br />

            </div>
        </div>
    </div>


</x-app-layout>