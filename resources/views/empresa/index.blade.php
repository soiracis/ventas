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

	<p><b>{{$empresa->total()}}</b> Empres(s).</p>
	<div>
		@if($empresa)
		<table class="table table-responsive">
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
				@foreach($empresa as $emp)
				<tr>
					<td>{{$emp->nombre}}</td>
					<td>{{$emp->direccion}}</td>
					<td>{{$emp->localidad}}</td>
					<td>{{$emp->telefono}}</td>
					<td>{{$emp->CP}}</td>
					<td>{{$emp->RFC}}</td>
					<td>@include('empresa.acciones')</td>
					<!-- 
					<td>
						<form action="{{ route('empresa.destroy', $emp->id_empresa) }}" method="post">
							<input name="_method" type="hidden" value="DELETE">
							<input type="hidden" name="_token" value="{{ csrf_token() }}">
							<a href="{{ route('empresa.edit', $emp->id_empresa) }}" class="btn btn-info"> Editar</a>
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
	
	
	{!! $empresa->render() !!}
	@endsection
