//글 작성 오류
var writererror = "작성자를 입력하세요.";
var subjecterror = "제목을 입력하세요.";
var contenterror = "내용을 입력하세요.";
var passwderror = "비밀번호를 입력하세요.";

//DB오류
var inserterror = "글 작성에 실패했습니다.\n 잠시 후 다시 시도하세요.";
var modifyerror = "글 수정에 실패했습니다.\n 잠시 후 다시 시도하세요.";
var deleteerror = "글 삭제에 실패했습니다.\n 잠시 후 다시 시도하세요.";

var passerror = "입력하신 비밀번호가 다릅니다.\n다시 확인하세요.";
var replyerror= "답글이 있는 글은 삭제할 수 없습니다. ";


function erroralert(msg){
	alert(msg);
	history.back();
}

//글수정
function modifycheck(){
	if(!modifyform.subject.value){
		alert(subjecterror);
		modifyform.subject.focus();
		return false;
	}else if(!modifyform.content.value){
		alert(contenterror);
		modifyform.content.focus();
		return false;
}else if(!modifyform.passwd.value){
		alert(passwderror);
		modifyform.passwd.focus();
		return false;
	}
}

//글쓰기
function writecheck(){
	 if(!writeform.title.value){
		alert(subjecterror);
		writeform.title.focus();
		return false;
	}else if(!writeform.comment.value){
		alert(contenterror);
		writeform.comment.focus();
		return false;
	}
}