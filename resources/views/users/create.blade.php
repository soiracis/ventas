@extends('layouts.app')

@section('content')
<div>
	<div class="pull-right hidden-print">
		<a  href="{{ url('/users') }}" class="btn btn-info">
			<span class="fa fa-arrow-left"></span> Volver</a>
		</div>
		<h1>Nuevo usuario</h1>
		<hr>
	</div>
			<form role="form" method="POST" action="{{ route('users.store') }}">
					{{ csrf_field() }}
          <div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
							<label for="name" class="control-label">Nombre</label>
							<input id="name" type="text" class="form-control" name="name">
							@if ($errors->has('name'))
								<span class="help-block">
									<strong>{{ $errors->first('name') }}</strong>
								</span>
							@endif
					</div>
          <div class="form-group{{ $errors->has('username') ? ' has-error' : '' }}">
							<label for="username" class="control-label">Usuario</label>
							<input id="username" type="text" class="form-control" name="username">
							@if ($errors->has('username'))
								<span class="help-block">
									<strong>{{ $errors->first('username') }}</strong>
								</span>
							@endif
					</div>

					<div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
							<label for="password" class="control-label">Contraseña</label>
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
							<i class="fa fa-btn fa-user"></i> Registrar
						</button>
					</div>
			</form>
		</div>

	</div>
	@endsection
