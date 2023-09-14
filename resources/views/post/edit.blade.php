<x-app-layout>
    <br />
    <x-slot name="header">
        <p class="text-danger">　　　※タイトル（255文字以内）、本文（1000文字以内）、タグ（30文字以内）で更新できます。</p>
    </x-slot>
    <div class="container ">

        <div class="row justify-content-center ">
            <div class="card">
                <div class="card-body p-6">
                    <div class="col-md-10">
                        <div class="bg-white">
                            @if ($errors->any())
                                <div class="alert alert-danger">
                                    <ul>
                                        @foreach ($errors->all() as $error)
                                            <li>{{ $error }}</li>
                                        @endforeach
                                    </ul>
                                </div>
                            @endif
                            
                                <form method="POST" action="{{ route('update', $post->id) }}">
                                    @csrf

                                    <input type="hidden" name="user_id" value="{{ $post->user_id }}">

                                    <p class="text-gray-600">
                                        タイトル<br /><input type="text" name="title"
                                            value="{{ old('title', $post->title) }}"class="form-control"></p>
                                    <br />
                                    <p class="text-gray-600">本文<br />
                                        <textarea name="main_text" class="form-control" rows="12">{{ old('main_text', $post->main_text) }}"</textarea>
                                        <br /><br />
                                    <p class="text-gray-600 form-control">タグ<br /><input type="text" name="tag"
                                            value="{{ old('tag', $post->tag) }}">
                                    </p>
                                    <p class="mt-4 text-center">投稿者: {{ $post->user->name }}</p>
                                    <br />
                                    <div class="text-center">
                                        <div class="btn btn-primary"><input type="submit" value="更新する"></div>
                                    </div>
                                </form>
                        
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</x-app-layout>
