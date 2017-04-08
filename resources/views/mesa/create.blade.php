@extends('layouts.app')

@section('content')
<div>
	<div class="pull-right">
		<a  href="{{ url('/mesa') }}" class="btn btn-info" title="Mesa"><i class="glyphicon glyphicon-chevron-left"></i> Regresar</a>
	</div>
	<h1>Nueva Mesa</h1>
</div>

@include('forms.errores')

{!!Form::open(array('action' => 'MesaController@store'))!!}

<form method="post" action="/mesa">
	<input type="hidden" name="_token" value="{{ csrf_token() }}">
	<div class="form-group">
		<label>Nombre de la Mesa</label>
		{!!Form::text('nom_mesa', @$nom_mesa, array("class"=>"form-control","placeholder"=>"Nombre de la Mesa", "style"=>"text-transform:uppercase;", "onkeyup"=>"javascript:this.value=this.value.toUpperCase();"))!!}
	</div>
	<div class="form-group">
		<label>Area</label>
		<select name="age" class="selectpicker">
		  <option value="0">Under 18</option>
		  <option value="1">19 to 30</option>
		  <option value="2">Over 30</option>
		</select>
	</div>

	<div class="form-group">
		{!! link_to(URL::previous(), 'Cancelar', ['class' => 'btn btn-default']) !!}
		<button type="submit" class="btn btn-success"> Guardar</button>
	</div>

</form>

@endsection
