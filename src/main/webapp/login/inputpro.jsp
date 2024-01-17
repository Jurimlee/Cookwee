<%@page import="login.loginDBBean"%>
<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file = "setting.jsp"%>
<script src = "${project}script_login.js"></script>

<c:if test = "${result eq 0}">
	<script type ="text/javascript">
		//<!--
		erroralert(inputerror);
		-->
	</script>
</c:if>
<c:if test = "${result eq 1}">
	<c:redirect url = "loginform.do"/>
</c:if>