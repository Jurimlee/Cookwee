<%@page import="csc.cscDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file = "setting.jsp"%>
<script src = "${project}script_csc.js"></script>

<c:if test = "${result eq 0}">
	<script type = "text/javascript">
		//<!--
		alert(inserterror);
		-->
	</script>
	<meta http-equiv = "refresh" content ="0; url = cscmain.do">
</c:if>
<c:if test = "${result ne 0}">	
	<c:redirect url = "cscmain.do"/>
</c:if>    