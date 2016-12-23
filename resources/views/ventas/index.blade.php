@extends('app')

@section('content')
	<style>
		@media print{

			hr{
				margin:5px;
			}
			td, th{
				padding:1px !important;
				text-align:center;
			}
			.table{
				margin-bottom:10px;
			}
		}
	</style>
	<div>
		<div class="pull-right hidden-print">
			<a  href="{{ url('/ventas') }}" class="btn btn-success" title="Nueva venta">
				<span class="glyphicon glyphicon-plus"></span> Nueva venta</a>
			</div>
			<h1 class="hidden-print">Ventas</h1>
			<div class="visible-print text-center" id="empresa">
				<b>{{$empresa->nombre}}</b><br>
				{{$empresa->direccion}} C.P {{$empresa->CP}}, {{$empresa->localidad}}
				<br>
				RFC: <b>{{$empresa->RFC}}</b>
				<br>
				{{$empresa->telefono}}
			</div>
			<hr>
		</div>
	</div>

	<!-- Contenedor-->
	<div class="container">
			<div>
				<div class="row">
					<div class="col-xs-3 col-md-1">
						<label>Fecha</label>
						<br>
						<span id='fecha'>01/dic/2016</span>
					</div>
					<div class="col-xs-3 col-md-2">
						<div class="form-group">
								<label>Mesa</label>
								<span class="visible-print" id="mesa">GENERAL</span>
								<input type="text" class="form-control hidden-print" placeholder="VENTA GENERAL" onchange="cambiaMesa(event)">
						</div>
					</div>
					<div class="col-xs-6 co-md-6">
						<div class="form-group">
								<label>Mesero</label>
								<span class="visible-print" id="mesero"></span>
								<input type="text" class="form-control hidden-print" onchange="cambiaMesero(event)">
						</div>
					</div>
				</div>
			</div>

			<!-- <div class="content-fluid"> -->
				<span id="mensaje" style="color:red"></span>
				<table class="table table-hover table-bordered">
					<thead>
						<tr>
							<th width="3%">#</th>
							<th width="10%" class="hidden-print">Código</th>
							<th>Descripción</th>
							<th width="8%">Cant.</th>
							<th width="15%">P/U</th>
							<th width="15%">Subtotal</th>
							<th width="10%" class="hidden-print"></th>
						</tr>
						<tr class="hidden-print">
							<th>

							</th>
							<th>
								<input type="text" id="codigo" class="form-control" placeholder="Codigo" onchange="buscaProducto(event);" onInput="borrarMensaje();"/>
							</th>
							<th>
								<input type="text" id="descripcion" class="form-control" placeholder="Descripción del producto" onchange="buscaProducto(event);" onInput="borrarMensaje();"/>
								<span id="mensaje" style="color:red"></span>
							</th>
							<th>
								<input type="text" id="cantidad" name="cantidad" class="form-control" placeholder="Cant." onInput="calculaSubtotal(event)" onfocus="this.select();" onKeyPress="pressEnter(event);" onmouseup="return false;"/>
							</th>
							<th>
								<span class="form-control" id="precio"></span>
							</th>
							<th>
								<span class="form-control" id="subtotal"></span>
							</th>
							<th>
								<div style="display:flex; padding:2px;">
										<button id="btnAgregar" type="button" class="btn btn-primary" onClick="agregaProducto()" title="Agregar" disabled="true"><i class="fa fa-plus"></i></button>
										<button type="button" class="btn btn-warning" onClick="limpiaProducto()" title="Limpiar"><i class="fa fa-refresh"></i></button>
								</div>
							</th>
						</tr>
					</thead>
					<tbody id="lista">
					</tbody>
				</table>
				<div>
					<div class="pull-right">
						<div class="text-right" style="padding-bottom:0;">
							<h4>Neto a pagar</h4>
							<h3 style="margin-top:0;"><b>$ <span id='total'>0.00</span></b></h3>
						</div>
					</div>
					<button type="button" class="btn btn-lg btn-info hidden-print" id="btnImprimir" onclick="window.print()" disabled="true">
						<i class="fa fa-print"></i>
						Imprimir ticket
					</button>
					<span class="visible-print"><br><i>¡Gracias por su preferencia!</i></span>
				</div>
			<!--Fin Contenedor-->
	</div>
	<script type="text/javascript">
		document.addEventListener("DOMContentLoaded", function(event) {
			document.querySelector('#codigo').focus();
			document.querySelector('#fecha').innerHTML=moment().locale('es').format('DD/MMM/YYYY');
		});
		var producto={}
		var lista=[]
		var total=0;
		function cambiaMesa(e) {
			mesa=e.target.value;
			if(mesa.length>0){
				document.querySelector('#mesa').innerHTML=mesa;
			}
			else {
				document.querySelector('#mesa').innerHTML='VENTA GENERAL';
			}
		}
		function cambiaMesero(e) {
			mesero=e.target.value;
			document.querySelector('#mesero').innerHTML=mesero;
		}
		//recupera el valor del campo
		function buscaProducto(event){
			parametros={};
			if(event.target.id=="codigo"){
				let codigo=document.querySelector('#codigo').value;
				codigo=codigo.trim();
				parametros={codigo:codigo};
			}
			if(event.target.id=="descripcion"){
				let descripcion=document.querySelector('#descripcion').value;
				descripcion=descripcion.trim();
				parametros={descripcion:descripcion};
			}
			if(Object.keys(parametros).length>0){
				producto={}
				$.get("{{ url('/producto') }}",parametros)
				.then((data)=>{
					if(Object.keys(data).length>0){
						producto=data;
						producto.precio_producto=Number(producto.precio_producto).toFixed(2);
						document.querySelector('#descripcion').value=data.nombre_producto;
						document.querySelector('#precio').innerHTML=data.precio_producto;
						let cant=document.querySelector('#cantidad');
						cant.value=1;
						if(parametros.descripcion){
							document.querySelector('#codigo').value=data.codigo_producto;
						}
						cant.focus();
						//se dispara el evento
						//cant.onchange();
						calculaSubtotal();
						//se limpia el codigo
						//document.querySelector('#codigo').value="";
					}
					else{
						limpiaProducto();
						document.querySelector('#mensaje').innerHTML="No encontrado";
					}
				})
			}
		}
		//calcula el subtotoal del producto
		function calculaSubtotal(){
			document.querySelector('#btnAgregar').disabled=true;
			let cantidad=parseFloat(document.querySelector('#cantidad').value);
			if(cantidad>=0){
				producto.subtotal=Number(producto.precio_producto*cantidad).toFixed(2);
				producto.cantidad=cantidad;
				document.querySelector('#subtotal').innerHTML=producto.subtotal;
				if(producto.subtotal > 0){
					document.querySelector('#btnAgregar').disabled=false;
				}
			}
		}
		function pressEnter(e) {
			if(e.key=="Enter"){
				agregaProducto();
			}
		}
		//agrega el producto a la lista
		function agregaProducto(){
			lista.push(producto);
			calculaTotal();
			limpiaProducto();
			document.querySelector('#btnAgregar').disabled=true;
			//actualiza la tabla
		}
		//elimina el producto a la lista
		function eliminaProducto(e){
			producto=e.target;
			lista.splice(producto.id,1);
			calculaTotal();
		}
		//limpia los valores del producto
		function limpiaProducto(){
			producto={};
			document.querySelector('#subtotal').innerHTML="0.00";
			document.querySelector('#descripcion').value="";
			document.querySelector('#codigo').value="";
			document.querySelector('#codigo').focus();
			document.querySelector('#precio').innerHTML="0.00";
			document.querySelector('#cantidad').value=1;
		}
		//limpia la descripcion del producto
		function borrarMensaje(){
			document.querySelector('#mensaje').innerHTML="";
		}
		//recorre los elementos de la lista
		function calculaTotal(){
			total=0;
			var listaProductos=document.querySelector('#lista');
			var nueva = document.createElement('tbody');
			document.querySelector('#btnImprimir').disabled=true;
			lista.forEach((p,i)=>{
				//boton eliminar
				let btn = document.createElement('button');
				btn.classList.add('btn');
				btn.classList.add('btn-danger');
				btn.addEventListener("click", eliminaProducto, false);
				btn.innerHTML="<i class='fa fa-times'></i>";
				total+=Number(p.subtotal);
				// Insert a row in the table at row index 0
				var newRow = nueva.insertRow(i);
				// Insert a cell in the row at index 0
				let celda = newRow.insertCell(0);
				// Append a text node to the cell
				let valor = document.createTextNode(i+1);
				celda.appendChild(valor);
				// Insert a cell in the row at index 0
				celda = newRow.insertCell(1);
				// Append a text node to the cell
				valor = document.createTextNode(p.codigo_producto);
				celda.appendChild(valor);
				celda.classList.add('hidden-print');
				// Insert a cell in the row at index 0
				celda = newRow.insertCell(2);
				// Append a text node to the cell
				valor = document.createTextNode(p.nombre_producto);
				celda.appendChild(valor);
				// Insert a cell in the row at index 0
				celda = newRow.insertCell(3);
				// Append a text node to the cell
				valor = document.createTextNode(p.cantidad);
				celda.appendChild(valor);
				// Insert a cell in the row at index 0
				celda = newRow.insertCell(4);
				// Append a text node to the cell
				valor = document.createTextNode(p.precio_producto);
				celda.appendChild(valor);
				// Insert a cell in the row at index 0
				celda = newRow.insertCell(5);
				// Append a text node to the cell
				valor = document.createTextNode(p.subtotal);
				celda.appendChild(valor);
				//boton elimina
				celda = newRow.insertCell(6);
				btn.id=i;
				celda.appendChild(btn);
				celda.classList.add('hidden-print');
			});
			//elimina las filas sobrantes
			nueva.id="lista";
			listaProductos.parentNode.replaceChild(nueva, listaProductos);
			//actualiza el valor
			document.querySelector('#total').innerHTML=Number(total).toFixed(2);
			if(total>0){
				document.querySelector('#btnImprimir').disabled=false;
			}
		}
	</script>
@endsection
