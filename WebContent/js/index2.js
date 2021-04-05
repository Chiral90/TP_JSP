/**
 * 
 */
window.onload=function(){
	var selDiv3 = document.querySelectorAll('.div3');
	var selDiv4 = document.querySelector('.div4');
	var selDiv3h3 = document.querySelectorAll('.div3 > h3');
	var selDiv4h1 = document.querySelector('.div4 > h1');
	var selDiv4h4 = document.querySelector('.div4 > h4');
	console.log(selDiv3h3[0]);
	// 메인 이미지 6개 click
	selDiv3[0].onclick = function(){
		selDiv4.style = "background-image:url('img/image03.jpg')";
		selDiv4h1.innerHTML = "<strong><i>혼족이란?</i></strong>";
		selDiv4h4.innerHTML = "<i>혼자 밥을 먹거나 여가생활과 쇼핑을 즐기며 여행도 홀로 떠나는 등 혼자 활동하는게 취미이거나 그런 성향이 강한 사람들을 일컫는 줄임말.</i>";
	}
	selDiv3[1].onclick = function(){
		selDiv4.style = "background-image:url('img/image10.jpg')";
		selDiv4h1.innerHTML = "<strong><i>싱글족, 혼족, 얼로너, 코쿤?</i></strong>";
		selDiv4h4.innerHTML = "<strong><i>싱글족</strong>:독신을 뜻하는 영어 Single과 종족을 뜻하는 한자 족(族)이 합쳐서 만들어진 신조어<br><strong>혼족</strong>:싱글족의 '싱글'이 혼자를 뜻하는 '혼'으로만 바뀐 경우. 혼자 밥을 먹는 '혼밥', 혼자 술을 먹는 '혼술', 혼자 여행 가는 '혼영' 이라는 단어들이 많이 사용 되면서 혼밥족, 혼술족 이 모든 것을 통합하여 ‘혼족’ 이라고 쓰기 시작<br><strong>얼로너</strong>:혼자인 삶을 즐기는 사람들<br><strong>코쿤</strong>:‘불확실한 사회에서 단절되어 보호받고 싶은 욕망을 해소하는 공간’이라는 뜻</i>";
	}
	selDiv3[2].onclick = function(){
		selDiv4.style = "background-image:url('img/image02.jpg')";
		selDiv4h1.innerHTML = "<strong><i>나를 위한 최고의 선택</i></strong>";
		selDiv4h4.innerHTML = "<i>누군가는 말합니다.<br>혼자라 외롭지 않냐고 그러나, 혼자가 주는 큰 가치, 합리적 라이프스타일 나를 위한 최고의 선택을 하기에 더 행복합니다.</i>";
	}
	selDiv3[3].onclick = function(){
		selDiv4.style = "background-image:url('img/ddsingle.jpg')";
		selDiv4h1.innerHTML = "<strong><i>혼자야?</i></strong>";
		selDiv4h4.innerHTML = "<i>어~ 아직 싱글이야</i>";
	}
	selDiv3[4].onclick = function(){
		selDiv4.style = "background-image:url('img/image13.jpg')";
		selDiv4h1.innerHTML = "<strong><i>혼술 혼밥</i></strong>";
		selDiv4h4.innerHTML = "<i>사회를 떠나<br>누리는 최고의 힐링</i>";
	}
	selDiv3[5].onclick = function(){
		selDiv4.style = "background-image:url('img/image30.jpg')";
		selDiv4h1.innerHTML = "<strong><i>혼족을 위한 서비스</i></strong>";
		selDiv4h4.innerHTML = "<i>혼자여서 더 가치있는 제품 그리고 서비스</i>";
	}
	// 메인 이미지 6개 hover
	selDiv3[0].onmouseenter = function(){
		
	}
	selDiv3[1].onmouseenter = function(){
		
	}
	selDiv3[2].onmouseenter = function(){
		
	}
	selDiv3[3].onmouseenter = function(){
		
	}
	selDiv3[4].onmouseenter = function(){
		
	}
	selDiv3[5].onmouseenter = function(){
		
	}
	
}

$(document).ready(function(){
	setInterval(function(){
		$('ol > li').fadeOut(1000,function(){
			$('ol > li').fadeIn(1000)
			})
	},10000)
})