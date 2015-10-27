
<%@ page import="com.setnewscoop.Loan" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'loan.label', default: 'Loan')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-loan" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-loan" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="d_begin" title="${message(code: 'loan.d_begin.label', default: 'Dbegin')}" />
					
						<g:sortableColumn property="d_close" title="${message(code: 'loan.d_close.label', default: 'Dclose')}" />
					
						<g:sortableColumn property="d_trans" title="${message(code: 'loan.d_trans.label', default: 'Dtrans')}" />
					
						<g:sortableColumn property="e_collateral" title="${message(code: 'loan.e_collateral.label', default: 'Ecollateral')}" />
					
						<g:sortableColumn property="e_reason" title="${message(code: 'loan.e_reason.label', default: 'Ereason')}" />
					
						<g:sortableColumn property="f_special" title="${message(code: 'loan.f_special.label', default: 'Fspecial')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${loanInstanceList}" status="i" var="loanInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${loanInstance.id}">${fieldValue(bean: loanInstance, field: "d_begin")}</g:link></td>
					
						<td><g:formatDate date="${loanInstance.d_close}" /></td>
					
						<td><g:formatDate date="${loanInstance.d_trans}" /></td>
					
						<td>${fieldValue(bean: loanInstance, field: "e_collateral")}</td>
					
						<td>${fieldValue(bean: loanInstance, field: "e_reason")}</td>
					
						<td><g:formatBoolean boolean="${loanInstance.f_special}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${loanInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
