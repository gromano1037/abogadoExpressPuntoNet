
<%@ page import="abogadoexpresspuntonet.Cliente" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'cliente.label', default: 'Cliente')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-cliente" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-cliente" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list cliente">
			
				<g:if test="${clienteInstance?.dni}">
				<li class="fieldcontain">
					<span id="dni-label" class="property-label"><g:message code="cliente.dni.label" default="Dni" /></span>
					
						<span class="property-value" aria-labelledby="dni-label"><g:fieldValue bean="${clienteInstance}" field="dni"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteInstance?.apellido}">
				<li class="fieldcontain">
					<span id="apellido-label" class="property-label"><g:message code="cliente.apellido.label" default="Apellido" /></span>
					
						<span class="property-value" aria-labelledby="apellido-label"><g:fieldValue bean="${clienteInstance}" field="apellido"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="cliente.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${clienteInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteInstance?.empresa}">
				<li class="fieldcontain">
					<span id="empresa-label" class="property-label"><g:message code="cliente.empresa.label" default="Empresa" /></span>
					
						<span class="property-value" aria-labelledby="empresa-label"><g:fieldValue bean="${clienteInstance}" field="empresa"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="cliente.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${clienteInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteInstance?.cuilPrimer}">
				<li class="fieldcontain">
					<span id="cuilPrimer-label" class="property-label"><g:message code="cliente.cuilPrimer.label" default="Cuil Primer" /></span>
					
						<span class="property-value" aria-labelledby="cuilPrimer-label"><g:fieldValue bean="${clienteInstance}" field="cuilPrimer"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteInstance?.cuilMedio}">
				<li class="fieldcontain">
					<span id="cuilMedio-label" class="property-label"><g:message code="cliente.cuilMedio.label" default="Cuil Medio" /></span>
					
						<span class="property-value" aria-labelledby="cuilMedio-label"><g:fieldValue bean="${clienteInstance}" field="cuilMedio"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteInstance?.cuilUltimo}">
				<li class="fieldcontain">
					<span id="cuilUltimo-label" class="property-label"><g:message code="cliente.cuilUltimo.label" default="Cuil Ultimo" /></span>
					
						<span class="property-value" aria-labelledby="cuilUltimo-label"><g:fieldValue bean="${clienteInstance}" field="cuilUltimo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteInstance?.cuil}">
				<li class="fieldcontain">
					<span id="cuil-label" class="property-label"><g:message code="cliente.cuil.label" default="Cuil" /></span>
					
						<span class="property-value" aria-labelledby="cuil-label"><g:fieldValue bean="${clienteInstance}" field="cuil"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteInstance?.calle}">
				<li class="fieldcontain">
					<span id="calle-label" class="property-label"><g:message code="cliente.calle.label" default="Calle" /></span>
					
						<span class="property-value" aria-labelledby="calle-label"><g:fieldValue bean="${clienteInstance}" field="calle"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteInstance?.calleNro}">
				<li class="fieldcontain">
					<span id="calleNro-label" class="property-label"><g:message code="cliente.calleNro.label" default="Calle Nro" /></span>
					
						<span class="property-value" aria-labelledby="calleNro-label"><g:fieldValue bean="${clienteInstance}" field="calleNro"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteInstance?.localidad}">
				<li class="fieldcontain">
					<span id="localidad-label" class="property-label"><g:message code="cliente.localidad.label" default="Localidad" /></span>
					
						<span class="property-value" aria-labelledby="localidad-label"><g:fieldValue bean="${clienteInstance}" field="localidad"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteInstance?.codigoPostal}">
				<li class="fieldcontain">
					<span id="codigoPostal-label" class="property-label"><g:message code="cliente.codigoPostal.label" default="Codigo Postal" /></span>
					
						<span class="property-value" aria-labelledby="codigoPostal-label"><g:fieldValue bean="${clienteInstance}" field="codigoPostal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteInstance?.provincia}">
				<li class="fieldcontain">
					<span id="provincia-label" class="property-label"><g:message code="cliente.provincia.label" default="Provincia" /></span>
					
						<span class="property-value" aria-labelledby="provincia-label"><g:fieldValue bean="${clienteInstance}" field="provincia"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteInstance?.estadoCivil}">
				<li class="fieldcontain">
					<span id="estadoCivil-label" class="property-label"><g:message code="cliente.estadoCivil.label" default="Estado Civil" /></span>
					
						<span class="property-value" aria-labelledby="estadoCivil-label"><g:fieldValue bean="${clienteInstance}" field="estadoCivil"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteInstance?.telContactoCodArea}">
				<li class="fieldcontain">
					<span id="telContactoCodArea-label" class="property-label"><g:message code="cliente.telContactoCodArea.label" default="Tel Contacto Cod Area" /></span>
					
						<span class="property-value" aria-labelledby="telContactoCodArea-label"><g:fieldValue bean="${clienteInstance}" field="telContactoCodArea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteInstance?.telContactoNro}">
				<li class="fieldcontain">
					<span id="telContactoNro-label" class="property-label"><g:message code="cliente.telContactoNro.label" default="Tel Contacto Nro" /></span>
					
						<span class="property-value" aria-labelledby="telContactoNro-label"><g:fieldValue bean="${clienteInstance}" field="telContactoNro"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteInstance?.causas}">
				<li class="fieldcontain">
					<span id="causas-label" class="property-label"><g:message code="cliente.causas.label" default="Causas" /></span>
					
						<g:each in="${clienteInstance.causas}" var="c">
						<span class="property-value" aria-labelledby="causas-label"><g:link controller="causa" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${clienteInstance?.fechaCreacion}">
				<li class="fieldcontain">
					<span id="fechaCreacion-label" class="property-label"><g:message code="cliente.fechaCreacion.label" default="Fecha Creacion" /></span>
					
						<span class="property-value" aria-labelledby="fechaCreacion-label"><g:formatDate date="${clienteInstance?.fechaCreacion}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:clienteInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${clienteInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
