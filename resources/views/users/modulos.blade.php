
<h3>Permisos</h3>
<form action="{{ route('users.agregarmodulo') }}" method="post">
  <input name="user_id" type="hidden" value="{{$user->id}}">
  {{ csrf_field() }}
  <div class="input-group">
    <input type="text" class="form-control" placeholder="Nombre del módulo" name="modulo">
    <span class="input-group-btn">
      <button type="success" class="btn btn-success"> Habilitar</button>
    </span>
  </div>
</form>
<hr>
@if(count($modulos))
<form action="{{ route('users.borrarmodulo') }}" method="post">
  {{ csrf_field() }}
  <input name="user_id" type="hidden" value="{{$user->id}}">
  <ul class="list-group">
  @foreach ($modulos as $mod)
    <li class="list-group-item">
      <div>
        <div class="pull-right">
          <button type="submit" name="id" value="{{$mod->id}}" class="btn btn-danger btn-xs"><i class="fa fa-times"></i> eliminar</button>
        </div>
        {{$mod->modulo}}
      </div>
    </li>
  @endforeach
  </ul>
</form>
@else
<div class="alert alert-warning">
  Sin permisos
</div>
@endif
