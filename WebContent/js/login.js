/**
 * 
 */
window.onload=function(){
	var id=document.querySelector("#id");
	var pw=document.querySelector("#password");
	var idlb=document.querySelector("#idchk");
	var pwlb=document.querySelector("#pwchk");
	var logbtn=document.querySelector("#c");
	

 id.onblur=function(){
	 //alert(id.value);
	 var idchk=/^[a-z0-9]{5,12}$/;
	 var ic ="";
	 if(4<id.value<13 && idchk.test(id.value)){
	     idlb.innerHTML=""; 
	 }
	  else{
		 ic="5~12 사이의 소문자와 숫자를 입력해주세요.".fontcolor("red");
		 idlb.innerHTML=ic;		
	  }
    }	
 pw.onblur=function(){
	 //alert(id.value);
	 var pwchk=/^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[#?!@$%^&*-]).{8,16}$/;
	 var pc ="";
	 if(7<pw.value<17 && pwchk.test(pw.value)){
	     pwlb.innerHTML=""; 
	 }
	  else{
		 pc="8~16 자리이며, 대/소문자,숫자,특수문자를 모두 사용해야합니다.".fontcolor("red");
		 pwlb.innerHTML=pc;		
	  }
    }	
  logbtn.onclick=function(){
	  alert("확인중");
  }
}
