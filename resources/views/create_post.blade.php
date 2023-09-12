<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('投稿ページ') }}
        </h2>
    </x-slot>
    <br />
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8"> <!-- col-md-6を追加 -->
            <div class="bg-white p-12">
                <form method="post" action="{{ route('dashboard.store') }}">
                    @csrf
                    <div class="form-group">
                        <label for="title">タイトル</label><p class="text-danger">※必須</p>
                        <input type="text" name="title" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label for="main_text">本文</label><p class="text-danger">※必須</p>
                        <textarea name="main_text" class="form-control" rows="4" required></textarea>
                    </div>
                    <div class="form-group">
                        <label for="tag">タグ</label>
                        <input type="text" name="tag" class="form-control" value="#">
                    </div>
                    <br /> <br />
                    <button class="btn btn-primary">
                        <input type="submit">
                    </button>
                </form>
            </div>
        </div>
    </div>
</x-app-layout>
