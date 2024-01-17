<%@page import="java.text.SimpleDateFormat"%>
<%@page import="login.loginDBBean"%>
<%@page import="login.loginDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="setting.jsp"%>
<script src="${project}/script_mypage.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<div class="container">

    <c:if test="${result eq 0}">
        <script type="text/javascript">
            //<!--
            erroralert( passError );	
            -->
        </script>
    </c:if>		
    
    <c:if test="${result eq 1}">
    <%@ include file="/cookwee/cookweeTop.jsp"%>
   
        <form method="post" action="modifypro.do" name="modifyform" onsubmit="return modifycheck()">
          
            <div class="row">
                <div class="col">  
                    <div class="mb-3">
                        <label for="id" class="form-label">${str_id}</label>
                        <input class="form-control" type="text" id="id" readonly value="${dto.id}">
                    </div>
                    <div class="mb-3">
                        <label for="name" class="form-label">${str_name}</label>
                        <input class="form-control" type="text" id="name" readonly value="${dto.name}">
                    </div>
                    <div class="mb-3">
                        <label for="passwd" class="form-label">${str_passwd}</label>
                        <input class="form-control" type="password" name="passwd" id="passwd" maxlength="30" autofocus value="${dto.passwd}">
                    </div>
                    <div class="mb-3">
                        <label for="repasswd" class="form-label">${str_passwd_confirm}</label>
                        <input class="form-control" type="password" name="repasswd" id="repasswd" maxlength="30" value="${dto.passwd}">
                    </div>      
                    <div class="mb-3">
                        <label for="address" class="form-label">${str_address}</label>
                        <input class="form-control" type="text" name="address" id="address" maxlength="70" value = "${dto.address}">
                        <input class="form-control" type="button" value="주소찾기" readonly onclick="findAddr()">
                    </div>
                </div>
            </div>
            <div class="mb-3">
                <input class="btn btn-primary" type="submit" value="${btn_mod}">
                <input class="btn btn-secondary" type="reset" value="${btn_cancel}" onclick="location='mypage.do'">
            </div>
        </form>
        <jsp:include page="/cookwee/cookweeFooter.jsp" />		
    </c:if>
</div>