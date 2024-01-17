<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="recipe.recipeDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="recipe.recipeDBBean"%>
<!DOCTYPE html>
<html>
<head>
<title>레시피작성</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
      integrity="sha384-pzjw8f+ua3q+ukmz3+e3q5tqI6Z7a0oXlSSfHInHgLXqolpmlrRUb8H+UWv5x1TK"
      crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script> <!-- jQuery 추가 -->
<script src="${project}script_recipe.js"></script>

<script>
$(document).ready(function() {
    var ingredientRow = `
      <tr>
        <td><input type="text" name="ingredient_name" class="form-control" required></td>
        <td><input type="text" name="ingredient_amount" class="form-control" required></td>
      </tr>
    `;

    // "재료 행 추가" 버튼 클릭 시 동적으로 재료 행 추가
    $("#add_ingredient_button").click(function(e) {
        e.preventDefault();

        $("#ingredient_table tbody").append(ingredientRow); // 재료 행을 추가하는 테이블의 tbody에 새로운 행 추가
    });

    var stepCount = 2; // 초기 과정 개수
    
    $(document).ready(function() {
    	  var seasoningRow = `
    	    <tr>
    	      <td><input type="text" name="seasoning_name" class="form-control" required></td>
    	      <td><input type="text" name="seasoning_amount" class="form-control" required></td>
    	    </tr>
    	  `;

    	  // "부재료 행 추가" 버튼 클릭 시 동적으로 부재료 행 추가
    	  $("#add_seasoning_button").click(function(e) {
    	    e.preventDefault();

    	    $("#seasoning_table tbody").append(seasoningRow); // 부재료 행을 추가하는 테이블의 tbody에 새로운 행 추가
    	  });
    	});

    // "과정 추가" 버튼 클릭 시 동적으로 과정 추가
    $("#add_step_button").click(function(e) {
        e.preventDefault();

        var newStepIndex = stepCount + 1;

        var newStepHtml = `
          <li>
            <div class="row">
              <div class="col-md-8">
                <div class="form-group">
                  <label for="step${newStepIndex}">조리 과정 ${newStepIndex}:</label>
                  <textarea name="step_description" id="step${newStepIndex}" rows="3" class="form-control" required></textarea>
                </div>
              </div>
              <div class="col-md-4">
                <div class="form-group">
                  <label for="step_image${newStepIndex}">조리 과정 이미지:</label>
                  <input type="file" name="step_image" id="step_image${newStepIndex}" class="form-control-file">
                </div>
              </div>
            </div>
          </li>
        `;

        $("#step_list").append(newStepHtml); // 과정 목록에 새로운 과정 추가

        stepCount++; // 과정 개수 증가
    });
});
</script>
<script>
  $(document).ready(function() {
    // 이미지 선택 시 미리보기
    $("#image_upload").change(function() {
      var file = this.files[0];
      var reader = new FileReader();
      reader.onload = function(e) {
        $("#image_preview").attr("src", e.target.result).show();
      };
      reader.readAsDataURL(file);
    });
  
    // 이미지 업로드
    $("form").submit(function(e) {
      e.preventDefault();
  
      var formData = new FormData(this);
      // 추가적인 데이터가 있다면 formData.append("key", value)를 사용하여 추가
  
      $.ajax({
        url: "이미지 업로드를 처리하는 서버 URL",
        type: "POST",
        data: formData,
        processData: false,
        contentType: false,
        success: function(response) {
          // 이미지 업로드 성공 시 수행할 동작
        },
        error: function(xhr, status, error) {
          // 이미지 업로드 실패 시 수행할 동작
        }
      });
    });
  });
</script>

</head>

<body>
 <%@include file="/cookwee/cookweeTop.jsp"%>
<c:if test="${sessionScope.memId!=null}">
<form method="post" action="recipewritepro.do" name="loginform" class="m-4">
  <div class="container">
	<div class="row">
	  <div class="col-md-6">
	    <div class="form-group">
	      <label for="recipe_name">요리명:</label>
	      <input type="text" name="recipetitle" id="recipetitle" class="form-control" required>
	    </div>
	  </div>
		<div class="row">
		<div class="col-md-6">
  			<input type="file" id="image_upload" accept="image/*">
  			<img id="image_preview" alt="썸네일 이미지" style="max-width: 100%; height: auto; display: none;">
		</div>
		</div>
	</div>

      <div class="row">
        <div class="col-md-6">
          <div class="form-group">
            <label for="recipe_intro">요리 소개:</label>
  			<input type="text" name="recipeintro" id="recipeintro" class="form-control" required>          </div>
        </div>
      </div>
      <br><br>

      <h2>주재료</h2>
      <div class="row">
        <div class="col-md-12">
          <table class="table" id="ingredient_table">
            <thead>
              <tr>
                <th>재료명</th>
                <th>재료 분량</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td><input type="text" name="ingredient_name" class="form-control" required></td>
                <td><input type="text" name="ingredient_amount" class="form-control" required></td>
              </tr>
              <tr>
                <td><input type="text" name="ingredient_name" class="form-control" required></td>
                <td><input type="text" name="ingredient_amount" class="form-control" required></td>
              </tr>
            </tbody>
          </table>
          <button id="add_ingredient_button" class="btn btn-primary">재료 행 추가</button>
        </div>
      </div>
      <br><br>
      
	<h2>부재료</h2>
	<div class="row">
	  <div class="col-md-12">
	    <table class="table" id="seasoning_table">
	      <thead>
	        <tr>
	          <th>재료명</th>
	          <th>재료 분량</th>
	        </tr>
	      </thead>
	      <tbody>
	        <tr>
	          <td><input type="text" name="seasoning_name" class="form-control" required></td>
	          <td><input type="text" name="seasoning_amount" class="form-control" required></td>
	        </tr>
	        <tr>
	          <td><input type="text" name="seasoning_name" class="form-control" required></td>
	          <td><input type="text" name="seasoning_amount" class="form-control" required></td>
	        </tr>
	      </tbody>
	    </table>
	    <button id="add_seasoning_button" class="btn btn-primary">부재료 행 추가</button>
	  </div>
	</div>

      <h2>조리 과정:</h2>
      <ol id="step_list">
        <li>
          <div class="row">
            <div class="col-md-8">
              <div class="form-group">
                <label for="step1">조리 과정 1:</label>
                <textarea name="step_description" id="step1" rows="3" class="form-control" required></textarea>
              </div>
            </div>
            <div class="col-md-4">
              <div class="form-group">
                <label for="step_image1">조리 과정 이미지:</label>
                <input type="file" name="step_image" id="step_image1" class="form-control-file">
              </div>
            </div>
          </div>
        </li>
        <li>
          <div class="row">
            <div class="col-md-8">
              <div class="form-group">
                <label for="step2">조리 과정 2:</label>
                <textarea name="step_description" id="step2" rows="3" class="form-control" required></textarea>
              </div>
            </div>
            <div class="col-md-4">
              <div class="form-group">
                <label for="step_image2">조리 과정 이미지:</label>
                <input type="file" name="step_image" id="step_image2" class="form-control-file">
              </div>
            </div>
          </div>
        </li>
      </ol>
      <button id="add_step_button" class="btn btn-primary">과정 추가</button>
      <br><br>
	 <div class="text-center">
      <input type="submit" value="레시피 제출" class="btn btn-primary">
      <input type="button" value="작성취소" class="btn btn-primary" onclick="location='recipemain.do'">
     </div>
  </div>
  </form>
<%@include file="/cookwee/cookweeFooter.jsp"%>
</c:if>

</body>

</html>