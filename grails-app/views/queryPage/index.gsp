<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>
<body>
<div class="row">
    <div id="breadcrumb" class="col-md-12">
        <ol class="breadcrumb">
            <li><a href="#">Query Page</a></li>
        </ol>
    </div>
</div>
<div class="well">
    <h1 class="page-header">Query ข้อมูล</h1>
    <div class="content scaffold-create" role="main">
    <g:if test="${errCode}">
        <g:set var="code" value="user.errorcode.querypage.${errCode}"/>
        <g:if test="${errCode=='1000'}">
            <div class="alert alert-success" role="alert">${message(code: code)}</div>
        </g:if>
        <g:else>
            <div class="alert alert-danger" role="alert">${message(code: code)}</div>
        </g:else>
    </g:if>
    <g:form  action="query">
        <fieldset class="form">
            <div class="form-group">
                <label class="control-label" for="queryString">ค้นหาข้อมูล</label>
                <g:textArea rows="5" cols="40"  class="form-control" name="queryString" value="${queryString?queryString:""}"/>
            </div>
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="query" class="btn btn-primary btn-label-left" value="Query" />
        </fieldset>
    </g:form>
    <g:if test="${columnNameList && resultData}">
        <div class="table-responsive">
            <table class="table table-bordered table-striped table-hover table-heading table-datatable dataTable">
                <tr>
                    <g:each in="${columnNameList}" var="column">
                        <th>${column}</th>
                    </g:each>
                </tr>
                <g:each in="${resultData}" var="row">
                <tr>
                    <g:each in="${row}" var="data">
                        <td>${data}</td>
                    </g:each>
                </tr>
                </g:each>
            </table>
        </div>
    </g:if>
    </div>
</div>
</body>
</html>