<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="setting.jsp"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="${project}script_login.js"></script>
<style>
.logo {
  text-align: center;
  margin-bottom: 20px;
}

.logo img {
  max-width: 200px;
  height: auto;
}

.container {
  position: relative;
}

.logo {
  position: absolute;
  top: 150px;
  left: 45%;
}

.form-center {
  display: flex;
  flex-direction: column;
  align-items: center;
}

.form-group {
  width: 100%;
  max-width: 400px;
}

.form-group input,
.form-group button {
  width: 100%;
}

.button-center {
  display: flex;
  justify-content: center;
}

</style>
<div class="d-flex justify-content-center align-items-center vh-100">
  <div class="logo">
    <a href="cookweemain.do"><img src="login/image/cookweelogo.png"></a>
  </div>
  <form method="post" action="inputpro.do" name="inputform" onsubmit="return inputcheck()" class="m-4 form-center">
    <input type="hidden" name="check" value="0">
    <table>
      <tr>
        <th>${str_id}</th>
        <td>
          <div class="input-group">
            <input class="form-control" type="text" name="id" maxlength="30" autofocus>
            <button class="btn btn-primary" type="button" onclick="confirmid()">${btn_confirm}</button>
          </div>
        </td>
      </tr>
      <tr>
        <th rowspan="2">${str_passwd}<br><hr>${str_passwd_confirm}</th>
        <td>
          <input class="form-control" type="password" name="passwd" maxlength="30">
        </td>
      </tr>
      <tr>
        <td>
          <input class="form-control" type="password" name="repasswd" maxlength="30">
        </td>
      </tr>
      <tr>
        <th>${str_name}</th>
        <td>
          <input class="form-control" type="text" name="name" maxlength="50">
        </td>
      </tr>
      <tr>
        <th>${str_address}</th>
        <td>
          <div class="input-group">
            <input class="form-control" type="text" name="address" maxlength="50" maxlength="70" readonly onclick="findaddress()">
            <button class="btn btn-primary" type="button" onclick="findaddress()">주소찾기</button>
          </div>
        </td>
      </tr>
      <tr>
        <th colspan="2">
          <div class="button-center">
            <input class="btn btn-primary" type="submit" value="${btn_input}">
            <input class="btn btn-secondary" type="button" value="가입취소" onclick="location='loginform.do'">
          </div>
        </th>
      </tr>
    </table>
  </form>
</div>
<%@include file="/cookwee/cookweeFooter.jsp"%>