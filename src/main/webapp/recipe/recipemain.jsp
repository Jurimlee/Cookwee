<%@page import="java.text.SimpleDateFormat"%>
<%@page import="recipe.recipeDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="recipe.recipeDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "setting.jsp"%> 
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet">
  <title>Recipe List</title>
</head>
<body>
  <c:if test="${sessionScope.memId!=null}">
    <%@ include file="/cookwee/cookweeTop.jsp"%>

    <div class="container">
      <div class="row">
        <div class="col-md-3">
          <!-- cookweesidebar.jsp 파일 include -->
          <%@ include file="/cookwee/cookweesidebar.jsp"%>
        </div>
        <div class="col-md-9">
          <nav class="navbar navbar-light bg-light">
            <form class="form-inline">
              <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
              <button class="btn btn-outline-success my-2 my-sm-0" type="submit">검색</button>
            </form>
          </nav>

          <div class="recipelist mt-4">
            <h3>총 ${count} 개의 레시피가 조회되었습니다.</h3>
            <c:if test="${count ne 0}">
              <c:forEach var="dto" items="${dtos}">
                <div class="card mb-3">
                  <div class="row g-0">
                    <div class="col-md-4">
                      <a href="recipeinfo.do?recipe_id=${dto.recipe_id}">
                        <img src="${dto.recipe_image}" class="card-img" alt="Recipe Image">
                      </a>
                    </div>
                    <div class="col-md-8">
                      <div class="card-body">
                        <h5 class="card-title">
                          <a href="recipeinfo.do?recipe_id=${dto.recipe_id}">${dto.recipe_title}</a>
                          <br>${dto.recipe_summary}
                        </h5>
                        <p class="card-text">작성자: ${dto.id}</p>
                        <p class="card-text">조회수: ${dto.recipe_hit}</p>
                        <p class="card-text">등록일: <fmt:formatDate value="${dto.recipe_regdate}" type="both" pattern="yyyy-MM-dd HH:hh" /></p>
                      </div>
                    </div>
                  </div>
                </div>
              </c:forEach>
            </c:if>
          </div>
        </div>
      </div>
    </div>

    <%@ include file="/cookwee/cookweeFooter.jsp"%>
  </c:if>

  <!-- Bootstrap JavaScript (requires jQuery) -->
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-beta2/js/bootstrap.bundle.min.js"></script>
</body>
</html>