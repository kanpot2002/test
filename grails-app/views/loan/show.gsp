
<%@ page import="com.setnewscoop.Loan" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'loan.label', default: 'Loan')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-loan" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-loan" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list loan">
			
				<g:if test="${loanInstance?.d_begin}">
				<li class="fieldcontain">
					<span id="d_begin-label" class="property-label"><g:message code="loan.d_begin.label" default="Dbegin" /></span>
					
						<span class="property-value" aria-labelledby="d_begin-label"><g:formatDate date="${loanInstance?.d_begin}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${loanInstance?.d_close}">
				<li class="fieldcontain">
					<span id="d_close-label" class="property-label"><g:message code="loan.d_close.label" default="Dclose" /></span>
					
						<span class="property-value" aria-labelledby="d_close-label"><g:formatDate date="${loanInstance?.d_close}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${loanInstance?.d_trans}">
				<li class="fieldcontain">
					<span id="d_trans-label" class="property-label"><g:message code="loan.d_trans.label" default="Dtrans" /></span>
					
						<span class="property-value" aria-labelledby="d_trans-label"><g:formatDate date="${loanInstance?.d_trans}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${loanInstance?.e_collateral}">
				<li class="fieldcontain">
					<span id="e_collateral-label" class="property-label"><g:message code="loan.e_collateral.label" default="Ecollateral" /></span>
					
						<span class="property-value" aria-labelledby="e_collateral-label"><g:fieldValue bean="${loanInstance}" field="e_collateral"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${loanInstance?.e_reason}">
				<li class="fieldcontain">
					<span id="e_reason-label" class="property-label"><g:message code="loan.e_reason.label" default="Ereason" /></span>
					
						<span class="property-value" aria-labelledby="e_reason-label"><g:fieldValue bean="${loanInstance}" field="e_reason"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${loanInstance?.f_special}">
				<li class="fieldcontain">
					<span id="f_special-label" class="property-label"><g:message code="loan.f_special.label" default="Fspecial" /></span>
					
						<span class="property-value" aria-labelledby="f_special-label"><g:formatBoolean boolean="${loanInstance?.f_special}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${loanInstance?.f_status}">
				<li class="fieldcontain">
					<span id="f_status-label" class="property-label"><g:message code="loan.f_status.label" default="Fstatus" /></span>
					
						<span class="property-value" aria-labelledby="f_status-label"><g:fieldValue bean="${loanInstance}" field="f_status"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${loanInstance?.i_guarantee1}">
				<li class="fieldcontain">
					<span id="i_guarantee1-label" class="property-label"><g:message code="loan.i_guarantee1.label" default="Iguarantee1" /></span>
					
						<span class="property-value" aria-labelledby="i_guarantee1-label"><g:fieldValue bean="${loanInstance}" field="i_guarantee1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${loanInstance?.i_guarantee2}">
				<li class="fieldcontain">
					<span id="i_guarantee2-label" class="property-label"><g:message code="loan.i_guarantee2.label" default="Iguarantee2" /></span>
					
						<span class="property-value" aria-labelledby="i_guarantee2-label"><g:fieldValue bean="${loanInstance}" field="i_guarantee2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${loanInstance?.m_int_close}">
				<li class="fieldcontain">
					<span id="m_int_close-label" class="property-label"><g:message code="loan.m_int_close.label" default="Mintclose" /></span>
					
						<span class="property-value" aria-labelledby="m_int_close-label"><g:fieldValue bean="${loanInstance}" field="m_int_close"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${loanInstance?.m_loan}">
				<li class="fieldcontain">
					<span id="m_loan-label" class="property-label"><g:message code="loan.m_loan.label" default="Mloan" /></span>
					
						<span class="property-value" aria-labelledby="m_loan-label"><g:fieldValue bean="${loanInstance}" field="m_loan"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${loanInstance?.m_paid_month}">
				<li class="fieldcontain">
					<span id="m_paid_month-label" class="property-label"><g:message code="loan.m_paid_month.label" default="Mpaidmonth" /></span>
					
						<span class="property-value" aria-labelledby="m_paid_month-label"><g:fieldValue bean="${loanInstance}" field="m_paid_month"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${loanInstance?.m_repay}">
				<li class="fieldcontain">
					<span id="m_repay-label" class="property-label"><g:message code="loan.m_repay.label" default="Mrepay" /></span>
					
						<span class="property-value" aria-labelledby="m_repay-label"><g:fieldValue bean="${loanInstance}" field="m_repay"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${loanInstance?.m_saving}">
				<li class="fieldcontain">
					<span id="m_saving-label" class="property-label"><g:message code="loan.m_saving.label" default="Msaving" /></span>
					
						<span class="property-value" aria-labelledby="m_saving-label"><g:fieldValue bean="${loanInstance}" field="m_saving"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${loanInstance?.m_tot_return}">
				<li class="fieldcontain">
					<span id="m_tot_return-label" class="property-label"><g:message code="loan.m_tot_return.label" default="Mtotreturn" /></span>
					
						<span class="property-value" aria-labelledby="m_tot_return-label"><g:fieldValue bean="${loanInstance}" field="m_tot_return"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${loanInstance?.member}">
				<li class="fieldcontain">
					<span id="member-label" class="property-label"><g:message code="loan.member.label" default="Member" /></span>
					
						<span class="property-value" aria-labelledby="member-label"><g:link controller="member" action="show" id="${loanInstance?.member?.id}">${loanInstance?.member?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${loanInstance?.q_month}">
				<li class="fieldcontain">
					<span id="q_month-label" class="property-label"><g:message code="loan.q_month.label" default="Qmonth" /></span>
					
						<span class="property-value" aria-labelledby="q_month-label"><g:fieldValue bean="${loanInstance}" field="q_month"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${loanInstance?.q_time}">
				<li class="fieldcontain">
					<span id="q_time-label" class="property-label"><g:message code="loan.q_time.label" default="Qtime" /></span>
					
						<span class="property-value" aria-labelledby="q_time-label"><g:formatDate date="${loanInstance?.q_time}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:loanInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${loanInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
