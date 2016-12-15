@extends('app')

@section('content')
	<div>
		<div class="pull-right hidden-print">
			<a  href="{{ url('/ventas') }}" class="btn btn-success" title="Nueva venta">
				<span class="glyphicon glyphicon-plus"></span> Nueva venta</a>
			</div>
			<h1>Ventas</h1>
			<hr>	
		</div>
	</div>

	<!-- Contenedor-->
	<div class="container">
		<div>
			<div class="row">
				<div class="col-md-2">
					<div class="form-group">
						<label>Codigo</label>
						<input type="text" id="codigo" class="form-control" placeholder="Codigo del producto" onchange="buscaProducto();" onInput="borrarMensaje();"/>
					</div>
				</div>
				<div class="col-md-5">
					<div class="form-group">
						<label>Descripción del producto</label>
						
						<input type="text" id="descripcion" class="form-control" placeholder="Descripción del producto" onchange="buscaProducto();" onInput="borrarMensaje();"/>
						<span id="mensaje"></span>
					</div>
				</div>
				<div class="col-md-1">
					<div class="form-group">
						<label>Cantidad</label>
						<input type="text" id="cantidad" name="cantidad" class="form-control" placeholder="Cant." onInput="calculaSubtotal()" onChange="calculaSubtotal()" onfocus="this.select();" onmouseup="return false;"/>
					</div>
				</div>
				<div class="col-md-1">
					<div class="form-group">
						<label>P/U</label>
						<span class="form-control" id="precio"></span>
					</div>
				</div>
				<div class="col-md-1">
					<div class="form-group">
						<label>Subtotal</label>
						<span class="form-control" id="subtotal"></span>
					</div>
				</div>
				<div class="col-md-1">
					<br>
					<button id="btnAgregar" type="button" class="btn btn-success" onClick="agregaProducto()">Agregar</button>
				</div>
				<div class="col-md-1">
					<br>
					<button type="button" class="btn btn-warning" onClick="limpiaProducto()">Limpiar</button>
				</div>
			</div>
		</div>
		<hr>
		<div class="table-responsive">
			<div class="content-fluid">
				<table class="table table-bordered table-hover">
					<thead>
						<tr>
							<th width="10%"></th>
							<th width="10%">Codigo</th>
							<th width="48%">Producto</th>
							<th width="13%">Cant.</th>
							<th width="13%">P/U</th>
							<th width="13%">Subtotal</th>
						</tr>
					</thead>
					<tbody id="lista">
						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
					</tbody>	
				</table>
			</div><br>
				<div>
				<table class="table">
					<tfoot>
						<tr>
							<td>Total de productos</td>
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
	<script type="text/javascript">
		var producto={}
		var lista=[]
		var total=0;

		//recupera el valor del campo
		function buscaProducto(){
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
				$.get("/producto",parametros)
				.then((data)=>{
					if(Object.keys(data).length>0){
						producto=data;
						document.querySelector('#descripcion').value=data.nombre_producto;
						document.querySelector('#precio').innerHTML=data.precio_producto;
						let cant=document.querySelector('#cantidad');
						cant.value=1;

						if(parametros.descripcion){
							document.querySelector('#codigo').value=data.codigo_producto;
						}
						cant.focus();		
						//se dispara el evento
						cant.onchange();	
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
			let cantidad=document.querySelector('#cantidad').value;
			if(cantidad>=0){
				producto.subtotal=producto.precio_producto*cantidad;
				producto.cantidad=cantidad;
				document.querySelector('#subtotal').innerHTML=producto.subtotal;
				if(producto.subtotal > 0){
					document.querySelector('#btnAgregar').disabled=false;
				}else{
					document.querySelector('#btnAgregar').disabled=true;
				}
			}
		}

		//agrega el producto a la lista
		function agregaProducto(){
			lista.push(producto);
			calculaTotal();
			limpiaProducto();
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
			document.querySelector('#subtotal').innerHTML=0;
			document.querySelector('#descripcion').value="";
			document.querySelector('#codigo').value="";
			document.querySelector('#codigo').focus();
			document.querySelector('#precio').innerHTML="0";
			document.querySelector('#cantidad').value=0;

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

			lista.forEach((p,i)=>{
				//boton eliminar
				let btn = document.createElement('button');
				btn.classList.add('btn');
				btn.classList.add('btn-danger');
				btn.addEventListener("click", eliminaProducto, false);
				btn.innerHTML="Borrar";
				total+=p.subtotal;
				// Insert a row in the table at row index 0
				var newRow = nueva.insertRow(i);

				// Insert a cell in the row at index 0
				let celda = newRow.insertCell(0);
				btn.id=i;
				celda.appendChild(btn);

				// Insert a cell in the row at index 0
				celda = newRow.insertCell(1);
				// Append a text node to the cell
				let valor = document.createTextNode(p.codigo_producto);
				celda.appendChild(valor);

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

			});
			//elimina las filas sobrantes
			nueva.id="lista";
			listaProductos.parentNode.replaceChild(nueva, listaProductos);
			//actualiza el valor
			document.querySelector('#total').value=total;
		}
		
	</script>
@endsection
