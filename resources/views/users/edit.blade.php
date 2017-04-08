@extends('layouts.app')

@section('content')
<div>
	<div class="pull-right hidden-print">
		<a  href="{{ url('/users') }}" class="btn btn-info">
			<span class="fa fa-arrow-left"></span> Volver</a>
		</div>
		<h1>Editar</h1>
		<hr>
	</div>
	<div class="row">
		<div class="col-sm-6">
			<form role="form" method="POST" action="{{ route('users.update', $user->id) }}">
					{{ csrf_field() }}
					<input name="_method" type="hidden" value="PUT">
					<div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
						<label for="name" class="control-label">Nombre</label>
						<div class="input-group">
							<input id="name" type="text" class="form-control" name="name" value="{{ $user->name }}">
							<span class="input-group-btn">
								<button type="submit" name="nombre" class="btn btn-info"> Actualizar</button>
							</span>
						</div>
						@if ($errors->has('name'))
								<span class="help-block">
										<strong>{{ $errors->first('name') }}</strong>
								</span>
						@endif

					</div>

					<h3>Cambio de contraseña</h3>
					<hr>
					<div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
							<label for="password" class="control-label">Contraseña nueva</label>
							<input id="password" type="password" class="form-control" name="password">
							@if ($errors->has('password'))
								<span class="help-block">
									<strong>{{ $errors->first('password') }}</strong>
								</span>
							@endif
					</div>

					<div class="form-group{{ $errors->has('password_confirmation') ? ' has-error' : '' }}">
							<label for="password-confirm" class="control-label">Confirmar contraseña</label>
							<input id="password-confirm" type="password" class="form-control" name="password_confirmation">
							@if ($errors->has('password_confirmation'))
								<span class="help-block">
									<strong>{{ $errors->first('password_confirmation') }}</strong>
								</span>
							@endif
					</div>

					<div class="form-group">
						<button type="submit" class="btn btn-primary" name="cambiar">
							<i class="fa fa-btn fa-user"></i> Actualizar contraseña
						</button>
					</div>
			</form>
		</div>
		<div class="col-sm-6">
			@include('users.modulos',['modulos' => $user->modulos])
		</div>
	</div>
	@endsection
