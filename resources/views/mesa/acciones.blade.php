<form action="{{ route('mesa.destroy', $mes->id_mesa) }}" method="post">
	<input name="_method" type="hidden" value="DELETE">
	<input type="hidden" name="_token" value="{{ csrf_token() }}">
	<a href="{{ route('mesa.edit', $mes->id_mesa) }}" class="btn btn-info"> Editar</a>
	<button type="submit" class="btn btn-danger">Eliminar</button>
</form>
