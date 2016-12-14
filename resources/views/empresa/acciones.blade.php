<form action="{{ route('empresa.destroy', $emp->id_empresa) }}" method="post">
	<input name="_method" type="hidden" value="DELETE">
	<input type="hidden" name="_token" value="{{ csrf_token() }}">
	<a href="{{ route('empresa.edit', $emp->id_empresa) }}" class="btn btn-info"> Editar</a>
	<button type="submit" class="btn btn-danger">Eliminar</button>
</form>





