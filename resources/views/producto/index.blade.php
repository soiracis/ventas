@extends('app')

@section('content')
<div>
	<div class="pull-right hidden-print">
		<a  href="{{ url('/producto/create') }}" class="btn btn-success" title="Nuevo">
			<span class="glyphicon glyphicon-plus"></span> Nuevo</a>
		</div>
		<h1>Lista de Producto(s)</h1>
		<hr>	
	</div>

	<p><b>{{$producto->total()}}</b> producto(a).</p>
	<div>
		@if($producto)
		<table class="table table-responsive">
			<thead class="well">
				<tr>
					<th width="600px">Id</th>
					<th width="400px">Nombre del Producto</th>
					<th width="400px">Codigo del Producto</th>
					<th width="400px">Precio</th>
					
					<th width="400px">Acciones</th>
				</tr>
			</thead>
			<tbody>
				@foreach($producto as $prod)
				<tr>
					<td>{{$prod->id_producto}}</td>
					<td>{{$prod->nombre_producto}}</td>
					<td>{{$prod->codigo_producto}}</td>
					<td>{{$prod->precio_producto}}</td>

					<td>@include('producto.acciones')</td>
					<!-- 
					<td>
						<form action="{{ route('producto.destroy', $prod->id_producto) }}" method="post">
							<input name="_method" type="hidden" value="DELETE">
							<input type="hidden" name="_token" value="{{ csrf_token() }}">
							<a href="{{ route('producto.edit', $prod->id_producto) }}" class="btn btn-info"> Editar</a>
							<button type="submit" class="btn btn-danger">Eliminar</button>
						</form>
					</td>
					-->
				</tr>
				@endforeach
			</tbody>
		</table>
		@endif
	</div>
	
	
	{!! $producto->render() !!}
	@endsection
