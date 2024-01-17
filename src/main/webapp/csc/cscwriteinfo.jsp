<%@page import="java.text.SimpleDateFormat"%>
<%@page import="csc.cscDTO"%>
<%@page import="csc.cscDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file = "setting.jsp"%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.0/css/bootstrap.min.css">
<link rel = "stylesheet" type ="text/css" href ="${project}style_board.css">
<script src = "${project}script_board.js"></script>

<h2>${page_content}</h2>

<%
    cscDTO dto = (cscDTO)request.getAttribute("dto");
%>
<c:if test="${sessionScope.memId!=null}">
    <%@ include file="/cookwee/cookweeTop.jsp"%>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-6">
                <div class="table-responsive">
                    <table class="table table-bordered table-sm">
                        <tr>
                            <th>작성자</th>
                            <td style="text-align:center">${dto.id}</td>
						</tr>
						<tr>
                            <th>작성일</th>
                            <td style="text-align:center">
                                <%
                                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
                                %>
                                <%=sdf.format(dto.getCsc_regdate())%>
                            </td>
                        </tr>

                        <tr>
                            <th>내용</th>
                            <td colspan="3"> <pre>${dto.csc_comment}</pre></td>
                        </tr>
              		<c:if test="${sessionScope.memId==dto.id}">
						<tr>
						    <th colspan="3" align="center" style="text-align: center;">
						        <input class="btn btn-primary" type="button" value="수정"
						               onclick="location='cscmodifyform.do?num=${dto.csc_num}'">
						        <input class="btn btn-danger" type="button" value="삭제"
						               onclick="location='cscdeleteform.do?num=${dto.csc_num}'">
						        <input class="btn btn-secondary" type="button" value="목록"
						               onclick="location='cscmain.do'">
						    </th>
						</tr>
             		</c:if>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <%@ include file="/cookwee/cookweeFooter.jsp"%>
</c:if>