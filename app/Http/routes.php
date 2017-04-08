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
Route::auth();
//

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
});
