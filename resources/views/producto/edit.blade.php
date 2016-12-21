@extends('app')

@section('content')
<div>
	<div class="pull-right">

		<a  href="{{ url('/producto') }}" class="btn btn-info"><i class="fa fa-chevron-left"></i> Regresar</a>

	</div>
	<h1>Actualizar Empresa </h1>		
</div>
<h4><b>{{$poste->id_producto}}</b> -- {{$poste->nombre_producto}}</h4>

@include('forms.errores')

{!! Form::model($poste , ['method' => 'PATCH' , 'action' => ['ProductoController@update' , $poste->
id_producto ]])  !!}

<input type="hidden" name="_token" value="{{ csrf_token() }}">

<div class="form-group">
	{!! Form::label('titulo' , 'Nombre del Producto' ) !!}
	{!! Form::text( 'nombre_producto', null, ['class' => 'form-control' ]) !!}
</div>
<div class="form-group">
<label>Código del Producto</label>
	<input type="text" name="name" class="form-control" placeholder="Direccion" value="{{ $poste->codigo_producto }}">
</div>
<div class="form-group">
	<label>Precio del Producto</label>
	<input type="text" name="name" class="form-control" placeholder="Localidad" value="{{ $poste->precio_producto }}">
</div>
<button type="submit" class="btn btn-success">Actualizar</button>


{!!Form::hidden('id_empresa')!!}

@endsection