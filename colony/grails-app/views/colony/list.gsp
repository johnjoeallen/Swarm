
<%@ page import="colony.Colony" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'colony.label', default: 'Colony')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-colony" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-colony" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="created" title="${message(code: 'colony.created.label', default: 'Created')}" />
					
						<g:sortableColumn property="open" title="${message(code: 'colony.open.label', default: 'Open')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'colony.name.label', default: 'Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${colonyInstanceList}" status="i" var="colonyInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${colonyInstance.id}">${fieldValue(bean: colonyInstance, field: "created")}</g:link></td>
					
						<td><g:formatBoolean boolean="${colonyInstance.open}" /></td>
					
						<td>${fieldValue(bean: colonyInstance, field: "name")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${colonyInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
