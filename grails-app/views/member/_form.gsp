<%@ page import="com.setnewscoop.Member" %>



<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'a_address1', 'error')} required">
    <label for="a_address1">
        <g:message code="member.a_address1.label" default="Aaddress1"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="a_address1" required="" value="${memberInstance?.a_address1}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'a_address2', 'error')} required">
    <label for="a_address2">
        <g:message code="member.a_address2.label" default="Aaddress2"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="a_address2" required="" value="${memberInstance?.a_address2}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'd_birth', 'error')} required">
    <label for="d_birth">
        <g:message code="member.d_birth.label" default="Dbirth"/>
        <span class="required-indicator">*</span>
    </label>
    <g:datePicker name="d_birth" precision="day" value="${memberInstance?.d_birth}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'd_expired', 'error')} required">
    <label for="d_expired">
        <g:message code="member.d_expired.label" default="Dexpired"/>
        <span class="required-indicator">*</span>
    </label>
    <g:datePicker name="d_expired" precision="day" value="${memberInstance?.d_expired}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'd_member', 'error')} required">
    <label for="d_member">
        <g:message code="member.d_member.label" default="Dmember"/>
        <span class="required-indicator">*</span>
    </label>
    <g:datePicker name="d_member" precision="day" value="${memberInstance?.d_member}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'e_dep', 'error')} required">
    <label for="e_dep">
        <g:message code="member.e_dep.label" default="Edep"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="e_dep" required="" value="${memberInstance?.e_dep}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'e_div', 'error')} required">
    <label for="e_div">
        <g:message code="member.e_div.label" default="Ediv"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="e_div" required="" value="${memberInstance?.e_div}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'e_off_tel', 'error')} required">
    <label for="e_off_tel">
        <g:message code="member.e_off_tel.label" default="Eofftel"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="e_off_tel" required="" value="${memberInstance?.e_off_tel}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'e_position', 'error')} required">
    <label for="e_position">
        <g:message code="member.e_position.label" default="Eposition"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="e_position" required="" value="${memberInstance?.e_position}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'e_status', 'error')} required">
    <label for="e_status">
        <g:message code="member.e_status.label" default="Estatus"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="e_status" required="" value="${memberInstance?.e_status}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'e_tel', 'error')} required">
    <label for="e_tel">
        <g:message code="member.e_tel.label" default="Etel"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="e_tel" required="" value="${memberInstance?.e_tel}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'f_status', 'error')} required">
    <label for="f_status">
        <g:message code="member.f_status.label" default="Fstatus"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="f_status" type="number" value="${memberInstance.f_status}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'i_employee', 'error')} required">
    <label for="i_employee">
        <g:message code="member.i_employee.label" default="Iemployee"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="i_employee" type="number" value="${memberInstance.i_employee}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'm_share', 'error')} required">
    <label for="m_share">
        <g:message code="member.m_share.label" default="Mshare"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="m_share" value="${fieldValue(bean: memberInstance, field: 'm_share')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'm_tot_share', 'error')} required">
    <label for="m_tot_share">
        <g:message code="member.m_tot_share.label" default="Mtotshare"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="m_tot_share" value="${fieldValue(bean: memberInstance, field: 'm_tot_share')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'n_company', 'error')} required">
    <label for="n_company">
        <g:message code="member.n_company.label" default="Ncompany"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="n_company" required="" value="${memberInstance?.n_company}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'n_first', 'error')} required">
    <label for="n_first">
        <g:message code="member.n_first.label" default="Nfirst"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="n_first" required="" value="${memberInstance?.n_first}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'n_last', 'error')} required">
    <label for="n_last">
        <g:message code="member.n_last.label" default="Nlast"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="n_last" required="" value="${memberInstance?.n_last}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'n_title', 'error')} required">
    <label for="n_title">
        <g:message code="member.n_title.label" default="Ntitle"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="n_title" required="" value="${memberInstance?.n_title}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'q_time', 'error')} required">
    <label for="q_time">
        <g:message code="member.q_time.label" default="Qtime"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="q_time" type="number" value="${memberInstance.q_time}" required=""/>

</div>

