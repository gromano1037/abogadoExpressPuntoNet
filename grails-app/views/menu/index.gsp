<%@ page import="abogadoexpresspuntonet.Causa" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="images/icons/favicon.ico">

    <title>Starter Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/starter-template.css" rel="stylesheet">
    <link href="../css/starter-template.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="js/ie-emulation-modes-warning.js"></script>
    <script src="../js/ie-emulation-modes-warning.js"></script>

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="js/ie10-viewport-bug-workaround.js"></script>
    <script src="../js/ie10-viewport-bug-workaround.js"></script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
  
    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#"><span class="glyphicon glyphicon-user"></span> ${session.user.usuario}</a>
        </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li>
            	
            		<g:if test="${flash.message}" >
        					<div>${flash.message}</div>
						</g:if>	
            	
            </li>
            <li>            	          		
            	<form class="navbar-form navbar-left" role="search">
        			<div class="form-group">
          				<input type="text" class="form-control" placeholder="Search">
        			</div>
        			<div class="form-group">
          				<select class="form-control">
  							<option>Causas</option>
  							<option>Legajo</option>
  							<option>Cliente</option>
  						</select>
        			</div>
        			<div class="form-group">
          				<!-- Split button -->
						<div class="btn-group">
  							<button type="button" class="btn btn-success"> <span class="glyphicon glyphicon-zoom-in"></span></button>
  						</div>
        			</div>
        			      			
        		</form>
        	</li>
          </ul>
        
          
           <ul class="nav navbar-nav navbar-right">
           <li class="active"><a href="estudio/index.html"> abogadoExpressPuntoNet <img src="images/icons/icon.png" width="20" height="20" alt=""/> </a></li>
           <li>
           		
           			<a href="estudio/index" id="dropdownMenu1" data-toggle="dropdown"> <span class="glyphicon glyphicon-cog"></span></a>
  					
  					<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
  						<li role="presentation" class="dropdown-header">Usuarios</li>
					    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Agregar nuevo</a></li>
					    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Lista de usuarios</a></li>
					    <li role="presentation"><a role="menuitem" tabindex="-1" href="#"></a></li>
					    <li role="presentation" class="divider"></li>
					    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Estudio Juridico</a></li>
  					</ul>
				
           </li>
           <li><a href="../login/logout"> <span class="glyphicon glyphicon-off"></span></a></li>
            </ul>
                  
        </div><!--/.nav-collapse -->
        
   
       
        

        
        
        
      </div>
    </div>

    <div class="container">
    <br>
    
    <div id="list-causa" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="caratula" title="${message(code: 'causa.caratula.label', default: 'Caratula')}" />
					
						<g:sortableColumn property="descripcion" title="${message(code: 'causa.descripcion.label', default: 'Descripcion')}" />
					
						<g:sortableColumn property="tipo" title="${message(code: 'causa.tipo.label', default: 'Tipo')}" />
					
						<g:sortableColumn property="estado" title="${message(code: 'causa.estado.label', default: 'Estado')}" />
					
						<g:sortableColumn property="fechaCreacion" title="${message(code: 'causa.fechaCreacion.label', default: 'Fecha Creacion')}" />
					
						<th><g:message code="causa.cliente.label" default="Cliente" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${causaInstanceList}" status="i" var="causaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${causaInstance.id}">${fieldValue(bean: causaInstance, field: "caratula")}</g:link></td>
					
						<td>${fieldValue(bean: causaInstance, field: "descripcion")}</td>
					
						<td>${fieldValue(bean: causaInstance, field: "tipo")}</td>
					
						<td>${fieldValue(bean: causaInstance, field: "estado")}</td>
					
						<td><g:formatDate date="${causaInstance.fechaCreacion}" /></td>
					
						<td>${fieldValue(bean: causaInstance, field: "cliente")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${causaInstanceCount ?: 0}" />
			</div>
		</div>
        
   		<div class="row">
   			    <div class="col-xs-6 col-sm-3""> 
            		<a href="causa/index" id="dropdownMenuCausa" data-toggle="dropdown"> 
            		<img src="../images/casos.png" height="60" width="60">
            		<!--<img src="images/casos.png" height="60" width="60">--></a>
              		
              			<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenuCausas">
              			<li role="presentation" class="dropdown-header">Causas</li>
              			<li role="presentation" class="divider"></li>
  					    <li role="presentation"><a role="menuitem" tabindex="-1" href="../Causa/create">Agregar causa</a></li>
					    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Listado de causas</a></li>
						</ul>
              	</div>
               	<div class="col-xs-6 col-sm-3"> 
               			<a href="cliente/index" id="dropdownMenuCliente" data-toggle="dropdown">
               			<img src="../images/clientes.png" height="60" width="60">
               			<!--<img src="images/clientes.png" height="60" width="60"--></a>
              		
              			<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenuCliente">
              			<li role="presentation" class="dropdown-header">Clientes</li>
              			<li role="presentation" class="divider"></li>
  					    <li role="presentation"><a role="menuitem" tabindex="-1" href="../Cliente/create">Agregar cliente</a></li>
					    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Listado de clientes</a></li>
						</ul>
              	</div>
                <div class="col-xs-6 col-sm-3">
                
              			<a href="agenda/index" id="dropdownMenuAgenda" data-toggle="dropdown"> 
              			<!--<img src="images/agenda.png" height="60" width="60">-->
              			<img src="../images/agenda.png" height="60" width="60"></a>
              		
              			<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenuAgenda">
              			<li role="presentation" class="dropdown-header">Agenda</li>
              			<li role="presentation" class="divider"></li>
  					    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Agregar compromiso</a></li>
					    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Menú de agenda</a></li>
						</ul>
              		
              	</div>
               <div class="col-xs-6 col-sm-3">
               
              		<a href="asientos/index" id="dropdownMenuAsiento" data-toggle="dropdown"> 
              			<!--<img src="images/contables.png" height="60" width="60">-->
              			<img src="../images/contables.png" height="60" width="60">
              			
              			</a>
              		
              			<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenuAsiento">
              			<li role="presentation" class="dropdown-header">Asientos contables</li>
              			<li role="presentation" class="divider"></li>
  					    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Agregar nuevo</a></li>
					    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Listado de asientos contables</a></li>
						</ul>
              	</div>
         </div>
           
		<br><br>      
      
  		 <h4 class="sub-header">Últimos causas consultadas</h4>
     
          <div class="table-responsive">
        
          


            <table class="table table-hover">
              <thead>
                <tr class="info">
                  <th>
                  		<div class="btn-group">
    						<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
      								Legajo
      								<span class="caret"></span>
    						</button>
    						<ul class="dropdown-menu">
      							<li><a href="#">Ascendente</a></li>
      							<li><a href="#">Descendente</a></li>
    						</ul>
  						</div>
                  
                  </th>
                  <th>
                  		<div class="btn-group">
    						<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
      								Caratula
      								<span class="caret"></span>
    						</button>
    						<ul class="dropdown-menu">
      							<li><a href="#">A -> Z</a></li>
      							<li><a href="#">Z -> A</a></li>
    						</ul>
  						</div>
                  </th>
                  <th>
                  		<div class="btn-group">
    						<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
      								Tipo
      								<span class="caret"></span>
    						</button>
    						<ul class="dropdown-menu">
      							<li><a href="#">Judicial</a></li>
      							<li><a href="#">Penal</a></li>
                                <li><a href="#">Extrajudicial</a></li>
                                <li><a href="#">Administrativo</a></li>
                                <li><a href="#">Arbitral</a></li>
                                <li><a href="#">Laboral</a></li>
                                <li><a href="#">Familia</a></li>
                                <li><a href="#">Civil y comercial</a></li>
    						</ul>
  						</div>
                  </th>
                  <th>
                  		<div class="btn-group">
    						<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
      								Fecha de ingreso
      								<span class="caret"></span>
    						</button>
    						<ul class="dropdown-menu">
      							<li><a href="#">Ascendente</a></li>
      							<li><a href="#">Descendente</a></li>
    						</ul>
  						</div>
                  </th>
                  <th>
                  		<div class="btn-group">
    						<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
      								Expediente
      								<span class="caret"></span>
    						</button>
    						<ul class="dropdown-menu">
      							<li><a href="#">Ascendente</a></li>
      							<li><a href="#">Descendente</a></li>
    						</ul>
  						</div>
                  </th>
                  
                  <th>
                  		<div class="btn-group">
    						<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
      								Cliente
      								<span class="caret"></span>
    						</button>
    						<ul class="dropdown-menu">
      							<li><a href="#">A -> Z</a></li>
      							<li><a href="#">Z -> A</a></li>
    						</ul>
  						</div>
                  </th>
                  
                  
                  <th>
                  		<div class="btn-group">
    						<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
      								Estado
      								<span class="caret"></span>
    						</button>
    						<ul class="dropdown-menu">
      							<li><a href="#">En trámite</a></li>
      							<li><a href="#">Archivado</a></li>
    						</ul>
  						</div>
                  </th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>1.001</td>
                  <td>Despido Injustificado</td>
                  <td>Laboral</td>
                  <td>13/04/2013</td>
                  <td>29.123</td>
                  <td> <a href="#" class="alert-link">Ramoz A.</a> </td>
                  <td><span class="label label-success">En trámite</span></td>
                </tr>
                <tr>
                  <td>1.002</td>
                  <td>Tenencia</td>
                  <td>Familia</td>
                  <td>15/09/2011</td>
                  <td>32.214</td>
                  <td><a href="#" class="alert-link">Gonzales G.</a></td>
                  <td><span class="label label-danger">Archivado</span></td>
                </tr>
                <tr>
                  <td>1.003</td>
                  <td>Robo simple</td>
                  <td>Penal</td>
                  <td>17/11/2009</td>
                  <td>52.201</td>
                  <td><a href="#" class="alert-link">Peralta J.</a></td>
                  <td><span class="label label-success">En trámite</span></td>
                </tr>
                <tr>
                  <td>1.004</td>
                  <td>Despido</td>
                  <td>Laboral</td>
                  <td>25/10/2013</td>
                  <td>52.245</td>
                  <td><a href="#" class="alert-link">Consulper SRL</a></td>
                  <td><span class="label label-success">En trámite</span></td>
                </tr>
                <tr>
             	  <td>1.012</td>
                  <td>Estafa</td>
                  <td>Penal</td>
                  <td>25/11/2013</td>
                  <td>52.545</td>
                  <td><a href="#" class="alert-link">AGZ SRL</a></td>
                  <td><span class="label label-success">En trámite</span></td>
                </tr>
                <tr>
                  <td>1.213</td>
                  <td>Robo calificado</td>
                  <td>Penal</td>
                  <td>25/05/2013</td>
                  <td>56.545</td>
                  <td><a href="#" class="alert-link">Juarez A.</a></td>
                  <td><span class="label label-success">En trámite</span></td>
                </tr>
                <tr>
                  <td>1.254</td>
                  <td>Tenencia</td>
                  <td>Familia</td>
                  <td>25/02/2014</td>
                  <td>51.545</td>
                  <td><a href="#" class="alert-link">Ramirez L.</a></td>
                  <td><span class="label label-success">En trámite</span></td>
                </tr>
            
              </tbody>
            </table>
 
    
       
    
    </div><!-- /.container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/jquery-1.11.1.min.js"></script>
     <script src="../js/jquery-1.11.1.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="../bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>
