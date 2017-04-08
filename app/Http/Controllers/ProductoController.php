<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Requests\ProductoRequest;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
//use Request;
use Response;
// Modelo Producto
use App\Producto;
use stdClass;

class ProductoController extends Controller
{

  /**
  * Display a listing of the resource.
  *
  * @return \Illuminate\Http\Response
  */
  public function index(Request $request)
  {

    //Enviamos esos registros a la vista
    $producto = Producto::all();

    $producto = Producto::paginate();

    //regresa la informacion del producto
    if($request->ajax())
    {
      //Busca el la base de datos segun el ID
      //regresa la informacion del producto
      if($request->input('codigo'))
      $p=Producto::where('codigo_producto',$request->input('codigo'))->first();
      else if($request->input('descripcion'))
      $p=Producto::where('nombre_producto', 'like', '%' . $request->input('descripcion') . '%')->first();
      else
      $p=new stdClass();
      return Response::json($p);
    }

    return view('producto/index',compact('producto'));
  }

  /**
  * Show the form for creating a new resource.
  *
  * @return \Illuminate\Http\Response
  */
  public function create()
  {
    //
    $producto = Producto::all();

    return view('producto.create',compact('producto'));

  }

  /**
  * Store a newly created resource in storage.
  *
  * @param  \Illuminate\Http\Request  $request
  * @return \Illuminate\Http\Response
  */
  public function store(ProductoRequest $request)
  {
    try {
      //Escribe exito al momento de hacer el submit
      //dd('Exito');
      //Registra el producto
      //dd($request->all());
      $producto = new Producto($request->all());
      //dd($producto);
      //$producto->nombre_producto = $request->nombre_producto;
      $producto -> save();
      //dd('Producto Registrado');

      //se notifica
      flash()->success('Se ha registrado correctamente.');
      return redirect()->route('producto.index');

    } catch (Exception $e) {
      return "Fatal error -".$e->getMessage();
    }
  }

  /**
  * Display the specified resource.
  *
  * @param  int  $id
  * @return \Illuminate\Http\Response
  */
  public function show($id, Request $request)
  {
  }

  /**
  * Show the form for editing the specified resource.
  *
  * @param  int  $id
  * @return \Illuminate\Http\Response
  */
  public function edit($id)
  {
    //
    $poste = Producto::find($id);
    //dd($poste);

    return view('producto.edit', compact('poste'));
  }

  /**
  * Update the specified resource in storage.
  *
  * @param  \Illuminate\Http\Request  $request
  * @param  int  $id
  * @return \Illuminate\Http\Response
  */
  public function update(ProductoRequest $request, $id)
  {
    // Actualizar
    $poste = Producto::find($id);
    $poste->update($request->all());

    flash()->success('Se ha guardado los cambios correctamente.');
    return redirect()->route('producto.index')->with('success','Actualizacion Exitosa');
  }

  /**
  * Remove the specified resource from storage.
  *
  * @param  int  $id
  * @return \Illuminate\Http\Response
  */
  public function destroy($id)
  {
    //
    try{
      $o = Producto::findOrFail($id);
      $o->delete();

      flash()->success('Se ha eleminado correctamente.');
      return redirect()->route('producto.index')->with('success','Removed successfully');
    }
    catch (Exception $e){
      return "Fatal error -".$e->getMessage();
    }
  }
}
