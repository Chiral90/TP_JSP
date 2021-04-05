/**
 * 
 */
window.onload=function(){
	var textarea=document.querySelector("textarea");
	var span=document.querySelector("span");
	textarea.onkeyup=function(){
		span.innerHTML=textarea.value.length;
	}
}