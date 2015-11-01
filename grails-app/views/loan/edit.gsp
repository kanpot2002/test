<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="main">
	<g:set var="entityName" value="${message(code: 'user.label', default: 'Loan')}" />
	<title><g:message code="default.create.label" args="[entityName]" /></title>
</head>
<body>
<div class="row">
	<div id="breadcrumb" class="col-md-12">
		<ol class="breadcrumb">
			<li><g:link class="list" action="addLoan">สัญญาเงินกู้</g:link></li>
			<li><a href="#">แก้ไขข้อมูลสัญญาเงินกู้</a></li>
		</ol>
	</div>
</div>
<div class="well">
	<div class="content scaffold-create" role="main">
		<g:form class="form-horizontal" action="update">
			<h1 class="page-header">แก้ไขข้อมูลสัญญาเงินกู้</h1>
			<g:render template="infoForm"/>
			<br/>
			<g:render template="form"/>
			<br/>
			<div align="center">
				<g:submitButton name="update" class="btn btn-primary btn-label-left" value="${message(code: 'default.button.update.label', default: 'Update')}" />
				<a href="./editLoan" class="btn btn-danger btn-label-left" style="margin-left: 20px">Cancel</a>
			</div>
		</g:form>
	</div>
</div>
</body>
</html>