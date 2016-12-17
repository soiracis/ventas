@extends('app')

@section('content')
<div>
	<div class="pull-right">

		<a  href="{{ url('/meseros') }}" class="btn btn-info"><i class="fa fa-chevron-left"></i> Regresar</a>

	</div>
	<h1>Actualizar Mesero(a) </h1>		
</div>
<h4><b>{{$poste->id_mesero}}</b> -- {{$poste->tx_nombre}}</h4>

@include('forms.errores')

{!!Form::hidden('id_mesero')!!}

<!--@include('empresa.forms',['txt_btn' => 'Guardar cambios'])-->

<form method="post" action="/meseros/{{ $poste->id_mesero }}">
	<input name="_method" type="hidden" value="PUT">
	<input type="hidden" name="_token" value="{{ csrf_token() }}">

	<div class="form-group">
		{!! Form::label('tx_nombre','Nombre') !!}
		{!! Form::text('tx_nombre',null,['class' => 'form-control','placeholder' => 'nombre', 'required','value' => '$poste->tx_nombre']) !!}
	</div>
	<div class="form-group">
		{!! Form::label('txapellidoPaterno','Apellido Paterno') !!}
		{!! Form::text('txapellidoPaterno',null,['class' => 'form-control','placeholder' => 'Apellido Paterno', 'required']) !!}
	</div>
	<div class="form-group">
		{!! Form::label('txapellidoMaterno','Apellido Materno') !!}
		{!! Form::text('txapellidoMaterno',null,['class' => 'form-control','placeholder' => 'Apellido Materno', 'required']) !!}
	</div>
	<div class="form-group">
		{!! Form::label('direccion','Dirección') !!}
		{!! Form::text('direccion',null,['class' => 'form-control','placeholder' => 'Dirección', 'required']) !!}
	</div>
	<div class="form-group">
		{!! Form::label('tx_correo','Correo Electrónico') !!}
		{!! Form::email('tx_correo',null,['class' => 'form-control','placeholder' => 'Correo Electrónico', 'required']) !!}
	</div>
	<div class="form-group">
		{!! Form::label('telefono','Teléfono') !!}
		{!! Form::text('telefono',null,['class' => 'form-control','placeholder' => 'Teléfono', 'required']) !!}
	</div>
	<div class="form-group">
		{!! Form::label('tx_username','Mesero') !!}
		{!! Form::text('tx_username',null,['class' => 'form-control','placeholder' => 'Mesero']) !!}
	</div>
	<div class="form-group">
		{!! Form::label('pw','Contraseña de Cancelación') !!}
		{!! Form::text('pw',null,['class' => 'form-control','placeholder' => 'Contraseña de Cancelación']) !!}
	</div>
	<div class="form-group">
		{!! Form::label('imagen','Imagen') !!}
		{!! Form::file('imagen',null,['class' => 'form-control','placeholder' => 'Imagen']) !!}
	</div>
	<div class="form-group">
		{!! link_to(URL::previous(), 'Cancelar', ['class' => 'btn btn-default']) !!}
		<button type="submit" class="btn btn-success">Actualizar</button>
	</div>

</form>
	
@endsection