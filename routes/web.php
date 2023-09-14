<?php

use App\Http\Controllers\CommentController;
use App\Http\Controllers\LikeController;
use App\Http\Controllers\PostController;

use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

// ゲストユーザーログイン
// Route::get('/guest-login', function () {
//     $user = \App\Models\User::factory()->create([
//         'name' => 'Guest User',
//         'email' => 'guest@example.com',
//     ]);

//     auth()->login($user);

//     return redirect('/index'); // ログイン後のリダイレクト先を指定
// })->name('guest.login');
Route::get('/guest-login', function () {
    $guestEmail = 'guest@example.com';

    // 既存のゲストユーザーを検索
    $guestUser = \App\Models\User::where('email', $guestEmail)->first();

    // ゲストユーザーが存在しない場合、新しいユーザーを作成
    if (!$guestUser) {
        $guestUser = \App\Models\User::factory()->create([
            'name' => 'Guest User',
            'email' => $guestEmail,
        ]);
    }

    auth()->login($guestUser);

    return redirect('/index'); // ログイン後のリダイレクト先を指定
})->name('guest.login');


Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
    Route::post('/profile', [ProfileController::class, 'upload'])->name('profile.upload');
});
Route::get('/index', [PostController::class, 'index'])->name('index');
Route::post('/search', [PostController::class, 'send'])->name('search');

Route::get('/post/create',[PostController::class,'create'])->name('post.create');
Route::post('/index', [PostController::class, 'store'])->name('index.store');
Route::get('/post/show/{id}',[PostController::class,'show'])->name('post.show');

Route::get('/post/edit/{id}',[PostController::class,'edit'])->name('edit');
Route::post('/post/edit/{id}',[PostController::class,'update'])->name('update');
Route::get('/post/delete/{id}',[PostController::class,'delete'])->name('delete');
Route::post('/postdelete/{id}',[PostController::class,'destroy'])->name('destroy');
Route::post('/post/show/{id}',[CommentController::class,'store'])->name('post/show');

Route::get('/comment/edit/{id}',[CommentController::class,'edit'])->name('comment.edit');
Route::post('/comment/edit/{id}',[CommentController::class,'update'])->name('comment.update');
Route::get('/comment/delete/{id}',[CommentController::class,'delete'])->name('comment.delete');
Route::post('/comment/destroy/{id}',[CommentController::class,'destroy'])->name('comment.destroy');

Route::post('/like', [LikeController::class, 'store'])->name('like.store');

Route::get('/likes', [PostController::class, 'likes_index'])->name('likes');

Route::get('/my_post', [PostController::class, 'my_post'])->name('my_post');
Route::post('/my_search', [PostController::class, 'my_send'])->name('my_search');

require __DIR__.'/auth.php';
