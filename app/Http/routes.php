<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/
//Route::auth();
//
Route::get('login', ['as' => 'auth.login', 'uses' => 'Auth\AuthController@showLoginForm']);
Route::post('login', ['as' => 'auth.login', 'uses' => 'Auth\AuthController@login']);
Route::get('logout', ['as' => 'auth.logout', 'uses' => 'Auth\AuthController@logout']);

Route::group(['middleware' => 'auth'], function () {

  Route::get('/', 'HomeController@index');
  Route::resource('mesa', 'MesaController');

  Route::group(['middleware' => 'roles:empresa'], function () {
    Route::resource('empresa', 'EmpresaController');
  });
  Route::group(['middleware' => 'roles:ventas'], function () {
    Route::resource('ventas', 'VentasController');
  });
  Route::group(['middleware' => 'roles:meseros'], function () {
    Route::resource('meseros', 'MeseroController');
  });
  Route::group(['middleware' => 'roles:producto'], function () {
    Route::resource('producto', 'ProductoController');
  });
  Route::group(['middleware' => 'roles:mesa'], function () {
    Route::resource('mesa', 'MesaController');
  });
  Route::group(['middleware' => 'roles:users'], function () {
    Route::resource('users', 'UsersController');
    //administracion de modulos
    Route::post('users/borrarmodulo', 'UsersController@borrarModulo')->name('users.borrarmodulo');
    Route::post('users/agregarmodulo', 'UsersController@agregarModulo')->name('users.agregarmodulo');
  });
});
