<?php

namespace App\Http\Controllers;

use App\Http\Requests\ProfileUpdateRequest;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Storage;
use Illuminate\View\View;

class ProfileController extends Controller
{
    /**
     * Display the user's profile form.
     */
    public function edit(Request $request): View
    {
        if (Auth::check() && Auth::user()->name === "Guest User") {
            // ゲストユーザーの場合、セッションを破棄してwelcomeページにリダイレクト
            auth()->logout();
            $request->session()->invalidate();
            $request->session()->regenerateToken();
            return view('welcome');
        }

        return view('profile.edit', [
            'user' => $request->user(),
        ]);
    }

    /**
     * Update the user's profile information.
     */
    public function update(ProfileUpdateRequest $request): RedirectResponse
    {
        $request->user()->fill($request->validated());

        if ($request->user()->isDirty('email')) {
            $request->user()->email_verified_at = null;
        }

        $request->user()->save();

        return Redirect::route('profile.edit')->with('status', 'profile-updated');
    }

    /**
     * Delete the user's account.
     */
    public function destroy(Request $request): RedirectResponse
    {
        $request->validateWithBag('userDeletion', [
            'password' => ['required', 'current_password'],
        ]);

        $user = $request->user();

        Auth::logout();

        $user->delete();

        $request->session()->invalidate();
        $request->session()->regenerateToken();

        return Redirect::to('/');
    }
    public function upload(Request $request)
    {
        $validatedData = $request->validate([
            'icon' => 'required|image|mimes:jpeg,png,jpg,gif|max:10240', // 10MBまでのjpeg、png、jpg、gifファイル
        ]);
        // アイコンをアップロードして保存する処理を実装
        if ($request->hasFile('icon')) {
            $icon = $request->file('icon');
            $path = $icon->store('public/icons'); // 'public/icons' ディレクトリにアイコンを保存

            // アイコンのファイル名をユーザーレコードに保存
            $user = Auth::user(); // 現在の認証されたユーザーを取得
            $user->icon = basename($path); // ファイル名のみを保存
            $user->save();
            // アイコンの設定が成功した場合のメッセージ
            session()->flash('success', 'アイコンが設定されました。');
            return redirect()->back()->with('success', 'アイコンが設定されました。');
        } else {
            // アイコンのアップロードが失敗した場合のメッセージ
            session()->flash('error', 'アイコンのアップロードに失敗しました。');
            return redirect()->back()->with('error', '画像ファイル（jpeg,png,jpg,gif）であり、10MBまでのファイルのみアイコンにできます。');
        }
    }
}
