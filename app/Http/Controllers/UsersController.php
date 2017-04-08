<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\User;
use App\Modulo;

class UsersController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $users = User::paginate();
        return view('users/index',compact('users'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('users/create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
      $this->validate($request, [
        'name' => 'required|max:255',
        'username' => 'required|unique:users',
        'password' => 'required|min:6|confirmed'
      ]);

      $usuario = new User([
          'name' => $request->input('name'),
          'username' =>$request->input('username'),
          'password' => bcrypt($request->input('password'))
        ]
      );
      $usuario -> save();
      flash()->success('Usuario registrado correctamente.');
      return redirect()->route('users.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
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
      $user = User::find($id);
      //dd($poste);

      return view('users.edit', compact('user'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
      $user = User::find($id);
        if(null !== $request->input('nombre')){
          if(strlen($request->input('name'))>0){
            $user->name =$request->input('name');
            flash()->success('cambios guardados.');
            $user->save();
          }else{
            flash()->error('Nombre no valido');
          }
        }

        if(null !== $request->input('cambiar')){
          if($request->input('password') == $request->input('password_confirmation')){
            $this->validate($request, [
              'password' => 'required|min:6|confirmed'
            ]);
            $user->password=bcrypt($request->input('password'));
            flash()->success('Contraseña guardada.');
            $user->save();
          }
          else {
            flash()->error('Las contraseñas no coinciden');
          }

        }
        return redirect()->route('users.edit', $id);
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
        //
    		try{
    			$o = User::findOrFail($id);
    	        $o->delete();

    	        flash()->success('Se ha eleminado correctamente.');
    	        return redirect()->route('users.index');
    		}
    		catch (Exception $e){
    			return "Fatal error -".$e->getMessage();
    		}
    }

    public function borrarModulo(Request $request)
    {
      try{
        $id = $request->input('id');
        $user = $request->input('user_id');
        $o = Modulo::findOrFail($id);
        $o->delete();

        flash()->success('Se ha eleminado correctamente.');
        return redirect()->route('users.edit', $user);
      }
      catch (Exception $e){
        return "Fatal error -".$e->getMessage();
      }
    }

    public function agregarModulo(Request $request)
    {
      try{
        $id = $request->input('user_id');
        if(null !== $request->input('modulo')){
          $rol = new Modulo($request->all());
          $rol -> save();
          flash()->success('Módulo habilitado.');
        }

        return redirect()->route('users.edit', $id);
      }
      catch (Exception $e){
        return "Fatal error -".$e->getMessage();
      }
    }
}
