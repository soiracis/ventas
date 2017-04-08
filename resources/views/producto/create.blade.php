@extends('layouts.app')

@section('content')
<div>
	<div class="pull-right">
		<a  href="{{ url('/producto') }}" class="btn btn-info" title="Lista Meseros"><i class="glyphicon glyphicon-chevron-left"></i> Regresar</a>
	</div>
	<h1>Nuevo Producto</h1>
</div>

@include('forms.errores')

{!! Form::open(['route' => 'producto.store', 'method' => 'POST', 'files' => true]) !!}

	<div class="form-group">
		{!! Form::label('nombre_producto','Nombre del Producto') !!}
		{!! Form::text('nombre_producto',null,['class' => 'form-control','placeholder' => 'Nombre del Producto', "style"=>"text-transform:uppercase;", "onkeyup"=>"javascript:this.value=this.value.toUpperCase();", 'required']) !!}
	</div>
	<div class="form-group">
		{!! Form::label('codigo_producto','Código del Producto') !!}
		{!! Form::text('codigo_producto',null,['class' => 'form-control','placeholder' => 'Código del Producto', 'required']) !!}
	</div>
	<div class="form-group">
		{!! Form::label('precio_producto','Precio del Producto') !!}
		{!! Form::text('precio_producto',null,['class' => 'form-control','placeholder' => 'Precio del Producto', 'required']) !!}
	</div>

	<div class="form-group">
		{!! link_to(URL::previous(), 'Cancelar', ['class' => 'btn btn-default']) !!}
		{!! Form::submit('Guardar', ['class' => 'btn btn-success']) !!}
	</div>


{!! Form::close() !!}

@endsection
