@extends('app')

@section('content')
<div>
	<div class="pull-right hidden-print">
		<a  href="{{ url('/empresa/create') }}" class="btn btn-success" title="Nuevo">
			<span class="glyphicon glyphicon-plus"></span> Nuevo</a>
		</div>
		<h1>Empresa</h1>
		<hr>	
	</div>

	<table class="table table-bordered">
		<thead class="well">
			<tr>
				<th width="600px">Nombre </th>
				<th width="400px">Direccion</th>
				<th width="400px">Localidad</th>
				<th width="400px">Teléfono</th>
				<th width="400px">Código Postal</th>
				<th width="400px">RFC</th>
				<th width="400px">Acciones</th>
			</tr>
		</thead>
		<tbody>
			@foreach($empresa as $listar)
			<tr>
				<td>{{$listar->nombre}}</td>
				<td>{{$listar->direccion}}</td>
				<td>{{$listar->localidad}}</td>
				<td>{{$listar->telefono}}</td>
				<td>{{$listar->CP}}</td>
				<td>{{$listar->RFC}}</td>
				<td></td>
			</tr>
			@endforeach
		</tbody>
	</table>
	
	{!! $empresa->render() !!}
	@endsection
