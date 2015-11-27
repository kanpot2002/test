<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="main">
	<g:set var="entityName" value="${message(code: 'user.label', default: 'Loan')}" />
	<title><g:message code="default.create.label" args="[entityName]" /></title>
</head>
<body>
<g:if test="${cancelFlag=='true'}">
	<g:set var="actionPage" value="cancel"/>
	<g:set var="title" value="ยกเลิกสัญญาเงินกู้"/>
</g:if>
<g:else>
	<g:set var="actionPage" value="update"/>
	<g:set var="title" value="แก้ไขข้อมูลสัญญาเงินกู้"/>
</g:else>
<div class="row">
	<div id="breadcrumb" class="col-md-12">
		<ol class="breadcrumb">
			<li><g:link class="list" action="addLoan">สัญญาเงินกู้</g:link></li>
			<li><a href="#">${title}</a></li>
		</ol>
	</div>
</div>
<div class="well">
	<div class="content scaffold-create" role="main">
		<g:form class="form-horizontal" action="${actionPage}">
			<h1 class="page-header">${title}</h1>
			<g:render template="infoForm"/>
			<br/>
			<g:render template="form"/>
			<br/>
			<div align="center">
				<g:if test="${cancelFlag=='true'}">
					<g:submitButton name="update" class="btn btn-danger btn-label-left" value="${message(code: 'default.button.cancel.label', default: 'Submit')}" onclick="return confirm('${message(code: 'default.button.cancel.confirm.message', default: 'คุณแน่ใจที่ยกเลิกใช่หรือไม่?')}');" />
				</g:if>
				<g:else>
					<g:submitButton name="update" class="btn btn-primary btn-label-left" value="${message(code: 'default.button.update.label', default: 'Update')}" />
				</g:else>
				<a href="./editLoan" class="btn btn-primary btn-label-left" style="margin-left: 20px">${message(code: 'default.button.back.label', default: 'Back')}</a>
			</div>
		</g:form>
	</div>
</div>
</body>
</html>