<%@ page import="com.setnewscoop.Member" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'member.label', default: 'Member')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-member" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                             default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-member" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="a_address1"
                              title="${message(code: 'member.a_address1.label', default: 'Aaddress1')}"/>

            <g:sortableColumn property="a_address2"
                              title="${message(code: 'member.a_address2.label', default: 'Aaddress2')}"/>

            <g:sortableColumn property="d_birth" title="${message(code: 'member.d_birth.label', default: 'Dbirth')}"/>

            <g:sortableColumn property="d_expired"
                              title="${message(code: 'member.d_expired.label', default: 'Dexpired')}"/>

            <g:sortableColumn property="d_member"
                              title="${message(code: 'member.d_member.label', default: 'Dmember')}"/>

            <g:sortableColumn property="e_dep" title="${message(code: 'member.e_dep.label', default: 'Edep')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${memberInstanceList}" status="i" var="memberInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${memberInstance.id}">${fieldValue(bean: memberInstance, field: "a_address1")}</g:link></td>

                <td>${fieldValue(bean: memberInstance, field: "a_address2")}</td>

                <td><g:formatDate date="${memberInstance.d_birth}"/></td>

                <td><g:formatDate date="${memberInstance.d_expired}"/></td>

                <td><g:formatDate date="${memberInstance.d_member}"/></td>

                <td>${fieldValue(bean: memberInstance, field: "e_dep")}</td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${memberInstanceCount ?: 0}"/>
    </div>
</div>
</body>
</html>
