<form action="{{ route('producto.destroy', $prod->id_producto) }}" method="post">
	<input name="_method" type="hidden" value="DELETE">
	<input type="hidden" name="_token" value="{{ csrf_token() }}">
	<a href="{{ route('producto.edit', $prod->id_producto) }}" class="btn btn-info"> Editar</a>
	<button type="submit" class="btn btn-danger">Eliminar</button>
</form>
