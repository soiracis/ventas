<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request; 
// Modelo Empresa
use App\Empresa;
//controla los errores
use Exception;

class EmpresaController extends Controller {

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
		//Enviamos esos registros a la vista
		$empresa = Empresa::all();

		$empresa = Empresa::paginate();

		return view('empresa/index',compact('empresa'));
	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		$empresa = Empresa::all();

		return view('empresa.create',compact('empresa'));
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store(Empresa $emp)
	{
		//Registrar Empresa
		try{
			$o = new Empresa();
	        $o->id_empresa=$emp->input('id_empresa');
	        $o->nombre=$emp->input('nombre');
	        $o->direccion=$emp->input('direccion');
	        $o->localidad=$emp->input('localidad');
	        $o->CP=$emp->input('CP');
	        $o->telefono=$emp->input('telefono');
	        $o->RFC=$emp->input('RFC');
	        $o->logo=$emp->input('logo');
	        $o->save();

	    //se notifica
    	flash()->success('Se ha registrado correctamente.');
        return redirect()->route('empresa.index');
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
		$posts = Empresa::findOrFail($id);

        return view('empresa.show', compact('posts'));

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
		$poste = Empresa::find($id);

		return view('empresa.edit', compact('poste'));
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update(Empresa $emp)
	{
		//
		$input = array_except($emp->Input(),array('_token','_method','id_empresa'));
        Rubro::where('id_empresa',$emp->Input('id_empresa'))->update($input);

        flash()->success('Se ha guardado los cambios correctamente.');
        return redirect()->route('empresa.index');
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
			$o = Empresa::findOrFail($id);
	        $o->delete();

	        flash()->success('Se ha eleminado correctamente.');
	        return redirect()->route('empresa.index');
		}	
		catch (Exception $e){
			return "Fatal error -".$e->getMessage();
		}
        
	}

}