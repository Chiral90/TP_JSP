/**
 * 
 */

/*function noEnter(){ // 엔터키 뽑음 ㅋㅋ
	if(event.keyCode==13) return false;
}*/



function goToMain(){ // href로 메인 페이지 이동(뒤로가기 가능)
	location.href="Main_or_Login.html";
}

function clickLogo(){ // replace로 메인 페이지 이동  
	location.replace("Main_or_Login.html");
}

//******************************Create_acount1******************************
function textCheck1(){ // 텍스트 누르면 콤보박스 체크 on/off  
	document.agreeFm.agree_all.click();
}
function textCheck2(){ // 텍스트 누르면 콤보박스 체크 on/off  
	document.agreeFm.mustAgree1.click();
}
function textCheck3(){ // 텍스트 누르면 콤보박스 체크 on/off  
	document.agreeFm.mustAgree2.click();
}
function textCheck4(){ // 텍스트 누르면 콤보박스 체크 on/off  
	document.agreeFm.selectAgree.click();
}


function agreeAll(){ // 모두 동의 버튼 누르면 발동
	if(document.agreeFm.agree_all.checked == true){
		document.agreeFm.mustAgree1.checked=true;
		document.agreeFm.mustAgree2.checked=true;
		document.agreeFm.selectAgree.checked=true;
	}
	else{
		document.agreeFm.mustAgree1.checked=false;
		document.agreeFm.mustAgree2.checked=false;
		document.agreeFm.selectAgree.checked=false;
	}
}

function chkAllChk(){ // 3개다 동의되면 모두동의 체크, 하나라도 아니면 체크 해제
	if(document.agreeFm.mustAgree1.checked &&
			document.agreeFm.mustAgree2.checked &&
			document.agreeFm.selectAgree.checked)
		document.agreeFm.agree_all.checked=true;
	else
		document.agreeFm.agree_all.checked=false;
}

function agreeNext(){ // 동의 했으면 페이지2로 이동
	if(document.agreeFm.mustAgree1.checked &&
			document.agreeFm.mustAgree2.checked)
		location.replace("Create_acount2.html");
	
	else
		alert("지금 동의 안해놓고 나중에 딴소리 할라고 ㅋㅋ");
}

