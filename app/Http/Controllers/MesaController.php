<?php namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

//modelo Mesa
use App\Mesa;
//modelo Area
use App\Area;

use App\Http\Controllers\Controller;

class MesaController extends Controller
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

		$mesa = Mesa::all();

		$mesa = Mesa::paginate();


		return view('mesa/index',compact('mesa'));
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		$mesa = Mesa::all();

		return view('mesa.create',compact('mesa'));
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store(MesaRequest $mes)
	{
		//
		try{
			$o = new Mesa();
	        $o->id_mesa=$mes->input('id_mesa');
	        $o->nom_mesa=$mes->input('nom_mesa');
	        $o->id_area=$mes->input('id_area');
	        $o->nom_area=$mes->input('nom_area');
	        $o->status=$mes->input('status');
	        $o->save();

	    //se notifica
    	flash()->success('Se ha registrado correctamente.');
        return redirect()->route('mesa.index');
		}
		catch(Exception $e){
			return "Fatal error -".$e->getMessage();
		}
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
