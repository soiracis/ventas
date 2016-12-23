@extends('app')

@section('content')
<div>
	<div class="pull-right hidden-print">
		<a  href="{{ url('/meseros/create') }}" class="btn btn-success" title="Nuevo">
			<span class="glyphicon glyphicon-plus"></span> Nuevo</a>
		</div>
		<h1>Lista de Meseros(a)</h1>
		<hr>	
	</div>

	<p><b>{{$mesero->total()}}</b> Meseros(a).</p>
	<div>
		@if($mesero)
		<table class="table table-responsive">
			<thead class="well">
				<tr>
					<th width="600px">Nombre</th>
					<th width="400px">Direccion</th>
					<th width="400px">Correo</th>
					<th width="400px">Teléfono</th>
					<th width="400px">Mesero</th>
					
					<th width="400px">Acciones</th>
				</tr>
			</thead>
			<tbody>
				@foreach($mesero as $mes)
				<tr>
					<td>{{$mes->tx_nombre}}</td>
					<td>{{$mes->direccion}}</td>
					<td>{{$mes->tx_correo}}</td>
					<td>{{$mes->telefono}}</td>
					<td>{{$mes->tx_username}}</td>
					<td>@include('meseros.acciones')</td>
					<!-- 
					<td>
						<form action="{{ route('meseros.destroy', $mes->id_usuario) }}" method="post">
							<input name="_method" type="hidden" value="DELETE">
							<input type="hidden" name="_token" value="{{ csrf_token() }}">
							<a href="{{ route('meseros.edit', $mes->id_usuario) }}" class="btn btn-info"> Editar</a>
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
	
	
	{!! $mesero->render() !!}
	@endsection
