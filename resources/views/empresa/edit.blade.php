@extends('app')

@section('content')
<div>
	<div class="pull-right">

		<a  href="{{ url('/empresa') }}" class="btn btn-info"><i class="fa fa-chevron-left"></i> Regresar</a>

	</div>
	<h1>Actualizar Empresa </h1>		
</div>
<h4><b>{{$poste->id_empresa}}</b> -- {{$poste->nombre}}</h4>

@include('forms.errores')

{!!Form::hidden('id_empresa')!!}

<!--@include('empresa.forms',['txt_btn' => 'Guardar cambios'])-->

<form method="post" action="/empresa/{{ $poste->id_empresa }}">
	<input name="_method" type="hidden" value="PUT">
	<input type="hidden" name="_token" value="{{ csrf_token() }}">

	<div class="form-group">
		<label>Nombre de la Empresa</label>
		<input type="text" name="name" class="form-control" placeholder="Nombre de la Empresa" value="{{ $poste->nombre }}">
	</div>
	<div class="form-group">
		<label>Direccion</label>
		<input type="text" name="name" class="form-control" placeholder="Direccion" value="{{ $poste->direcion }}">
	</div>
	<div class="form-group">
		<label>Localidad</label>
		<input type="text" name="name" class="form-control" placeholder="Localidad" value="{{ $poste->localidad }}">
	</div>
	<div class="form-group">
		<label>CP</label>
		<input type="text" name="name" class="form-control" placeholder="CP" value="{{ $poste->CP }}">
	</div>
	<div class="form-group">
		<label>Teléfono</label>
		<input type="text" name="name" class="form-control" placeholder="Teléfono" value="{{ $poste->telefono }}">
	</div>
	<div class="form-group">
		<label>RFC</label>
		<input type="text" name="name" class="form-control" placeholder="RFC" value="{{ $poste->RFC }}">
	</div>
	<div class="form-group">
		<label>Logo</label>
		<input type="text" name="name" class="form-control" placeholder="Logo" value="{{ $poste->logo }}">
	</div>
	<button type="submit" class="btn btn-success">Actualizar</button>
</form>

@endsection