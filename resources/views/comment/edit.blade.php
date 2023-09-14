<x-app-layout>
    <br />
    <div class="container">
        <div class="row justify-content-center ">
            <div class="card">
                <div class="card-body p-6">
                    @if ($errors->any())
                        <div class="alert alert-danger">
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif
                    <form method="POST" action="{{ route('comment.update', $comment->id) }}">
                        <div class="form-group">
                            @csrf
                            <input type="text" name="comment" class="form-control"
                                value="{{ old('comment', $comment->comment) }}">
                            <br />
                            <div class="text-center">
                                <button class="btn btn-primary"><input type="submit" value="コメントを更新する"></button>
                                <br />
                            </div>
                            <br />
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    </div>
    </div>


</x-app-layout>
