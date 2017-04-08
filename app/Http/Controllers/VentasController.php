<?php namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use App\Ventas;
use App\Empresa;
use App\Http\Controllers\Controller;


class VentasController extends Controller
{
  //autenticacion
	public function __construct()
	{
		$this->middleware('auth');
	}

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		//

		//$venta = Ventas::all();
		//$venta = Ventas::paginate();
		$empresa=Empresa::first();


		return view('ventas/index',compact('empresa',$empresa));
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		$usuarios = Usuario::all();

		return view('usuarios.create',compact('usuarios'));
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store()
	{
		//
	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		//
	}

	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
		//
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update($id)
	{
		//
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		//
	}

}
