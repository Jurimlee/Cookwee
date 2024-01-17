<%@page import="login.loginDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="setting.jsp"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="${project}script_login.js"></script>

<div class="container">

    <c:if test="${result eq 0}">
        <table class="table">
            <tr>
                <th style="width: 300px">${id}${msg_id_x}</th>
            </tr>
            <tr>
                <th>
                    <input class="btn btn-primary" type="button" value="${btn_ok}" onclick="setid('${id}')">
                    <input class="btn btn-secondary" type="button" value="${btn_ok_cancel}" onclick="self.close()">
                </th>
            </tr>
        </table>
    </c:if>

    <c:if test="${result eq 1}">
        <form method="post" action="confirmid.do" name="confirmform" onsubmit="return confirmcheck()">
            <table class="table">
                <tr>
                    <th colspan="2">
                        ${id}${msg_id_o}
                    </th>
                </tr>
                <tr>
                    <th>${str_id}</th>
                    <td>
                        <input class="form-control" type="text" name="id" maxlength="30" autofocus>
                    </td>
                </tr>
                <tr>
                    <th colspan="2">
                        <input class="btn btn-primary" type="submit" value="${btn_ok}">
                        <input class="btn btn-secondary" type="button" value="${btn_ok_cancel}" onclick="self.close()">
                    </th>
                </tr>
            </table>
        </form>
    </c:if>
</div>