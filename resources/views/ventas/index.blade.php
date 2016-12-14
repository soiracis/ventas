@extends('app')

@section('content')
<div>
	<div class="pull-right hidden-print">
		<a  href="{{ url('/venta/create') }}" class="btn btn-primary" title="Imprimir"><span class="fa fa-print"></span> Imprimir</a>
		<a  href="{{ url('/venta/create') }}" class="btn btn-warning" title="Cancelar"><span class="glyphicon glyphicon-remove"></span> Cancelar</a>
		<a  href="{{ url('/venta/create') }}" class="btn btn-success" title="Nuevo"><span class="glyphicon glyphicon-plus"></span> Nuevo</a>
		</div>
		<h1>Ventas</h1>
		<hr>	
	</div>


	<!-- Contenedor-->

		<form name="" id="" action="" method="POST">
			
			<table class="table table-bordered">
				<thead class="well">
					<th width="10%">Sel</th>
					<th width="48%">Producto</th>
					<th width="13%">Cant.</th>
					<th width="13%">P/U</th>
					<th width="13%">Total</th>
				</thead>
				<tbody>

				</tbody>	
			</table>

				<div class="container">
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