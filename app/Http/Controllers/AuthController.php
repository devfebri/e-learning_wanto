<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;

class AuthController extends Controller
{
    public function getLogin()
    {
        return view('auths.login');
    }
    public function postLogin(Request $request)
    {
        if (!\Auth::attempt(['email' => $request->email, 'password' => $request->password]))
        
            return redirect()->back();
        if (auth()->user()->role == 'guru') {
            return redirect('guru/dashboard/'.auth()->user()->guru->id );
        } elseif (auth()->user()->role == 'siswa') {
            return redirect('siswa/dashboard/'.auth()->user()->siswa->id);
        } elseif (auth()->user()->role == 'admin') {
            return redirect('admin/guru/');
        }
    }
    public function getRegister()
    {
        return view('auths.register');
    }
    public function postRegister(Request $request)
    {
        $this->validate($request, [
            'name' => 'required|min:4',
            'email' => 'required|email|unique:users',
            'password' => 'required|min:6|confirmed'
        ]);
        User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => bcrypt($request->password)
        ]);
        return redirect()->back();
    }

    public function logout()
    {
        \Auth::logout();

        return redirect()->route('login');
    }
}
