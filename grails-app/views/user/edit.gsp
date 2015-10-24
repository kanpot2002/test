<%@ page import="com.setnewscoop.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="row">
			<div id="breadcrumb" class="col-md-12">
				<ol class="breadcrumb">
					<li><g:link class="list" action="index">จัดการ User</g:link></li>
					<li><a href="#">แก้ไข User</a></li>
				</ol>
			</div>
		</div>
		<div class="well">
			<div id="edit-user" class="content scaffold-edit" role="main">
				<h1 class="page-header">แก้ไข User</h1>
				<g:if test="${flash.message}">
				<div class="alert alert-info" role="alert">${flash.message}</div>
				</g:if>
				<g:hasErrors bean="${userInstance}">
				<ul class="errors" role="alert">
					<g:eachError bean="${userInstance}" var="error">
					<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
					</g:eachError>
				</ul>
				</g:hasErrors>
				<g:form url="[resource:userInstance, action:'update']" method="POST" >
					<g:hiddenField name="version" value="${userInstance?.version}" />
					<fieldset class="form">
						<g:render template="form"/>
					</fieldset>
					<fieldset class="buttons">
						<g:actionSubmit class="btn btn-primary btn-label-left" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
					</fieldset>
				</g:form>
			</div>
		</div>
	</body>
</html>
