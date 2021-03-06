<form method="post" action="/empresa">
	<input type="hidden" name="_token" value="{{ csrf_token() }}">
	<div class="form-group">
		<label>Nombre de la Empresa</label>
		{!!Form::text('nombre', @$nombre, array("class"=>"form-control","placeholder"=>"Nombre de la Empresa", "style"=>"text-transform:uppercase;", "onkeyup"=>"javascript:this.value=this.value.toUpperCase();"))!!}
	</div>	
	<div class="form-group">
		<label>Direccion</label>
		{!!Form::text('direccion', @$direccion, array("class"=>"form-control","placeholder"=>"Direccion", "style"=>"text-transform:uppercase;", "onkeyup"=>"javascript:this.value=this.value.toUpperCase();"))!!}
	</div>	
	<div class="form-group">
		<label>Localidad</label>
		{!!Form::text('localidad', @$localidad, array("class"=>"form-control","placeholder"=>"Localidad", "style"=>"text-transform:uppercase;", "onkeyup"=>"javascript:this.value=this.value.toUpperCase();"))!!}
	</div>	
	<div class="form-group">
		<label>CP</label>
		{!!Form::text('CP', @$CP, array("class"=>"form-control","placeholder"=>"CP", "style"=>"text-transform:uppercase;", "onkeyup"=>"javascript:this.value=this.value.toUpperCase();"))!!}
	</div>	
	<div class="form-group">
		<label>Teléfono</label>
		{!!Form::text('telefono', @$telefono, array("class"=>"form-control","placeholder"=>"Teléfono", "style"=>"text-transform:uppercase;", "onkeyup"=>"javascript:this.value=this.value.toUpperCase();"))!!}
	</div>	
	<div class="form-group">
		<label>RFC</label>
		{!!Form::text('RFC', @$RFC, array("class"=>"form-control","placeholder"=>"RFC", "style"=>"text-transform:uppercase;", "onkeyup"=>"javascript:this.value=this.value.toUpperCase();"))!!}
	</div>	
	<div class="form-group">
		<label>Logo</label>
		{!!Form::file('logo', @$logo, array("class"=>"form-control","placeholder"=>"Logo"))!!}
	</div>	
	<div class="form-group">
		{!! link_to(URL::previous(), 'Cancelar', ['class' => 'btn btn-default']) !!}
		<button type="submit" class="btn btn-success"> Guardar</button>
	</div>

</form>