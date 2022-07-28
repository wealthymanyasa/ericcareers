<?php

use App\Http\Controllers\ListingController;
use App\Models\Listing;
use Illuminate\Support\Facades\Route;
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
Route::get('/listings/create',[ListingController::class, 'create']);
//store listing data
Route::post('/listings',[ListingController::class, 'store']);



///////////////////single listing should stay at the end//////////////////////////
//single listing 
Route::get('/listings/{listing}',[ListingController::class, 'show']);