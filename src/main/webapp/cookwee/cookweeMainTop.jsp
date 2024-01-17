<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="login.loginDBBean"%>
<%@page import="login.loginDTO"%>
<%@ include file = "setting.jsp"%>

<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<script src="${project}script_cookwee.js"></script>
<style>
  .navbar-nav {
    margin-left: auto;
  }
</style>
</head>
<c:if test="${sessionScope.memId==null}">
<div class="card-group">
  <div class="card">
    <div class="card-header">
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03"
          aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <a class="navbar-brand" href="cookweemain.do">CookWee</a>

        <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
          <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
            <li class="nav-item">
              <a class="nav-link" href="loginform.do">레시피조회 <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="loginform.do">커뮤니티</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="loginform.do">근처마켓</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="loginform.do">고객센터</a>
            </li>
          </ul>
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link" href="loginform.do">로그인</a>
            </li>
          </ul>
          <form class="form-inline my-2 my-lg-0">

          </form>
        </div>
      </nav>
    </div>
  </div>
</div>
</c:if>
</html>