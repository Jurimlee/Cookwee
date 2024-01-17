<%@page import= "recipe.recipeDTO" %>
<%@page import= "recipe.recipeproDTO" %>
<%@page import= "recipe.ingredDTO" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src = "${project}script_recipe.js"></script>

   <c:if test="${result1 eq 0 || result2 eq 0 || result3 eq 0 || result4 eq 0}">
        <script type="text/javascript">
            erroralert('입력 오류가 발생했습니다.');
        </script>
    </c:if>
    <c:if test="${result1 eq 1}">
        <c:redirect url="recipemain.do"/>
    </c:if>