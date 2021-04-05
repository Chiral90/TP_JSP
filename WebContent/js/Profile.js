/**
 * 
 */

function selectBasic(){ // 기본 정보 메뉴 누르면 발동
	document.getElementById("pwDiv").style.display = "none";
	document.getElementById("basicDiv").style.display = "block";
}

function selectPw(){ // 비번 변경 메뉴 누르면 발동
	document.getElementById("basicDiv").style.display = "none";
	document.getElementById("pwDiv").style.display = "block";
}

function changePsa(){ // 프사 누르면 발동
	window.open("Psa.html", "파법창", "width=500, height=300");
}
function selectPsa(imNum){ // 변경할 프사 누르면 발동

	switch(imNum){
	case 1:
		opener.document.getElementById("psa").src= "images/lion.jpg";
		break;
	case 2:
		opener.document.getElementById("psa").src= "images/ebichu.jpg";
		break;
	case 3:
		opener.document.getElementById("psa").src= "images/teemo.jpg";
		break;
	default:
	}
}

// 제이쿼리
$(document).ready(function(){
	// 기본 정보의 새로운 닉네임 부분
	$("#reNick").val("원래닉");

	// 비밀번호 조건 및 일치 여부
	$("#rePw1, #rePw2").on("input",function(){
		if($("#rePw1").val() != $("#rePw2").val()){
			var str="비밀번호가 일치하지 않습니다.";
			$("#proPwSpan").html(str).css({"color":"red","text-align":"center","position":"relative","top":"-15px"});
		}
		else{
			var str="사용 가능한 비밀번호 입니다.";
			$("#proPwSpan").html(str).css({"color":"darkgreen","text-align":"center","position":"relative","top":"-15px"});
		}
	})
	
})
