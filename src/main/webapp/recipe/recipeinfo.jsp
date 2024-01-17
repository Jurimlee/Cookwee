<%@page import="java.text.SimpleDateFormat"%>
<%@page import="recipe.recipeDTO"%>
<%@page import="recipe.recipeDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>레시피정보</title>
<!-- 부트스트랩 5.0 CSS 링크 -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<script src="${project}/script_recipe.js"></script>
<style>
    .centered-button {
        text-align: center;
    }
</style>

</head>

<c:if test="${sessionScope.memId != null}">
<%@include file="/cookwee/cookweeTop.jsp"%>

<div class="container">
	<div class="row justify-content-center">
		<div class="col-md-6">
			<div class="recipeinfoImage text-center">
				<img src="${dto.recipe_image}" class="img-fluid" style="width: 100%; height: auto;">
			</div>
		</div>
	</div>
</div>

<div class="container">
	<div class="row justify-content-center">
		<div class="col-md-6">
			<div class="userinfo">
				<p>작성자: ${dto.id}</p>
				<p>제목: ${dto.recipe_summary}</p>
				<p>등록일: <fmt:formatDate value="${dto.recipe_regdate}" type="both" pattern="yyyy-MM-dd HH:hh" /></p>
			</div>
		</div>
	</div>
</div>

<div class="container">
	<div class="row">
		<div class="col-md-6">
			<div class="recipeinfo">
				<h2>주재료</h2>
				<div class="row">
					<c:forEach var="dto" items="${idto}">
						<div class="col-sm-6">
							<table class="table table-bordered">
								<tr>
									<td><strong>재료: </strong></td>
									<td>${dto.ingred_name}</td>
								</tr>
								<tr>
									<td><strong>무게: </strong></td>
									<td>${dto.ingred_weight}</td>
								</tr>
							</table>
						</div>
					</c:forEach>
				</div>
				<br>
				<h2>양념</h2>
				<div class="row">
					<c:forEach var="dto" items="${sdto}">
						<div class="col-sm-6">
							<table class="table table-bordered">
								<tr>
									<td><strong>재료: </strong></td>
									<td>${dto.ingred_name}</td>
								</tr>
								<tr>
									<td><strong>무게: </strong></td>
									<td>${dto.ingred_weight}</td>
								</tr>
							</table>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="container">
	<div class="row">
		<div class="col-md-6">
			<div class="recipepro">
			<h2>과정</h2>
				<table class="table">
					<thead>
						<tr>
							<th>순서</th>
							<th>설명</th>
							<th>이미지</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="dto" items="${cdto}">
							<tr>
								<td>${dto.pro_order}</td>
								<td>${dto.pro_comment}</td>
								<td><img src="${dto.pro_image}" class="img-fluid"></td>
							</tr>
						</c:forEach>
					</tbody>
					
					<tr>
					    <td class="centered-button">
					        <input class="btn btn-secondary" type="button" value="목록" onclick="location='recipemain.do'">
					    </td>
					</tr>
				
				</table>
			</div>
		</div>
	</div>
</div>
<br>

<%@include file="/cookwee/cookweeFooter.jsp"%>
</c:if>
</html>