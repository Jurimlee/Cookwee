<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions"%>

<c:set var ="project" value="/CookWee/mypage/"/>
<c:set var ="page_login" value="로 그 인 페 이 지"/>
<c:set var ="login" value= "COOKWEE"/>

<c:set var ="msg_input" value= "회원정보를 입력해 주세요"/>
<c:set var ="btn_login" value= "로그인"/>
<c:set var ="btn_cancel" value = "취소"/>
<c:set var ="btn_input"  value= "가입"/>
<c:set var ="btn_confirm" value = "중복확인"/>
<c:set var ="btn_ok" value = "확인"/>
<c:set var ="btn_ok_cancel" value = "취소"/>
<c:set var ="btn_mod" value = "수 정"/>
<c:set var="btn_del" value="탈퇴"/>
<c:set var="btn_del_cancel" value="탈퇴취소"/>

<c:set var ="login_complete" value = "COOKWEE"></c:set>
<c:set var ="msg_sub" value = "님 환영합니다."></c:set>
<c:set var ="btn_logout" value = "로그아웃"></c:set>

<c:set var ="page_input" value="회 원 가 입"/>
<c:set var ="page_confirm" value="중 복 확 인"/>
<c:set var ="page_modify" value="회 원 정 보 수 정"/>
<c:set var="page_delete" value="회 원 탈 퇴"/>

<c:set var ="msg_id_x" value= "는 사용 할 수 있습니다."/>
<c:set var ="msg_id_o" value= "는 사용 할 수 없습니다."/>
<c:set var="msg_passwd" value="비밀번호를 입력해주세요."/>
<c:set var="msg_passwderr" value="비밀번호를 다시 확인해주세요"/>

<c:set var ="str_id" value= "아이디"/>
<c:set var ="str_passwd" value= "비밀번호"/>
<c:set var ="str_passwd_confirm" value= "비밀번호확인"/>
<c:set var ="str_name" value= "이름"/>
<c:set var ="str_address" value = "주소"/>
