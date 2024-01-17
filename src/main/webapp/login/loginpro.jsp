<%@page import="login.loginDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "setting.jsp"%>
<script src = "${project}script_login.js"></script>

<c:if test= "${result eq -1}">

	<script type = "text/javascript">
		//<!--
		erroralert(idxError);
		-->
		</script>
</c:if>		
<c:if test = "${result eq 0}">		
	<script type = "text/javascript">
		//<!--
		erroralert(passError);
		-->
	</script>
</c:if>	
<c:if test = "${result eq 1}">
	${sessionScope.memId = requestScope.id}
	<c:redirect url = "logincomplete.do"/>
</c:if>
