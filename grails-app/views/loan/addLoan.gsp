<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'user.label', default: 'Loan')}" />
    <title><g:message code="default.create.label" args="[entityName]" /></title>
</head>
<body>
    <g:if test="${edit=='true'}">
        <g:set var="action" value="editLoan"/>
        <g:set var="labelPage" value="แก้ไขข้อมูลสัญญาเงินกู้"/>
    </g:if>
    <g:else>
        <g:set var="action" value="create"/>
        <g:set var="labelPage" value="เพิ่มข้อมูลสัญญาเงินกู้"/>
    </g:else>
    <div class="row">
        <div id="breadcrumb" class="col-md-12">
            <ol class="breadcrumb">
                <li><g:link class="list" action="addLoan">สัญญาเงินกู้</g:link></li>
                <li><a href="#">${labelPage}</a></li>
            </ol>
        </div>
    </div>
    <div class="well">
        <div class="content scaffold-create" role="main">
            <h1 class="page-header">${labelPage}</h1>
            <div>
                <p align="center" class="lead">ค้นหาข้อมูลสมาชิก</p>
                <g:if test="${errCode}">
                    <g:set var="code" value="loan.errorcode.create.${errCode}"/>
                    <g:if test="${errCode=='1000'}">
                        <div class="alert alert-success" role="alert">${message(code: code)}</div>
                    </g:if>
                    <g:else>
                        <div class="alert alert-danger" role="alert">${message(code: code)}</div>
                    </g:else>
                </g:if>
                <g:form action="${action}" class="form-horizontal">
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
            <br>
            <g:if test="${loans}">
            <div>
                <table class="table table-striped table-bordered table-hover table-heading no-border-bottom">
                    <thead>
                    <tr>
                        <th>เลขที่สัญญา</th>
                        <th>วันที่เริ่มคืนเงิน</th>
                        <th>วันที่ขอกู้เงิน</th>
                        <th>จำนวนเงินขอกู้เงินสหกรณ์</th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
                    <g:each in="${loans}" var="loan">
                    <tr>
                        <td>${loan.id}</td>
                        <td><g:formatDate format="dd/MM/yyyy" date="${loan.d_trans}"/></td>
                        <td><g:formatDate format="dd/MM/yyyy" date="${loan.d_trans}"/></td>
                        <td><g:formatNumber format="###,###,###.00" number="${loan.m_loan}"/></td>
                        <td><a class="btn btn-warning" href="./edit?id_loan=${loan.id}">แก้ไข</a></td>
                    </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            </g:if>
        </div>
    </div>
</body>
</html>