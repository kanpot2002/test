<%@ page import="com.setnewscoop.UserRole; com.setnewscoop.User" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>
<body>
    <div id="content" class="col-sm-12">
        <div class="row">
            <div id="breadcrumb" class="col-md-12">
                <ol class="breadcrumb">
                    <li><g:link class="list" action="index">จัดการ User</g:link></li>
                    <li><a href="#">รายการ User</a></li>
                </ol>
            </div>
        </div>
        <div class="well">
            <div id="list-user" class="content scaffold-list" role="main">
                <h1 class="page-header">รายการ User</h1>
                <div class="row">
                    <div class="col-sm-6">
                        <div class="dataTables_filter"  id="datatable-1_filter">
                            <label>
                                <input class="form-control" type="text" aria-controls="datatable-1" placeholder="Search">
                            </label>
                        </div>
                    </div>
                </div>
                <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                </g:if>
                <table class="table table-bordered table-striped table-hover table-heading table-datatable dataTable">
                    <thead>
                    <tr>

                        <g:sortableColumn property="username"
                                          title="${message(code: 'user.username.label', default: 'Username')}"/>

                        <g:sortableColumn property="password"
                                          title="${message(code: 'user.password.label', default: 'Password')}"/>

                        <g:sortableColumn property="accountExpired"
                                          title="${message(code: 'user.accountExpired.label', default: 'Account Expired')}"/>

                        <g:sortableColumn property="accountLocked"
                                          title="${message(code: 'user.accountLocked.label', default: 'Account Locked')}"/>

                        <g:sortableColumn property="enabled"
                                          title="${message(code: 'user.enabled.label', default: 'Enabled')}"/>

                        <g:sortableColumn property="passwordExpired"
                                          title="${message(code: 'user.passwordExpired.label', default: 'Password Expired')}"/>

                        <th>Role</th>
                    </tr>
                    </thead>
                    <tbody>
                    <g:each in="${userInstanceList}" status="i" var="userInstance">
                        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                            <td><g:link action="show"
                                        id="${userInstance.id}">${fieldValue(bean: userInstance, field: "username")}</g:link></td>

                            <td>${fieldValue(bean: userInstance, field: "password")}</td>

                            <td><g:formatBoolean boolean="${userInstance.accountExpired}"/></td>

                            <td><g:formatBoolean boolean="${userInstance.accountLocked}"/></td>

                            <td><g:formatBoolean boolean="${userInstance.enabled}"/></td>

                            <td><g:formatBoolean boolean="${userInstance.passwordExpired}"/></td>

                            <td>${com.setnewscoop.UserRole.findAllByUser(userInstance)*.role.toString()}</td>
                        </tr>
                    </g:each>
                    </tbody>
                </table>

                <div class="pagination">
                    <g:paginate total="${userInstanceCount ?: 0}"/>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
