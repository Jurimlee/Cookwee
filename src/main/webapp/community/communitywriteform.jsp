<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="setting.jsp" %>
<script src="${project}script_community.js"></script>

<h2> ${page_write} </h2>
<c:if test="${sessionScope.memId!=null}">
    <%@ include file="/cookwee/cookweeTop.jsp"%>
<form method="post" action="communtiywritepro.do" name="communitywriteform" onsubmit="return writecheck()">
	<input type="hidden" name="num" value="${num}">
	
	<div class="table-responsive">
		<table class="table">
			<tr>
				<th colspan="2" style="text-align:right">
					<a href="communitymain.do" class="btn btn-primary">${str_list}</a>&nbsp;&nbsp;&nbsp;
				</th>  
			</tr>
			<tr>
				<th> ${str_subject} </th>
				<td>
					<input class="form-control" type="text" maxlength="200" name="subject">
				</td>
			</tr>
			<tr>
				<th> ${str_content} </th>
				<td>
					<textarea name="content" rows="10" cols="40" class="form-control"></textarea>
				</td>
			</tr>
			<tr>
				<th colspan="2">
					<input class="btn btn-primary" type="submit" value="${btn_write}">
					<input class="btn btn-secondary" type="reset" value="${btn_cancel}">
				</th>
			</tr>
		</table>
	</div>

</form>
	<%@ include file="/cookwee/cookweeFooter.jsp"%>
</c:if>