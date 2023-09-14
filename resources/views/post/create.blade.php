<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('投稿ページ') }}
        </h2>
        <p class="text-danger">　　　※タイトル（255文字以内）、本文（1000文字以内）、タグ（30文字以内）を投稿できます。</p>
    </x-slot>
    <br />
    <div class="container">
        <div class="card">
            <div class="card-body p-6">
                <div class="row justify-content-center">
                    <div class="col-md-8"> <!-- col-md-6を追加 -->
                        <div class="bg-white p-12">
                            @if ($errors->any())
                                <div class="alert alert-danger">
                                    <ul>
                                        @foreach ($errors->all() as $error)
                                            <li>{{ $error }}</li>
                                        @endforeach
                                    </ul>
                                </div>
                            @endif

                            <!-- フォームの残りの部分 -->

                            <form method="post" action="{{ route('index.store') }}">
                                @csrf
                                <div class="form-group">
                                    <label for="title">タイトル</label>
                                    <p class="text-danger">※必須</p>
                                    <input type="text" name="title" class="form-control"
                                        value="{{ old('title') }}" required>
                                </div>
                                <div class="form-group">
                                    <label for="main_text">本文</label>
                                    <p class="text-danger">※必須</p>
                                    <textarea name="main_text" class="form-control" rows="4"required> {{ old('main_text') }} </textarea>
                                </div>
                                <div class="form-group">
                                    <label for="tag">タグ</label>
                                    <input type="text" name="tag" class="form-control"
                                        value="{{ old('tag') }}">
                                </div>
                                <br /> <br />
                                <button class="btn btn-primary">
                                    <input type="submit">
                                </button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
