<?php
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
Route::get('/', function () {
     //return redirect()->route('dashboard.welcome');
       return redirect()->route('dashboard.index');
});
Auth::routes();
// Auth::routes(['register' => false]);
Route::get('/home', 'HomeController@index')->name('home');
