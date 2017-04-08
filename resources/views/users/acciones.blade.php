<form action="{{ route('users.destroy', $u->id) }}" method="post">
	<input name="_method" type="hidden" value="DELETE">
	<input type="hidden" name="_token" value="{{ csrf_token() }}">
	<a href="{{ route('users.edit', $u->id) }}" class="btn btn-info"> Editar</a>
	<button type="submit" class="btn btn-danger">Eliminar</button>
</form>
