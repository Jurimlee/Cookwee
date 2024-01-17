<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="setting.jsp"%>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
	<script src="${project}script_login.js"></script>
  	<title>mypage</title>
    <style>
        .grid-container {
            display: grid;
            grid-template-columns: auto auto;
            grid-gap: 10px; /* 원하는 간격으로 조정해주세요 */
        }
    </style>
</head>

<body>	
<c:if test ="${sessionScope.memId!=null}">
	<jsp:include page="/cookwee/cookweeTop.jsp" />
<div class="grid-container">
    <div style="display: flex; align-items: flex-start;">
        <jsp:include page="/cookwee/cookweemypagesidebar.jsp" />
    </div>
    <div style="display: flex; align-items: flex-start;">
        <form method="post" action="modifyform.do" name="passwdform" onsubmit="return passwdcheck()">
            <table class="table centered-table">
                <thead>
                    <tr>
                        <th colspan="2"> 비밀번호를 입력해주세요 </th>
                    </tr>
                </thead>
                   <tbody>
                       <tr>
                           <th> ${str_passwd} </th>
                           <td> <input class="form-control" type="password" name="passwd" maxlength="30" autofocus> </td>
                       </tr>
                       <tr>
                           <th colspan="2">
                               <input class="btn btn-primary" type="submit" value="${btn_ok}">
                           </th>
                       </tr>
                   </tbody>
               </table>
           </form>
       </div>
   </div>
<jsp:include page="/cookwee/cookweeFooter.jsp" />	
</c:if>
</body>
</html>