<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Requests\MeseroRequest;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
//Modelo Mesero
use App\Mesero;

//controla los errores
use Exception;

class MeseroController extends Controller
{
   //autenticacion
	/*public function __construct()
	{
		$this->middleware('auth');
	}*/

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		//

		$mesero = Mesero::all();

		$mesero = Mesero::paginate();
		

		return view('meseros/index',compact('mesero'));
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		$meseros = Mesero::all();

		return view('meseros.create',compact('meseros'));
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store(MeseroRequest $request)
	{
		try {
			//Escribe exito al momento de hacer el submit
			//dd('Exito');
			//Registra el mesero
			//dd($request->all());
			$mesero = new Mesero($request->all());
			//dd($mesero);
			//$mesero->tx_nombre = $request->tx_nombre;

			//dd($mesero);
			$mesero -> save();
			//dd('Mesero Registrado');

			//se notifica
	    	flash()->success('Se ha registrado correctamente.');
	        return redirect()->route('meseros.index');

		} catch (Exception $e) {
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
		$posts = Modelo::findOrFail($id);

        return view('meseros.show', compact('posts'));
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
		$poste = Mesero::find($id);

		return view('meseros.edit', compact('poste'));
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update(MeseroRequest $request, $id)
	{
		// Actualizar
		$poste = Mesero::find($id);
		$poste->update($request->all());

		flash()->success('Se ha guardado los cambios correctamente.');
        return redirect()->route('meseros.index')->with('success','Actualización Exitosa');
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
		try{
			$o = Mesero::findOrFail($id);
	        $o->delete();

	        flash()->success('Se ha eleminado correctamente.');
	        return redirect()->route('meseros.index');
		}	
		catch (Exception $e){
			return "Fatal error -".$e->getMessage();
		}
	}

}
