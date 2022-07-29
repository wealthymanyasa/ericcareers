<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;

class UserController extends Controller
{
    //show register users page
    public function registerUser(){
    return view('users.register');

    }
    //create new user
    public function store(Request $request){
        $formFields = $request->validate([
            'name' => ['required','min:3'],
            'email' => ['required','email', Rule::unique('users','email')],
            'password' => 'required|confirmed|min:6'
        ]);

        //hash password
        $formFields['password'] = bcrypt($formFields['password']);

        //create user
        $user = User::create($formFields);

        //login
        auth()->login($user);
        //redirect to dashboard
        return redirect('/')->with('message', 'Account created, logged in');
    } 
////LOGOUT THE USER
    public function logout(Request $request){
        auth()->logout();
        
        $request->session()->invalidate();
        $request->session()->regenerateToken();

        return redirect('/')->with('message', 'You have successfull logged out!!!');
    }
      //show login form
      public function login(){
        return view('users.login');
     }
     //authenticate user
     public function authenticate(Request $request){
        $formFields = $request->validate([
            'email' => ['required','email'],
            'password' => 'required'
        ]);
        if(auth()->attempt($formFields)){
            $request->session()->regenerate();

            return redirect('/', )->with('message', 'Logged in successfully!!!');
        }
        return back()->withErrors(['email' => 'Invalid Credentials'])
        ->onlyInput('email');
     }
}
