<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="images/icons/icon.png">

    <title>Abogado Express .NET</title>

    <!-- Bootstrap core CSS -->
    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../css/cover.css" rel="stylesheet">
    <link href="css/cover.css" rel="stylesheet">
    <link href="../css/signin.css" rel="stylesheet">
    <link href="css/signin.css" rel="stylesheet">

 	<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../js/ie-emulation-modes-warning.js"></script>
    <script src="js/ie-emulation-modes-warning.js"></script>

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../js/ie10-viewport-bug-workaround.js"></script>
    <script src="js/ie10-viewport-bug-workaround.js"></script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
     <div class="site-wrapper">
      	<div class="site-wrapper-inner">
        	<div class="cover-container">
          		<div class="masthead clearfix">
            		<div class="inner">
              			<h1 class="masthead-brand">abogadoExpressPuntoNet</h1>
              			<ul class="nav masthead-nav">
                		<!--<li class="active"><a href="#">Home</a></li>-->
                		</ul> 
            		</div>
          		</div>
          		<div class="inner cover">
          		
          			<div class="row">
  						<div class="col-md-6" >
		        			<h2><img src="images/casos.png" width="60" height="60" alt=""/> 
		        				<img src="../images/casos.png" width="60" height="60" alt=""/> Causas</h2>
		        			<p>Administrar causas judiciales o locales, funcionalidad para registrar nuevas causas, modificarlas y eliminarlas. Realizar un seguimienro online del estado de las causas</p>
          					<p></p>
          					<br>
          					<h2><img src="images/clientes.png" width="60" height="80" alt=""/>
          						<img src="../images/clientes.png" width="60" height="80" alt=""/> Clientes</h2>
		        			<p>Administrar los clientes del estudio jurídico, funcionalidad para registrar nuevos clientes, modificar datos personales y eliminarlos. </p>
          					<p></p>
          					
      			      </div>
						
						
						
  						  						
  						<div class="col-md-6 col-md-push-2" >
							<g:form class="form-signin" name="loginForm" url="[controller:'login',action:'validar']">
                    	<h2 class="form-signin-heading">Iniciar sesión:</h2>
        				<input type="text" name="loginUsuario" class="form-control" placeholder="usuario" required autofocus>
        				<input type="password" name="loginPassword" class="form-control" placeholder="password" required>
        				<g:if test="${flash.message}" >
        					<div class="alert alert-danger" role="alert">${flash.message}</div>
						</g:if>		
        				<label class="checkbox">
          					<!--<input type="checkbox" value="remember-me"> Olvidó su contraseña?-->
                            <!--<a href="recuperarContrasena.html">¿Olvidó su contraseña?</a>-->
                            <g:link controller="usuario" action="recuperarPassword"> ¿ Olvidó su contraseña ? </g:link>
        				</label>
        				<label class="checkbox">
          					<!--<input type="checkbox" value="remember-me"> Olvidó su contraseña?-->
                            <!--<a href="recuperarContrasena.html">¿Olvidó su contraseña?</a>-->
                            <g:link controller="usuario" action="create"> Registrarse </g:link>
        				</label>
        				<button class="btn btn-lg btn-primary btn-block" type="submit">Acceder</button>
      				</g:form>
						</div>
					</div>
          		
            
          			<div class="mastfoot">
            			<div class="inner">
              				<p>INGENIERIA DE SOFTWARE - GRUPO 5</p>
           				</div>
          			</div>
        		</div>
    	 </div>
    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->

    <script src="../js/jquery-1.11.1.min.js"></script>
    <script src="js/jquery-1.11.1.min.js"></script>
    <script src="../bootstrap/js/bootstrap.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="../js/docs.min.js"></script>
    <script src="js/docs.min.js"></script>
  </body>
</html>
