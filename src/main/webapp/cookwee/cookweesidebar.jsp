<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- 부트스트랩 CSS 파일 로드 -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css">
  <title>사이드바 예제</title>
</head>
<body>
  <div class="d-flex">
    <div class="flex-shrink-0 p-3 bg-light" style="width: 280px;">
      <ul class="nav flex-column">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="recipemain.do">레시피조회</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="recipewrite.do">레시피작성</a>
        </li>
      </ul>
    </div>
	</div>

  <!-- 부트스트랩 JavaScript 파일 로드 (jQuery 필요) -->
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-beta2/js/bootstrap.bundle.min.js"></script>
</body>
</html>