<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PhoneAuthController;
use App\Http\Controllers\HomeController;
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

Route::get('/dashboard', function () {
    return view('dashboard');
});


Route::get('/notify',[HomeController::class,'notify']
);

Route::get('phone-auth', [PhoneAuthController::class, 'index']);