//******************************Create_acount2******************************
window.onload = function(){
	var chkId = false; // 아이디 입력 상태
	var chkPw1 = false; // 비밀번호 입력 상태
	var chkPw2 = false; // 비밀번호 일치 여부
	
	var inputId = document.querySelector("[name=userId]"); // 아이디 입력창
	var inputPw1 = document.querySelector("[name=pw1]") // 비번 입력창
	var inputPw2 = document.querySelector("[name=pw2]") // 비번 확인창
	var nextBtn2 = document.querySelector("#nextBtn2") // 다음 버튼
	
	// 아이디 입력할때마다 발동
	inputId.oninput = function(){
		var idChk = document.querySelector("#idChk"); // 안내메시지 span
		var idRegEx = /^\w{5,12}$/; // [A-Za-z0-9_]와 같음(문자수 5~12)
		
		if(idRegEx.test(inputId.value)){
			idChk.innerHTML = "사용 가능한 ID입니다.";
			idChk.setAttribute("class", "inputTrue");
			chkId = true;
		}
		else{
			idChk.innerHTML = "숫자, 영소문자만 가능(5~12자리)";
			idChk.setAttribute("class", "inputFalse");
			chkId = false;
		}
	}

	// 비번, 비번확인창 입력할때마다 발동
	inputPw1.oninput = inputPw2.oninput = function(){
		var pw1Chk = document.querySelector("#pw1Chk"); //안내메시지 span
		var pw2Chk = document.querySelector("#pw2Chk"); //안내메시지 span
		
		// 영문자, 숫자, 특수문자 포함(8~16자리)
		var pwRegEx = /(?=.*?[A-Za-z])(?=.*?[0-9])(?=.*?[`\-\=\[\]\\;\',.\/\s~!@#$%^&*\(\)_+\{\}:\"<>?]).{8,16}/; 
		
		// 비번 입력1 체크
		if(pwRegEx.test(inputPw1.value)){
			pw1Chk.innerHTML = "사용 가능한 PW입니다.";
			pw1Chk.setAttribute("class", "inputTrue");
			chkPw1 = true;
		}
		else{
			pw1Chk.innerHTML = "영문자, 숫자, 특수문자 포함(8~16)";
			pw1Chk.setAttribute("class", "inputFalse");
			chkPw1 = false;
		}
		
		// 비번 입력2 체크
		if(inputPw1.value == inputPw2.value){
			pw2Chk.innerHTML = "비밀번호가 일치합니다.";
			pw2Chk.setAttribute("class", "inputTrue");
			chkPw2 = true;
		}
		else{
			pw2Chk.innerHTML = "비밀번호가 일치하지 않습니다.";
			pw2Chk.setAttribute("class", "inputFalse");
			chkPw2 = false;
		}
	}

	// 페이지2에서 다음 눌렀을 때 발동
	nextBtn2.onclick = function(){

		if(!chkId){ // 아이디 입력 확인}
			alert("ID를 정확히 입력해 주세요.");
			return false;
		}
		// 비번 입력 확인
		if(!chkPw1 || !chkPw2){
			alert("PW를 정확히 입력해 주세요.");
			return false;
		}
	
		// 로봇인지 확인
		var chkRobot=prompt("[자동가입 방지]\n당신은 로봇입니까?\n(아니면 'ㄴㄴ'를 입력해 주세요!)");
		if(chkRobot != "ㄴㄴ"){
			alert("딱 걸렸군ㅎㅎ 꺼져라 나쁜로봇!");
			return false;
		}
		document.fm1.submit();
		location.replace("Create_acount3.html"); // 뒤로가기 못함
		
	}
}
//******************************Create_acount3******************************
var num; // 인증용 번호 저장할 변수
var chkIj = false; // 인증 했는지 확인할 변수

// 폰번호 입력될때마다 발동(인증 완료 후 폰번호 사기칠까봐)
function inputPhone(){
	document.getElementById("ijText").innerHTML = "인증필요";
	document.getElementById("ijText").setAttribute("class", "inputFalse");
	chkIj = false;
}

// 인증 버튼 누르면 발동
function ij(){
	var phoneRegEx = /\d{11,11}/; // 전화번호 숫자만 11자리

	if(!phoneRegEx.test(document.querySelector("#phoneNumber").value)){
		alert("숫자만 입력하세요.(11자리)");
		return;
	}

	do{ // 4자리수만 나오게 하려고 num<1000 조건 넣음
	num = Math.floor(Math.random()*10000);
	}while(num<1000)
	alert("[Web발신]\n[니혼산] 인증번호 ["+num+"]를 입력해 주세요.");
}
function ij_chk(){ // 인증번호 확인
	if(num == document.fm2.ijNum.value){
		document.getElementById("ijText").innerHTML = "인증완료";
		document.getElementById("ijText").setAttribute("class", "inputTrue")
		chkIj=true;
	}
	else{
		document.getElementById("ijText").innerHTML = "인증실패";
		document.getElementById("ijText").setAttribute("class", "inputFalse")
	}
}

function fin(){ // 페이지3에서 회원가입 눌렀을 때 발동

	var userName=document.fm2.userName.value;
	var year=document.fm2.year.value;
	var sex=document.fm2.sex.value;
	
	if(userName == ""){ // 이름 입력 확인
		alert("아무리 귀찮아도 이름은 써야지 ㅋㅋ");
		return false;
	}
	
	if(year == ""){ // 연도 입력 확인
		alert("본인이 언제 태어났는지도 모름?")
		return false;
	}
	
	if(sex == ""){ // 성별 체크 했는지 확인
		alert("혹시 자웅동체임?")
		return false;
	}
	// if 인증번호 확인 됐는지 체크하는거 추가할거임 머리 또 터질듯 ㅎㅎ
	if(chkIj == false){
		alert("번호 인증도 안하고 회원가입 누르는 양심보소 ㅋㅋ")
		return false;
	}
	
	// submit
	if(confirm("정말 가입하시겠습니까?")){
		alert("가입 완료 ㅊㅋㅊㅋ")
		document.fm2.submit();
		location.replace("mainpage_v5_1.html");
	}
}