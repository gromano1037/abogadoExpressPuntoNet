
<%@ page import="abogadoexpresspuntonet.Causa" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'causa.label', default: 'Causa')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-causa" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
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
	</body>
</html>
