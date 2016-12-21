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

<!--@include('empresa.forms',['txt_btn' => 'Guardar cambios'])-->

{!! Form::model($poste , ['method' => 'PATCH' , 'action' => ['MeseroController@update' , $poste->
id_mesero ]])  !!}

	<input type="hidden" name="_token" value="{{ csrf_token() }}">

	<div class="form-group">
		{!! Form::label('tx_nombre','Nombre') !!}
		{!! Form::text('tx_nombre',null,['class' => 'form-control' ]) !!}
	</div>
	<div class="form-group">
		{!! Form::label('tx_apellidoPaterno','Apellido Paterno') !!}
		{!! Form::text('tx_apellidoPaterno',null,['class' => 'form-control']) !!}
	</div>
	<div class="form-group">
		{!! Form::label('tx_apellidoMaterno','Apellido Materno') !!}
		{!! Form::text('tx_apellidoMaterno',null,['class' => 'form-control']) !!}
	</div>
	<div class="form-group">
		{!! Form::label('direccion','Dirección') !!}
		{!! Form::text('direccion',null,['class' => 'form-control']) !!}
	</div>
	<div class="form-group">
		{!! Form::label('tx_correo','Correo Electrónico') !!}
		{!! Form::email('tx_correo',null,['class' => 'form-control']) !!}
	</div>
	<div class="form-group">
		{!! Form::label('telefono','Teléfono') !!}
		{!! Form::text('telefono',null,['class' => 'form-control']) !!}
	</div>
	<div class="form-group">
		{!! Form::label('tx_username','Mesero') !!}
		{!! Form::text('tx_username',null,['class' => 'form-control']) !!}
	</div>
	<div class="form-group">
		{!! Form::label('pw','Contraseña de Cancelación') !!}
		{!! Form::text('pw',null,['class' => 'form-control']) !!}
	</div>
	<div class="form-group">
		{!! Form::label('imagen','Imagen') !!}
		{!! Form::file('imagen',null,['class' => 'form-control']) !!}
	</div>
	<div class="form-group">
		<button type="submit" class="btn btn-success">Actualizar</button>
	</div>

{!!Form::hidden('id_mesero')!!}
	
@endsection