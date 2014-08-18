<%@ page import="abogadoexpresspuntonet.Cliente" %>



<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'dni', 'error')} required">
	<label for="dni">
		<g:message code="cliente.dni.label" default="Dni" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="dni" type="number" value="${clienteInstance.dni}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'apellido', 'error')} required">
	<label for="apellido">
		<g:message code="cliente.apellido.label" default="Apellido" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellido" maxlength="20" required="" value="${clienteInstance?.apellido}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="cliente.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" maxlength="20" required="" value="${clienteInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'empresa', 'error')} required">
	<label for="empresa">
		<g:message code="cliente.empresa.label" default="Empresa" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="empresa" maxlength="20" required="" value="${clienteInstance?.empresa}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="cliente.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" maxlength="40" required="" value="${clienteInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'cuilPrimer', 'error')} required">
	<label for="cuilPrimer">
		<g:message code="cliente.cuilPrimer.label" default="Cuil Primer" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cuilPrimer" type="number" value="${clienteInstance.cuilPrimer}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'cuilMedio', 'error')} required">
	<label for="cuilMedio">
		<g:message code="cliente.cuilMedio.label" default="Cuil Medio" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cuilMedio" type="number" value="${clienteInstance.cuilMedio}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'cuilUltimo', 'error')} required">
	<label for="cuilUltimo">
		<g:message code="cliente.cuilUltimo.label" default="Cuil Ultimo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cuilUltimo" type="number" value="${clienteInstance.cuilUltimo}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'cuil', 'error')} required">
	<label for="cuil">
		<g:message code="cliente.cuil.label" default="Cuil" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cuil" pattern="${clienteInstance.constraints.cuil.matches}" required="" value="${clienteInstance?.cuil}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'calle', 'error')} required">
	<label for="calle">
		<g:message code="cliente.calle.label" default="Calle" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="calle" maxlength="30" required="" value="${clienteInstance?.calle}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'calleNro', 'error')} required">
	<label for="calleNro">
		<g:message code="cliente.calleNro.label" default="Calle Nro" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="calleNro" type="number" value="${clienteInstance.calleNro}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'localidad', 'error')} required">
	<label for="localidad">
		<g:message code="cliente.localidad.label" default="Localidad" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="localidad" maxlength="30" required="" value="${clienteInstance?.localidad}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'codigoPostal', 'error')} required">
	<label for="codigoPostal">
		<g:message code="cliente.codigoPostal.label" default="Codigo Postal" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="codigoPostal" type="number" value="${clienteInstance.codigoPostal}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'provincia', 'error')} required">
	<label for="provincia">
		<g:message code="cliente.provincia.label" default="Provincia" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="provincia" from="${clienteInstance.constraints.provincia.inList}" required="" value="${clienteInstance?.provincia}" valueMessagePrefix="cliente.provincia"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'estadoCivil', 'error')} required">
	<label for="estadoCivil">
		<g:message code="cliente.estadoCivil.label" default="Estado Civil" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="estadoCivil" from="${clienteInstance.constraints.estadoCivil.inList}" required="" value="${clienteInstance?.estadoCivil}" valueMessagePrefix="cliente.estadoCivil"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'telContactoCodArea', 'error')} required">
	<label for="telContactoCodArea">
		<g:message code="cliente.telContactoCodArea.label" default="Tel Contacto Cod Area" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="telContactoCodArea" type="number" value="${clienteInstance.telContactoCodArea}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'telContactoNro', 'error')} required">
	<label for="telContactoNro">
		<g:message code="cliente.telContactoNro.label" default="Tel Contacto Nro" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="telContactoNro" type="number" value="${clienteInstance.telContactoNro}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'causas', 'error')} ">
	<label for="causas">
		<g:message code="cliente.causas.label" default="Causas" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${clienteInstance?.causas?}" var="c">
    <li><g:link controller="causa" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="causa" action="create" params="['cliente.id': clienteInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'causa.label', default: 'Causa')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'fechaCreacion', 'error')} required">
	<label for="fechaCreacion">
		<g:message code="cliente.fechaCreacion.label" default="Fecha Creacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaCreacion" precision="day"  value="${clienteInstance?.fechaCreacion}"  />

</div>

