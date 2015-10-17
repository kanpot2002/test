<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="content" class="col-sm-12">
			<div class="row">
				<div id="breadcrumb" class="col-md-12">
					<ol class="breadcrumb">
						<li><g:link class="list" action="index">จัดการ User</g:link></li>
						<li><a href="#">สร้าง User</a></li>
					</ol>
				</div>
			</div>
			<div class="well">
				<div id="create-user" class="content scaffold-create" role="main">
					<h1 class="page-header">สร้าง User</h1>
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
					<g:form url="[resource:userInstance, action:'save']" >
						<fieldset class="form">
							<g:render template="form"/>
						</fieldset>
						<fieldset class="buttons">
							<g:submitButton name="create" class="btn btn-primary btn-label-left" value="${message(code: 'default.button.create.label', default: 'Create')}" />
						</fieldset>
					</g:form>
				</div>
			</div>
		</div>
	</body>
</html>
