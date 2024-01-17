<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ include file="setting.jsp" %>
<script src="${project}script_mypage.js"></script>

<c:if test="${result eq 0}">
    <script type="text/javascript">
        //<!--
        erroralert(passError);
        -->
    </script>
</c:if>

<c:if test="${result eq 1}">
    <%@ include file="/cookwee/cookweeTop.jsp" %>
    <form method="post" action="deletepro.do" name="passwdform">
        <div class="container mt-5">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="card text-center">
                        <div class="card-body">
                            <h5 class="card-title">정말로 삭제하시겠습니까?</h5>
                            <div class="d-grid gap-2 mt-3">
                                <input class="btn btn-primary" type="submit" value="${btn_del}">
                                <a class="btn btn-secondary" href="deleteform.do">${btn_del_cancel}</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <jsp:include page="/cookwee/cookweeFooter.jsp" />
</c:if>