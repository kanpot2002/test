<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 17/10/2558
  Time: 17:07
--%>

<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
    <title><g:message code="default.create.label" args="[entityName]" /></title>
</head>
<body>
    <div class="row">
        <div id="breadcrumb" class="col-md-12">
            <ol class="breadcrumb">
                <li><a href="#">เปลี่ยนรหัสผ่าน</a></li>
            </ol>
        </div>
    </div>
    <div class="well">
        <h1 class="page-header">เปลี่ยนรหัสผ่าน</h1>
        <g:if test="${errorCode!=''}">
            <g:if test="${errorCode=='0000'}">
                <div class="alert alert-success" role="alert">
            </g:if>
            <g:else>
                <div class="alert alert-danger" role="alert">
            </g:else>
                    <g:set var="showCode" value="user.errorcode.${errorCode}"/>
                    ${message(code: showCode, default: "")}
                </div>
        </g:if>
        <g:form url="[resource:userInstance, action:'changePassword']" >
            <div class="row form-group">
                <label class="col-sm-2 control-label" for="newPassword">
                    รหัสผ่านใหม่ :
                </label>
                <div class="col-sm-4">
                    <g:textField class="form-control" name="newPassword" required="" value="${newPassword}"/>
                </div>
            </div>
            <div class="row form-group">
                <label class="col-sm-2 control-label" for="confirmPassword">
                    ยืนยันรหัสผ่าน :
                </label>
                <div class="col-sm-4">
                    <g:textField class="form-control" name="confirmPassword" required="" value=""/>
                </div>
            </div>
            <fieldset class="buttons">
                <g:submitButton name="create" class="btn btn-primary btn-label-left" value="Save" />
            </fieldset>
        </g:form>
    </div>
</body>
</html>