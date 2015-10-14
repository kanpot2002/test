<%@ page import="com.setnewscoop.Member" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'member.label', default: 'Member')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-member" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                             default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-member" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list member">

        <g:if test="${memberInstance?.a_address1}">
            <li class="fieldcontain">
                <span id="a_address1-label" class="property-label"><g:message code="member.a_address1.label"
                                                                              default="Aaddress1"/></span>

                <span class="property-value" aria-labelledby="a_address1-label"><g:fieldValue bean="${memberInstance}"
                                                                                              field="a_address1"/></span>

            </li>
        </g:if>

        <g:if test="${memberInstance?.a_address2}">
            <li class="fieldcontain">
                <span id="a_address2-label" class="property-label"><g:message code="member.a_address2.label"
                                                                              default="Aaddress2"/></span>

                <span class="property-value" aria-labelledby="a_address2-label"><g:fieldValue bean="${memberInstance}"
                                                                                              field="a_address2"/></span>

            </li>
        </g:if>

        <g:if test="${memberInstance?.d_birth}">
            <li class="fieldcontain">
                <span id="d_birth-label" class="property-label"><g:message code="member.d_birth.label"
                                                                           default="Dbirth"/></span>

                <span class="property-value" aria-labelledby="d_birth-label"><g:formatDate
                        date="${memberInstance?.d_birth}"/></span>

            </li>
        </g:if>

        <g:if test="${memberInstance?.d_expired}">
            <li class="fieldcontain">
                <span id="d_expired-label" class="property-label"><g:message code="member.d_expired.label"
                                                                             default="Dexpired"/></span>

                <span class="property-value" aria-labelledby="d_expired-label"><g:formatDate
                        date="${memberInstance?.d_expired}"/></span>

            </li>
        </g:if>

        <g:if test="${memberInstance?.d_member}">
            <li class="fieldcontain">
                <span id="d_member-label" class="property-label"><g:message code="member.d_member.label"
                                                                            default="Dmember"/></span>

                <span class="property-value" aria-labelledby="d_member-label"><g:formatDate
                        date="${memberInstance?.d_member}"/></span>

            </li>
        </g:if>

        <g:if test="${memberInstance?.e_dep}">
            <li class="fieldcontain">
                <span id="e_dep-label" class="property-label"><g:message code="member.e_dep.label"
                                                                         default="Edep"/></span>

                <span class="property-value" aria-labelledby="e_dep-label"><g:fieldValue bean="${memberInstance}"
                                                                                         field="e_dep"/></span>

            </li>
        </g:if>

        <g:if test="${memberInstance?.e_div}">
            <li class="fieldcontain">
                <span id="e_div-label" class="property-label"><g:message code="member.e_div.label"
                                                                         default="Ediv"/></span>

                <span class="property-value" aria-labelledby="e_div-label"><g:fieldValue bean="${memberInstance}"
                                                                                         field="e_div"/></span>

            </li>
        </g:if>

        <g:if test="${memberInstance?.e_off_tel}">
            <li class="fieldcontain">
                <span id="e_off_tel-label" class="property-label"><g:message code="member.e_off_tel.label"
                                                                             default="Eofftel"/></span>

                <span class="property-value" aria-labelledby="e_off_tel-label"><g:fieldValue bean="${memberInstance}"
                                                                                             field="e_off_tel"/></span>

            </li>
        </g:if>

        <g:if test="${memberInstance?.e_position}">
            <li class="fieldcontain">
                <span id="e_position-label" class="property-label"><g:message code="member.e_position.label"
                                                                              default="Eposition"/></span>

                <span class="property-value" aria-labelledby="e_position-label"><g:fieldValue bean="${memberInstance}"
                                                                                              field="e_position"/></span>

            </li>
        </g:if>

        <g:if test="${memberInstance?.e_status}">
            <li class="fieldcontain">
                <span id="e_status-label" class="property-label"><g:message code="member.e_status.label"
                                                                            default="Estatus"/></span>

                <span class="property-value" aria-labelledby="e_status-label"><g:fieldValue bean="${memberInstance}"
                                                                                            field="e_status"/></span>

            </li>
        </g:if>

        <g:if test="${memberInstance?.e_tel}">
            <li class="fieldcontain">
                <span id="e_tel-label" class="property-label"><g:message code="member.e_tel.label"
                                                                         default="Etel"/></span>

                <span class="property-value" aria-labelledby="e_tel-label"><g:fieldValue bean="${memberInstance}"
                                                                                         field="e_tel"/></span>

            </li>
        </g:if>

        <g:if test="${memberInstance?.f_status}">
            <li class="fieldcontain">
                <span id="f_status-label" class="property-label"><g:message code="member.f_status.label"
                                                                            default="Fstatus"/></span>

                <span class="property-value" aria-labelledby="f_status-label"><g:fieldValue bean="${memberInstance}"
                                                                                            field="f_status"/></span>

            </li>
        </g:if>

        <g:if test="${memberInstance?.i_employee}">
            <li class="fieldcontain">
                <span id="i_employee-label" class="property-label"><g:message code="member.i_employee.label"
                                                                              default="Iemployee"/></span>

                <span class="property-value" aria-labelledby="i_employee-label"><g:fieldValue bean="${memberInstance}"
                                                                                              field="i_employee"/></span>

            </li>
        </g:if>

        <g:if test="${memberInstance?.m_share}">
            <li class="fieldcontain">
                <span id="m_share-label" class="property-label"><g:message code="member.m_share.label"
                                                                           default="Mshare"/></span>

                <span class="property-value" aria-labelledby="m_share-label"><g:fieldValue bean="${memberInstance}"
                                                                                           field="m_share"/></span>

            </li>
        </g:if>

        <g:if test="${memberInstance?.m_tot_share}">
            <li class="fieldcontain">
                <span id="m_tot_share-label" class="property-label"><g:message code="member.m_tot_share.label"
                                                                               default="Mtotshare"/></span>

                <span class="property-value" aria-labelledby="m_tot_share-label"><g:fieldValue bean="${memberInstance}"
                                                                                               field="m_tot_share"/></span>

            </li>
        </g:if>

        <g:if test="${memberInstance?.n_company}">
            <li class="fieldcontain">
                <span id="n_company-label" class="property-label"><g:message code="member.n_company.label"
                                                                             default="Ncompany"/></span>

                <span class="property-value" aria-labelledby="n_company-label"><g:fieldValue bean="${memberInstance}"
                                                                                             field="n_company"/></span>

            </li>
        </g:if>

        <g:if test="${memberInstance?.n_first}">
            <li class="fieldcontain">
                <span id="n_first-label" class="property-label"><g:message code="member.n_first.label"
                                                                           default="Nfirst"/></span>

                <span class="property-value" aria-labelledby="n_first-label"><g:fieldValue bean="${memberInstance}"
                                                                                           field="n_first"/></span>

            </li>
        </g:if>

        <g:if test="${memberInstance?.n_last}">
            <li class="fieldcontain">
                <span id="n_last-label" class="property-label"><g:message code="member.n_last.label"
                                                                          default="Nlast"/></span>

                <span class="property-value" aria-labelledby="n_last-label"><g:fieldValue bean="${memberInstance}"
                                                                                          field="n_last"/></span>

            </li>
        </g:if>

        <g:if test="${memberInstance?.n_title}">
            <li class="fieldcontain">
                <span id="n_title-label" class="property-label"><g:message code="member.n_title.label"
                                                                           default="Ntitle"/></span>

                <span class="property-value" aria-labelledby="n_title-label"><g:fieldValue bean="${memberInstance}"
                                                                                           field="n_title"/></span>

            </li>
        </g:if>

        <g:if test="${memberInstance?.q_time}">
            <li class="fieldcontain">
                <span id="q_time-label" class="property-label"><g:message code="member.q_time.label"
                                                                          default="Qtime"/></span>

                <span class="property-value" aria-labelledby="q_time-label"><g:fieldValue bean="${memberInstance}"
                                                                                          field="q_time"/></span>

            </li>
        </g:if>

    </ol>
    <g:form url="[resource: memberInstance, action: 'delete']" method="DELETE">
        <fieldset class="buttons">
            <g:link class="edit" action="edit" resource="${memberInstance}"><g:message code="default.button.edit.label"
                                                                                       default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
