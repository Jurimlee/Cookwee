<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="setting.jsp"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"></script>
<script src="${project}script_login.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

<style>
.container {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 60vh;
  left: 200;
}

form {
  width: 100%;
  max-width: 690px;
}

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
  top: 0;
  left: 300;
}

.button-center {
  display: flex;
  justify-content: center;
}

</style>

<c:if test="${sessionScope.memId==null}">
<div class="container">
  <div class="logo">
   <a href="cookweemain.do"><img src="login/image/cookweelogo.png"></a>
  </div>
    <form method="post" action="loginpro.do" name="loginform" onsubmit="return maincheck()" class="m-4">
        <div class="row">
            <div class="col-md-6">
                <table class="table">
                    <tbody>
                        <tr>
                            <th>${str_id}</th>
                            <td>
                                <input class="form-control" type="text" name="id" maxlength="30" autofocus>
                            </td>
                        </tr>
                        <tr>
                            <th>${str_passwd}</th>
                            <td>
                                <input class="form-control" type="password" name="passwd" maxlength="30">
                            </td>
                        </tr>
                        <tr>
                            <th colspan="2">
                          		<div class="button-center">
                                  <input class="btn lg-primary" type="submit" value="${btn_login}">
                                  <input class="btn lg-secondary" type="button" value="${btn_input}" onclick="location='inputform.do'">
                                </div>    
                            </th>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </form>
</div>
<%@include file="/cookwee/cookweeFooter.jsp"%>
</c:if>