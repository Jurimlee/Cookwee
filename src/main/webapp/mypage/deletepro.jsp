<%@page import="login.loginDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="setting.jsp"%>
<script src="${project}script_mypage.js"></script>


<meta http-equiv="refresh" content="0; url=cookweemain.do">

<c:if test="${result eq 1}">
	${sessionScope.memId = null}
	<c:redirect url="loginform.do"/>
</c:if>



