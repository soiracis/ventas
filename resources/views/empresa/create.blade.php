@extends('app')

@section('content')
<div>
	<div class="pull-right">
		<a  href="{{ url('/empresa') }}" class="btn btn-info" title="Empresa"><i class="glyphicon glyphicon-chevron-left"></i> Regresar</a>
	</div>
	<h1>Nueva Empresa</h1>	
</div>

@include('forms.errores')

{!!Form::open(array('action' => 'EmpresaController@store'))!!}

@include('empresa.forms',['txt_btn' => 'Guardar'])

@endsection