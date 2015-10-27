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
                <li><a href="#">เพิ่มข้อมูลสัญญาเงินกู้</a></li>
            </ol>
        </div>
    </div>
    <div class="well">
        <div class="content scaffold-create" role="main">
            <h1 class="page-header">เพิ่มข้อมูลสัญญาเงินกู้</h1>
            <div>
                <p align="center" class="lead">ค้นหาข้อมูลสมาชิก</p>
                <g:if test="${errCode}">
                    <g:set var="code" value="loan.errorcode.create.${errCode}"/>
                    <div class="alert alert-danger" role="alert">${message(code: code)}</div>
                </g:if>
                <g:form action="create" class="form-horizontal">
                    <div class="form-group">
                        <label class="col-sm-offset-1 col-sm-2 control-label">รหัสสมาชิกสหกรณ์</label>
                        <div class="col-sm-3">
                            <g:textField class="form-control" name="id_member" value=""/>
                        </div>
                        <label class="col-sm-2 control-label">รหัสพนักงาน</label>
                        <div class="col-sm-3">
                            <g:textField class="form-control" name="id_employee" value=""/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-offset-1 col-sm-2 control-label">ชื่อ</label>
                        <div class="col-sm-3">
                            <g:textField class="form-control" name="first_name" value=""/>
                        </div>
                        <label class="col-sm-2 control-label">นามสกุล</label>
                        <div class="col-sm-3">
                            <g:textField class="form-control" name="last_name" value=""/>
                        </div>
                    </div>
                    <div class="col-sm-offset-6">
                        <g:submitButton name="submit" class="btn btn-primary btn-label-left" value="Submit" />
                    </div>
                </g:form>
            </div>
        </div>
    </div>
</body>
</html>