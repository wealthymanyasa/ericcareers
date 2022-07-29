<?php

use App\Models\Listing;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ListingController;
use phpDocumentor\Reflection\PseudoTypes\List_;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

//all listings
Route::get('/', [ListingController::class, 'index'] );
//show create listing form
Route::get('/listings/create',[ListingController::class, 'create'])->middleware('auth');
//show edit listing form
Route::get('/listings/{listing}/edit',[ListingController::class, 'edit'])->middleware('auth');;
//store listing data
Route::post('/listings',[ListingController::class, 'store'])->middleware('auth');;
//update job
Route::put('/listings/{listing}',[ListingController::class, 'update'])->middleware('auth');;
//update job
Route::delete('/listings/{listing}',[ListingController::class, 'delete'])->middleware('auth');
// user manage listings
Route::get('/listings/manage',[ListingController::class, 'manage'])->middleware('auth');

///////////////////single listing should stay at the end//////////////////////////
//single listing 
Route::get('/listings/{listing}',[ListingController::class, 'show']);

//show register user form
Route::get('/register',[UserController::class, 'registerUser'])->middleware('guest');;
//create user
Route::post('/users',[UserController::class, 'store']);
//log user out
Route::post('/logout',[UserController::class, 'logout'])->middleware('auth');;
//show login form
Route::get('/login',[UserController::class, 'login'])->name('login')->middleware('guest');;
// login user
Route::post('/login/authenticate',[UserController::class, 'authenticate']);
