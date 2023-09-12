<x-app-layout>
    <br />
    <div class="container">

        <div class="p-24 bg-white border-b border-gray-200">
            <form method="POST" action="{{ route('update', $post->id) }}">
                @csrf
                <input type="hidden" name="user_id" value="{{ $post->user_id }}">

                <p class="text-gray-600 text-center">
                    タイトル<br /><input type="text" name="title" value="{{ $post->title }}"></p>
                <p class="text-gray-600 text-center">本文<br /><br />
                    <textarea name="main_text"> {{ $post->main_text }}</textarea>
                    <br /><br />
                <p class="text-gray-600 text-center">タグ<br /><input type="text" name="tag"
                        value="{{ $post->tag }}">
                </p>
                <p class="mt-4 text-center">投稿者: {{ $post->user->name }}</p>
                <hr>
                <br />
                <div class="text-center">
                    <button class="btn btn-primary"><input type="submit" value="更新する"></button>
                </div>
            </form>
        </div>
    </div>

</x-app-layout>
