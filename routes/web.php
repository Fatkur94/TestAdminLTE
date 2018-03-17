<?php


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

Route::get('/', function () {
    return redirect()->route('login');
});

Auth::routes();

Route::middleware(['auth'])->group(function () {
	Route::get('home', 'HomeController@backend')->name('index');
	
});

Route::resource('user', 'UsersController');
Route::get('user/{user}/delete', 'UsersController@delete')->name('user.delete');

Route::resource('companies', 'CompanyController');
Route::get('companies/{company}/delete', 'CompanyController@delete')->name('companies.delete');

Route::resource('kota', 'KotaController');
Route::get('kota/{kotum}/delete', 'KotaController@delete')->name('kota.delete');

Route::resource('sales', 'SalesController');
Route::get('sales/{sale}/delete', 'SalesController@delete')->name('sales.delete');

// Route::get('home', 'HomeController@index')->name('home');
