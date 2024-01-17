<%@page import="csc.cscDTO"%>
<%@page import="csc.cscDBBean" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="setting.jsp"%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css">
<script src="${project}script_csc.js"></script>


<%
    cscDTO dto = (cscDTO)request.getAttribute("dto");
%>

<c:if test="${sessionScope.memId != null}">
  <jsp:include page="/cookwee/cookweeTop.jsp" />

<div style="display: flex; justify-content: center;">
    <div style="width: 60%;">
            <table class = "table"> 
                <thead class = "table-dark">
                    <tr>
                        <th style="width: 7%">문의글번호</th>
                        <th style="width: 20%">문의제목</th>
                        <th style="width: 7%">등록일</th>
                    </tr>
                </thead>
                <tbody>
                    <c:if test="${count eq 0}">
                        <tr>
                            <td colspan="3" class="text-center">등록된글이 없습니다.</td>
                        </tr>
                    </c:if>
                    <c:if test="${count ne 0}">
                        <c:forEach var="dto" items="${dtos}">
                            <tr>
                                <td>${dto.csc_num}</td>
                                <td>
                                    <a href="cscwriteinfo.do?num=${dto.csc_num}" class="text-decoration-none">
                                        ${dto.csc_title}
                                    </a>
                                </td>
                                <td>
                                    <fmt:formatDate value="${dto.csc_regdate}" type="both" pattern="yyyy-MM-dd HH:hh" />
                                </td>
                            </tr>
                        </c:forEach>
                    </c:if>
                </tbody>
            </table>
        
			<div class="row">
			  <div class="col-12">
			    <div class="text-center mb-3">
			      <div class="d-flex justify-content-center">
			        <a href="cscwriteform.do" class="btn btn-primary">글쓰기</a>
			      </div>
			    </div>
			  </div>
			</div>

        </div>
    </div>
</c:if>
  <jsp:include page="/cookwee/cookweeFooter.jsp" />
