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

// Route::get('/dashboard', function () {
//     return view('dashboard');
// })->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});
Route::get('/dashboard',[PostController::class,'index'])->name('dashboard');
Route::get('/create_post',[PostController::class,'create'])->name('create_post');
Route::post('/dashboard', [PostController::class, 'store'])->name('dashboard.store');
Route::get('/show/{id}',[PostController::class,'show'])->name('show');

Route::get('/edit/{id}',[PostController::class,'edit'])->name('edit');
Route::post('/edit/{id}',[PostController::class,'update'])->name('update');
Route::get('/delete/{id}',[PostController::class,'delete'])->name('delete');
Route::post('/delete/{id}',[PostController::class,'destroy'])->name('destroy');
Route::post('/show/{id}',[CommentController::class,'store'])->name('show');

Route::get('/comment/edit/{id}',[CommentController::class,'edit'])->name('comment.edit');
Route::post('/comment/edit/{id}',[CommentController::class,'update'])->name('comment.update');
Route::get('/comment/delete/{id}',[CommentController::class,'delete'])->name('comment.delete');
Route::post('/comment/destroy/{id}',[CommentController::class,'destroy'])->name('comment.destroy');
Route::post('/like',[LikeController::class,'store'])->name('like');


require __DIR__.'/auth.php';
