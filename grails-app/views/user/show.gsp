
<%@ page import="com.setnewscoop.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
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
				<div id="show-user" class="content scaffold-show" role="main">
					<h1 class="page-header">แสดงข้อมูล User</h1>
					<g:if test="${flash.message}">
						<div class="alert alert-info" role="alert">${flash.message}</div>
					</g:if>
					<table class="table">
						<g:if test="${userInstance?.username}">
						<tr>
							<td><span id="username-label" class="property-label"><g:message code="user.username.label" default="Username" /></span></td>
							<td><span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${userInstance}" field="username"/></span></td>
						</tr>
						</g:if>
						<g:if test="${userInstance?.password}">
							<tr>
								<td><span id="password-label" class="property-label"><g:message code="user.password.label" default="Password" /></span></td>
								<td><span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${userInstance}" field="password"/></span></td>
							</tr>
						</g:if>
						<g:if test="${userInstance?.accountExpired}">
							<tr>
								<td><span id="accountExpired-label" class="property-label"><g:message code="user.accountExpired.label" default="Account Expired" /></span></td>
								<td><span class="property-value" aria-labelledby="accountExpired-label"><g:formatBoolean boolean="${userInstance?.accountExpired}" /></span></td>
							</tr>
						</g:if>
						<g:if test="${userInstance?.accountLocked}">
							<tr>
								<td><span id="accountLocked-label" class="property-label"><g:message code="user.accountLocked.label" default="Account Locked" /></span></td>
								<td><span class="property-value" aria-labelledby="accountLocked-label"><g:formatBoolean boolean="${userInstance?.accountLocked}" /></span></td>
							</tr>
						</g:if>
						<g:if test="${userInstance?.enabled}">
							<tr>
								<td><span id="enabled-label" class="property-label"><g:message code="user.enabled.label" default="Enabled" /></span></td>
								<td><span class="property-value" aria-labelledby="enabled-label"><g:formatBoolean boolean="${userInstance?.enabled}" /></span></td>
							</tr>
						</g:if>

						<g:if test="${userInstance?.passwordExpired}">
							<tr>
								<td><span id="passwordExpired-label" class="property-label"><g:message code="user.passwordExpired.label" default="Password Expired" /></span></td>
								<td><span class="property-value" aria-labelledby="passwordExpired-label"><g:formatBoolean boolean="${userInstance?.passwordExpired}" /></span></td>
							</tr>
						</g:if>
						<tr>
							<td><span id="role-label" class="property-label"><g:message code="user.role.label" default="Role" /></span></td>
							<td><span class="property-value" aria-labelledby="passwordExpired-label">${com.setnewscoop.UserRole.findAllByUser(userInstance)*.role.toString()}</span></td>
						</tr>
					</table>
					<g:form url="[resource:userInstance, action:'delete']" method="POST">
						<fieldset class="buttons">
							<g:link class="btn btn-warning btn-label-left" action="edit" resource="${userInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
							<g:actionSubmit class="btn btn-danger btn-label-left" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'คุณแน่ใจที่ลบใช่หรือไม่?')}');" />
						</fieldset>
					</g:form>
				</div>
			</div>
		</div>
	</body>
</html>
