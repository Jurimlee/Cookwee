<%@page import="login.loginDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="setting.jsp"%>
<script src="${project}script_mypage.js"></script>

<h2> ${page_modify} </h2>

<c:if test="${result eq 0}">
	<script type="text/javascript">
		//<!--
		alert( modifyerror );
		-->
	</script>
<meta http-equiv="refresh" content="0; url=mypage.do">
</c:if>
<c:if test="${result eq 1}">
	<c:redirect url="mypage.do"/>
</c:if>