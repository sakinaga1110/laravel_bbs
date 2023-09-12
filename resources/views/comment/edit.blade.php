<x-app-layout>
    <br />
    <div class="container">

        <div class="p-24 bg-white border-b border-gray-200">
            <form method="POST" action="{{ route('comment.update', $comment->id) }}">
                @csrf
                <input type="text" name="comment" value="{{ $comment->comment }}">
                <hr>
                <br />
                <div class="text-center">
                    <button class="btn btn-primary"><input type="submit" value="コメントを更新する"></button>
                </div>
            </form>
        </div>
    </div>

</x-app-layout>
