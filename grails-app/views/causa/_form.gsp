<%@ page import="abogadoexpresspuntonet.Causa" %>



<div class="fieldcontain ${hasErrors(bean: causaInstance, field: 'caratula', 'error')} required">
	<label for="caratula">
		<g:message code="causa.caratula.label" default="Caratula" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="caratula" maxlength="30" required="" value="${causaInstance?.caratula}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: causaInstance, field: 'descripcion', 'error')} required">
	<label for="descripcion">
		<g:message code="causa.descripcion.label" default="Descripcion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descripcion" maxlength="90" required="" value="${causaInstance?.descripcion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: causaInstance, field: 'tipo', 'error')} required">
	<label for="tipo">
		<g:message code="causa.tipo.label" default="Tipo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="tipo" from="${causaInstance.constraints.tipo.inList}" required="" value="${causaInstance?.tipo}" valueMessagePrefix="causa.tipo"/>

</div>

<div class="fieldcontain ${hasErrors(bean: causaInstance, field: 'estado', 'error')} required">
	<label for="estado">
		<g:message code="causa.estado.label" default="Estado" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="estado" from="${causaInstance.constraints.estado.inList}" required="" value="${causaInstance?.estado}" valueMessagePrefix="causa.estado"/>

</div>

<div class="fieldcontain ${hasErrors(bean: causaInstance, field: 'fechaCreacion', 'error')} required">
	<label for="fechaCreacion">
		<g:message code="causa.fechaCreacion.label" default="Fecha Creacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaCreacion" precision="day"  value="${causaInstance?.fechaCreacion}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: causaInstance, field: 'cliente', 'error')} required">
	<label for="cliente">
		<g:message code="causa.cliente.label" default="Cliente" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="cliente" name="cliente.id" from="${abogadoexpresspuntonet.Cliente.list()}" optionKey="id" required="" value="${causaInstance?.cliente?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: causaInstance, field: 'expediente', 'error')} required">
	<label for="expediente">
		<g:message code="causa.expediente.label" default="Expediente" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="expediente" type="number" value="${causaInstance.expediente}" required=""/>

</div>

