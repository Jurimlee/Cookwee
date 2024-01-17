<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="setting.jsp"%>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/css/bootstrap.min.css">
<script src="${project}script_csc.js"></script>

<c:if test="${sessionScope.memId != null}">
  <jsp:include page="/cookwee/cookweeTop.jsp" />

  <div class="container">
    <h2>${page_write}</h2>
    <form method="post" action="cscwritepro.do" name="writeform" onsubmit="return writecheck()">
      <table class="table">
        <tr>
          <th colspan="2" style="text-align: right">
            <a href="cscmain.do" class="btn btn-secondary">목록</a>
          </th>
        </tr>
        <tr>
          <th>작성자</th>
          <td>
            ${sessionScope.memId}
          </td>
        </tr>
        <tr>
          <th>문의제목</th>
          <td>
            <input class="form-control" type="text" maxlength="200" name="title">
          </td>
        </tr>
        <tr>
          <th>문의내용</th>
          <td>
            <textarea class="form-control" name="comment" rows="10" cols="40"></textarea>
          </td>
        </tr>
        <tr>
          <th colspan="2">
            <input class="btn btn-primary" type="submit" value="작성">
            <input class="btn btn-secondary" type="button" value="뒤로" onclick="location='cscmain.do'">
          </th>
        </tr>
      </table>
    </form>
  </div>

  <jsp:include page="/cookwee/cookweeFooter.jsp" />
</c:if>

<script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/js/bootstrap.bundle.min.js"></script>