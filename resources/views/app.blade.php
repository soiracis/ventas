<!DOCTYPE html>
<html lang="es_ES">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title> .:: Punto de Venta ::. </title>
	<!-- css Punto de Venta -->
	<link href="{{ asset('/css/app2.css') }}" rel="stylesheet">
	<!-- El CSS del Font Awesome-->
	<link href="{{ asset('/css/bootstrap.min.css') }}" rel="stylesheet">
	<!-- El CSS del Font Awesome-->
	<link href="{{ asset('/css/font-awesome.css') }}" rel="stylesheet">
	<!-- Fonts -->
	<link href='//fonts.googleapis.com/css?family=Roboto:400,300' rel='stylesheet' type='text/css'>
    <!-- imprime -->
    <link href="{{ asset('/css/imprime.css') }}" rel="stylesheet" media="print">
	
	</head>
	<body>
		<div id="cover">
			<div class="cargando">Esto tomará un segundo <b>:)</b></div>
		</div>
		<nav class="navbar navbar-default">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle Navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="./" title="Punto de Venta"><i class="glyphicon glyphicon-home"></i> Punto de Venta</a>
				</div>

				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li><a href="{{ url('/empresa') }}"> <i class="fa fa-building-o"></i> Empresa</a></li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false" title="Meseros"><i class="fa fa-user"></i> Meseros<span class="caret"></span></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="{{ url('/meseros') }}" title="Federal"> Crear</a></li>
								
								<li class="divider"></li>
						
							</ul>
						</li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false" title="Mesas"><i class="fa fa-book"></i> Mesas<span class="caret"></span></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="{{ url('/mesa') }}" title="Federal"> Crear</a></li>
								
								<li class="divider"></li>
							</ul>
						</li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false" title="Productos"><i class="fa fa-book" aria-hidden="true"></i> Productos<span class="caret"></span></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="{{ url('/producto') }}" title="Federal"> Crear</a></li>
								
								<li class="divider"></li>
							</ul>
						</li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false" title="Ventas"><i class="fa fa-shopping-cart"></i> Ventas<span class="caret"></span></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="{{ url('/ventas') }}" title="Federal"> Crear</a></li>
								
								<li class="divider"></li>
							</ul>
						</li>
					</ul>

					<ul class="nav navbar-nav navbar-right">
						@if (Auth::guest())
						<li><a href="{{ url('/auth/login') }}" title="Iniciar sesión"><i class="fa fa-key"></i> Iniciar sesión</a></li>
						<li><a href="{{ url('/auth/register') }}" title="Registrar"><i class="fa fa-user-plus"></i> Registrar</a></li>
						@else
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false" title="Salir"><i class="fa fa-unlock"></i> {{ Auth::user()->username }} <span class="caret"></span></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="{{ url('/auth/logout') }}"><i class="fa fa-sign-out"></i> Salir</a></li>
							</ul>
						</li>
						@endif
					</ul>
				</div>
			</div>
		</nav>
		<div class="container">
			<!-- Contenido -->
			@yield('content')
		</div>

		<!-- Scripts -->
		<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
		<script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.1/js/bootstrap.min.js"></script>

		
<script type="text/javascript">
        //language:  'es',
				$(window).load(function(){
			    $('#cover').fadeOut(100);
			})
	$('.form_date').datetimepicker({
        language:  'es',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 2,
		minView: 2,
		forceParse: 0
    });
</script>
		@yield('script')
	</body>
	</html>