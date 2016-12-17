<form action="{{ route('meseros.destroy', $mes->id_mesero) }}" method="post">
	<input name="_method" type="hidden" value="DELETE">
	<input type="hidden" name="_token" value="{{ csrf_token() }}">
	<a href="{{ route('meseros.edit', $mes->id_mesero) }}" class="btn btn-info"> Editar</a>
	<button type="submit" class="btn btn-danger">Eliminar</button>
</form>
