@extends('layouts.app')

@section('content')
<div>
	<div class="pull-right hidden-print">
		<a  href="{{ url('/users/create') }}" class="btn btn-success" title="Nuevo">
			<span class="fa fa-user-plus"></span> Nuevo</a>
		</div>
		<h1>Lista de Usuarios</h1>
		<hr>
	</div>

	<p><b>{{$users->total()}}</b> usuario(s).</p>
	<div>
		@if($users)
			<table class="table table-responsive">
				<thead class="well">
					<tr>
						<th width="30px">Id</th>
						<th width="150px">Username</th>
						<th>Nombre</th>
						<th>Modulos habilitados</th>
						<th width="200px">Acciones</th>
					</tr>
				</thead>
				<tbody>
					@foreach($users as $u)
					<tr>
						<td>{{$u->id}}</td>
						<td>{{$u->username}}</td>
						<td>{{$u->name}}</td>
						<td>
							@if(count($u->modulos)>0)
								<ul class="lista">
									@foreach ($u->modulos as $mod)
									<li>{{$mod->modulo}}</li>
									@endforeach
								</ul>
							@else
								<span class="text-muted">Sin permisos</span>
							@endif
						</td>
						<td>
							@include('users.acciones')
						</td>
					</tr>
					@endforeach
				</tbody>
			</table>
		@endif
	</div>


	{!! $users->render() !!}
	@endsection
