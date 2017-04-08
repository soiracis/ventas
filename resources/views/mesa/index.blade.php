@extends('layouts.app')

@section('content')
<div>
	<div class="pull-right hidden-print">
		<a  href="{{ url('/mesa/create') }}" class="btn btn-success" title="Nuevo">
			<span class="glyphicon glyphicon-plus"></span> Nuevo</a>
		</div>
		<h1>Lista de Mesa(s)</h1>
		<hr>
	</div>

	<p><b>{{$mesa->total()}}</b> mesa(a).</p>
	<div>
		@if($mesa)
		<table class="table table-responsive">
			<thead class="well">
				<tr>
					<th width="600px">Id Mesa</th>
					<th width="400px">Nombre Mesa</th>
					<th width="400px">Id Area</th>
					<th width="400px">Nombre Area</th>
					<th width="400px">status</th>

					<th width="400px">Acciones</th>
				</tr>
			</thead>
			<tbody>
				@foreach($mesa as $mes)
				<tr>
					<td>{{$mes->id_mesa}}</td>
					<td>{{$mes->nom_mesa}}</td>
					<td>{{$mes->id_area}}</td>
					<td>{{$mes->nom_area}}</td>
					<td>{{$mes->status}}</td>

					<td>@include('mesa.acciones')</td>
					<!--
					<td>
						<form action="{{ route('mesa.destroy', $mes->id_producto) }}" method="post">
							<input name="_method" type="hidden" value="DELETE">
							<input type="hidden" name="_token" value="{{ csrf_token() }}">
							<a href="{{ route('mesa.edit', $mes->id_producto) }}" class="btn btn-info"> Editar</a>
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


	{!! $mesa->render() !!}
	@endsection
