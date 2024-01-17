/**
 * 
 */
var idError = "아이디를 입력하세요."
var passwdError = "비밀번호를 입력하세요."
var idxError = "입력하신 아이디가 없습니다.\n다시 확인하세요."
var passError = "입력하신 비밀번호가 다릅니다 \n 다시 확인하세요."
var addressError = "주소를 입력하세요."
var inputerror = "회원가입에 실패했습니다.\n 잠시 후 다시 시도하세요."
var nameError = "이름을 입력하세요."
var repasswdEmpty = "비밀번호 확인란을 입력하세요"
var repasswdError = "비밀번호가 일치하지 않습니다."
var comfirmError = "중복확인을 하세요."
var modifyerror = "회원정보수정에 실패했습니다.\n잠시 후 다시 시도하세요";
var deleteerror = "회원탈퇴에 실패했습니다.\n잠시 후 다시 시도하세요.";

function erroralert(msg){
	alert(msg);
	history.back();
}

//메인페이지
function maincheck(){
	if(!loginform.id.value){//id 오류
		alert(idError);
		loginform.id.focus();
		return false;
		
	}else if(!loginform.passwd.value){//pass word오류
		alert(passwdError);
		loginform.passwd.focus();
		return false;
	}
}
 
function confirmid(){
	if(!inputform.id.value){
		alert(idError);
		inputform.id.focus();
	}else{
		url = "confirmid.do?id=" + inputform.id.value;
		open(url,"confirm","scrollbar = no , statusbar = no , titlebar = no menubar = no  ,width = 400px , height = 250px");	
	}
}

function confirmcheck(){//아이디 중복확인창에서 아이디 입력 x
	if(! confirmform.id.value){
		alert(idError);
		confirmform.id.focus();
		return false;
	}
	
}

function setid(id){
	//중복되는 아이디 입력 ->중복확인->중복창 뜸 -> 
	//중복x아이디 입력 -> 중복x 확인시 입력한 아이디가 그대로 inputform에 들어감
	opener.document.inputform.id.value = id;
	opener.document.inputform.check.value = "1";
	window.close();		
}

function inputcheck(){ //아이디입력하라

	if(inputform.check.value =="0"){//중복확인 하고 가입 눌러라
		alert(comfirmError);
		inputform.id.focus();
		return false;	
	}

	if (!inputform.id.value){//가입페이지에서 아이디 입력x 아이디입력해라
		alert(idError);
		inputform.id.focus();
		return false;	
	}
	else if(!inputform.passwd.value){//가입페이지에서 비밀번호 입력 x 비밀번호 입력하라
		alert(passwdError);
		inputform.passwd.focus();
		return false;
	}
	else if(! inputform.repasswd.value){//비밀번호확인 입력x
		alert(repasswdEmpty);
		inputform.repasswd.focus();
		return false;
		
	}else if(inputform.passwd.value != inputform.repasswd.value){//비밀번호가 일치하지않습니다
		alert(repasswdError);
		inputform.passwd.value = "";
		inputform.repasswd.value = "";
		inputform.passwd.focus();
		return false;
		
	}else if(! inputform.name.value){//가입페이지에서 이름 입력 x 이름을 입력하라
		alert(nameError);
		inputform.name.value = "";
		inputform.name.focus();
		return false;	
	}else if(! inputform.address.value){
		alert(addressError);
		inputform.address.value = "";
		inputform.address.focus();
		return false;
	}
}//가입페이지	

//주소찾기 API
 function findAddr() {
    new daum.Postcode({
      oncomplete: function (data) {
        var address = data.roadAddress; // 도로명 주소

        document.getElementsByName("address")[0].value = address;
      }
    }).open();
  }


/**
 * 
 */