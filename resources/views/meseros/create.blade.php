@extends('app')

@section('content')
<div>
	<div class="pull-right">
		<a  href="{{ url('/meseros') }}" class="btn btn-info" title="Lista Meseros"><i class="glyphicon glyphicon-chevron-left"></i> Regresar</a>
	</div>
	<h1>Nuevo Mesero(a)</h1>	
</div>

@include('forms.errores')

{!! Form::open(['route' => 'meseros.store', 'method' => 'POST', 'files' => true]) !!}
	
	<div class="form-group">
		{!! Form::label('tx_nombre','Nombre') !!}
		{!! Form::text('tx_nombre',null,['class' => 'form-control','placeholder' => 'Nombre', 'required']) !!}
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
		{!! Form::label('pw','Contraseña') !!}
		{!! Form::text('pw',null,['class' => 'form-control','placeholder' => 'Contraseña de Cancelación']) !!}
	</div>
	<div class="form-group">
		{!! Form::label('imagen','Imagen') !!}
		{!! Form::file('imagen',null,['class' => 'form-control' ]) !!}
	</div>
	<div class="form-group">
		{!! link_to(URL::previous(), 'Cancelar', ['class' => 'btn btn-default']) !!}
		{!! Form::submit('Guardar', ['class' => 'btn btn-success']) !!}
	</div>
	

{!! Form::close() !!}

@endsection