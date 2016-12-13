@extends('app')

@section('content')
<div>
	<div class="pull-right hidden-print">
		<a  href="{{ url('/venta/create') }}" class="btn btn-success" title="Nuevo">
			<span class="glyphicon glyphicon-plus"></span> Nuevo</a>
		</div>
		<h1>Ventas</h1>
		<hr>	
	</div>


	<!-- Contenedor-->
	<div class="container-fluid">
		<form name="" id="" action="" method="POST">
			
			<div class="table-responsive">
				<div class="content-fluid">
					<table class="table-hover">
						<thead>
							<tr>
								<th width="10%">Sel</th>
								<th width="48%">Producto</th>
								<th width="13%">Cant.</th>
								<th width="13%">P/U</th>
								<th width="13%">Total</th>
							</tr>
						</thead>
						<tbody>

						</tbody>	
					</table>
				</div><br>

				<div>
					<table>
						<tfoot>
							<tr>
								<td> <button class="btn btn-default" type="button" onClick="AddItem();">Agregar</button></td>
								<td> <input class="btn btn-default" type="button" value="Eliminar"  onClick="deleteRow('tabla');CalcularNuevoTotal();"/></td>
								<td><input class="btn btn-default" type="button" value="Ticket" onClick="verificaTotal()" /></td>
								<td> NETO</td>
								<td align="left"><input class="form-control" size="2" type="text" readonly id="total" name="total" value="0"/></td>
							</tr>
						</tfoot>	
					</table>
					<hr>
				</div>
				
				
				<!--Fin Contenedor-->
			</div>

		</div>







		{!! $venta->render() !!}
		@endsection