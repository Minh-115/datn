<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/', 'HomeController@index');
Route::get('/test', 'HomeController@test');

Route::get('/addToCart/{id}', 'CartController@addToCart');
Route::get('/detail/{id}', 'HomeController@detail');
Route::get('/productDetail/{id}', 'HomeController@productDetail');
Route::get('/showcart', 'CartController@showcart');
Route::post('/save_cart', 'CartController@save_cart');
Route::get('/delete/{rowId}', 'CartController@deleteCart');

   
   


Route::get('/home', function () {
    return view('home');
});





Route::prefix('category')->group(function () {
    Route::get('/category',[
        'as'=>'categories.index',
        'uses'=>'CategoryController@index'
    ]);
   
    Route::get('/create',[
        'as'=>'categories.create',
        'uses'=>'CategoryController@create'
    ]);
});