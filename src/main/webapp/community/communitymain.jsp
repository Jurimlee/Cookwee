<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="community.communityDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="community.communityDBBean"%>
<%@ include file="setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 부트스트랩 5.0 CSS 링크 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>CookWeeCommunity</title>
</head>
<c:if test="${sessionScope.memId!=null}">
    <%@ include file="/cookwee/cookweeTop.jsp"%>
<body>
<div class="container">
    <div class="row">
		<div class="col-12">
		     <div class="text-end mb-3">
   			 	<a href="communitywriteform.do" class="btn btn-primary">${str_write}</a>
			</div>
		   
		</div>
    </div>
    <div class="row">
        <div class="col-12">
            <table class="table">
                <thead>
                    <tr>
                        <th style="width: 7%">${str_num}</th>
                        <th style="width: 7%">${str_category}</th>
                        <th style="width: 20%">${str_subject}</th>
                        <th style="width: 7%">${str_readcount}</th>
                        <th style="width: 8%">${str_writer}</th>
                        <th style="width: 15%">${str_reg_date}</th>
                    </tr>
                </thead>
                <tbody>
                    <c:if test="${count eq 0}">
                        <tr>
                            <td colspan="6" class="text-center">${msg_list_x}</td>
                        </tr>
                    </c:if>
                    <c:if test="${count ne 0}">
                        <c:forEach var="dto" items="${dtos}">
                            <tr>
                                <td>${dto.cm_num}</td>
                                <td>${dto.cate_name}</td>
                                <td>
                                    <a href="communtiycontent.do?num=${dto.cm_num}&pageNum=${pageNum}&number=${number+1}">
                                        ${dto.cm_title}
                                    </a>
                                </td>
                                <td>${dto.cm_hit}</td>
                                <td>${dto.id}</td>
                                <td>
                                    <fmt:formatDate value="${dto.cm_regdate}" type="both" pattern="yyyy-MM-dd HH:hh" />
                                </td>
                            </tr>
                        </c:forEach>
                    </c:if>
                </tbody>
            </table>
        </div>
    </div>
    <div class="row">
        <div class="col-12">
            <div class="text-center">
                <c:if test="${startPage gt pageBlock}">
                    <a href="communtiymain.do">[◀◀]</a>
                    <a href="communtiymain.do?pageNum=${startPage - pageBlock}">[◀]</a>
                </c:if>
                <c:forEach var="i" begin="${startPage}" end="${endPage}">
                    <c:if test="${i eq currentPage}">
                        <span>[${i}]</span>
                    </c:if>
                    <c:if test="${i ne currentPage}">
                        <a href="communtiymain.do?pageNum=${i}">[${i}]</a>
                    </c:if>
                </c:forEach>
                <c:if test="${pageCount gt endPage}">
                    <a href="communtiymain.do?pageNum=${startPage+pageBlock}">[▶]</a>
                    <a href="communtiymain.do?pageNum=${pageCount}">[▶▶]</a>
                </c:if>
            </div>
        </div>
    </div>
</div>
<%@ include file="/cookwee/cookweeFooter.jsp"%>
</body>
</c:if>
</html>