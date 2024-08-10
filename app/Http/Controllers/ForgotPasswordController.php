<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ForgotPassword;
use App\Models\User;
use App\Mail\ResetPassword;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;

class ForgotPasswordController extends Controller
{
    public function showForgetPasswordForm()
    {
        return view('auth.passwords.email');
    }

    public function submitForgetPasswordForm(Request $request)
    {
        $request->validate([
            'email' => 'required|email|exists:users',
        ]);

        $token = Str::random(64);
        $username = User::select('name')->where('email', $request->email)->first();
        $url = route('reset.password', ['token' => $token]);

        $reset = new ForgotPassword();

        $reset->email = $request->email;
        $reset->token = $token;
        $reset->save();

        Mail::to($request->email)->send(new ResetPassword($url, $username->name));

        return redirect()->back()->with('message', 'We have e-mailed your password reset link!');
    }

    public function showResetPasswordForm($token)
    {
        $checkToken = ForgotPassword::where('token', $token)->first();
        if ($checkToken) {
            $email = $checkToken->email;
            return view('auth.passwords.reset', ['token' => $token, 'email' => $email]);
        } else {
            return redirect()->back()->with('message', 'The link is expired!');
        }
    }

    public function submitResetPasswordForm(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required|email|exists:users',
            'password' => 'required|string|min:8|confirmed',
            'password_confirmation' => 'required'
        ]);

        if ($validator->fails()) {
            dd($validator->errors());
        } else {
            // dd($request->all());
            $updatePassword = ForgotPassword::where(['email' => $request->email, 'token' => $request->reset_token])->first();

            if (!$updatePassword) {
                // return back()->withInput()->with('error', 'Invalid token!');
                dd("Error");
            }

            User::where('email', $request->email)->update(['password' => Hash::make($request->password)]);
            $delete = ForgotPassword::where(['email' => $request->email])->delete();
            if ($delete) {
                return redirect('/login')->with('message', 'Your password has been changed!');
            } else {
                return redirect()->back()->with('message', 'Something went wrong!');
            }
        }
    }
}
