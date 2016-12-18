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
Route::resource('meseros', 'MeseroController');
Route::resource('mesa', 'MesaController');