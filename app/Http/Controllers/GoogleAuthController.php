<?php

namespace App\Http\Controllers;

use Laravel\Socialite\Facades\Socialite;
use Illuminate\Http\Request;
use App\Models\User;
use Exception;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class GoogleAuthController extends Controller
{
    public function redirectToGoogle()
    {
        return Socialite::driver('google')->redirect();
    }

    public function handleGoogleCallback()
    {
        try {
            $googleUser = Socialite::driver('google')->user();
            $findUser = User::where('google_id', $googleUser->id)->orWhere('email', $googleUser->email)->first();

            if ($findUser) {
                Auth::login($findUser);
                return redirect()->intended('home');
            } else {
                $user = User::updateOrCreate([
                    'google_id' => $googleUser->id,
                ], [
                    'name' => $googleUser->name,
                    'email' => $googleUser->email,
                    'google_id' => $googleUser->id,
                    'auth_type' => 'google',
                    'password' => Hash::make('google123')
                ]);

                Auth::login($user);

                return redirect()->intended('home');
            }
        } catch(Exception $e){
            dd($e->getMessage());
        }
    }
}
