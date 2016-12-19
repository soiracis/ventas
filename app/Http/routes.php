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

Route::get('/', function () {
    return view('app');
});


Route::get('/', 'HomeController@index');

Route::resource('empresa', 'EmpresaController');
Route::resource('ventas', 'VentasController');
Route::resource('producto', 'ProductoController');
<<<<<<< HEAD
Route::resource('meseros', 'MeseroController');
=======
Route::resource('meseros', 'MeseroController');
Route::resource('mesa', 'MesaController');
>>>>>>> 460b5e22e3417f7dd1173650d105d4b0ac60e2f8
