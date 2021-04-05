<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="container">
<!-- 		<header>
			<h1><a onClick="goToMain()">니 혼자 산다</a></h1>
		</header> -->
		<section>
			<h2><strong>회원가입</strong></h2><br><br>
			<form name="agreeFm" onClick="chkAllChk()">
				<ul>
					<li><span onClick="textCheck1()"><input id="agree_all" name="agree_all" type="checkbox" onClick="agreeAll()">모두 동의</span></li>
					<li><input id="mustAgree1" type="checkbox"><i></i><span onClick="textCheck2()"> 니혼산 이용약관 동의<span class="rq">(필수)</span></span>
						<textarea readonly>『동의보감』의 주요 특징은 세 가지이다. 첫째, 병났을 때의 치료보다 병을 예방하거나 건강을 추구하는 양생의 정신을 강조하였다. 이 책은 중국에서 별개의 전통으로 내려오던 의학과 양생의 전통을 하나로 합쳐냈다. 병의 치료와 예방, 건강도모를 같은 수준에서 헤아릴 수 있게 한 것이다.

둘째, 기존 중국과 조선의학의 핵심을 잘 정리하였다. 허준은 중국의 한나라에서 명나라에 이르는 200여 종의 문헌과 『의방유취』·『향약집성방(鄕藥集成方)』·『의림촬요(醫林撮要)』와 같은 수 종(種)의 조선의서를 참고한 내용을 자신의 학식과 경륜에 결합하여 『동의보감』 안에 녹여내었고, 의학의 경전인 『영추(靈樞)』와 『소문(素問)』의 정신에 따라 의학의 줄기와 가지를 잡고, 다양한 학설과 처방을 병의 증상·진단·예후·예방법 등으로 일목요연하게 정리하였다.
[네이버 지식백과] 동의보감 [東醫寶鑑] (한국민족문화대백과, 한국학중앙연구원)</textarea>		
					</li>
					<li><input id="mustAgree2" type="checkbox"><i></i><span onClick="textCheck3()"> 개인정보 수집 및 이용 동의<span class="rq">(필수)</span></span>
						<textarea readonly>『동의보감』의 주요 서지 내용은 다음과 같다.
① 우리나라 간본: 내의원 훈련도감활자 초간본(1611∼1613), 호남관찰영 전주장본(全州藏本), 영남관찰영 대구장본, 갑술 내의원 교정 영영개간본(嶺營改刊本, 순조 14, 1814), 갑술 내의원 교정 완영중간본(完營重刊本) 등이 있다.

1991년에 이 중 보존상태가 뛰어난 초간본 3종(국립도서관 소장본, 한국학중앙연구원 소장본, 서울대 규장각 소장품)을 보물(1085, 1085-1, 1085-2)로 지정하였고, 2008년에 각각 보물 제1085-1호, 보물 제1085-2호, 보물 제1085-3호로 변경하였다. 이후 동의보감 초간본 3종의 문헌사적, 서지적 가치를 높게 평가하여 각기 국보 제319-1호, 국보 제319-2호, 국보 제319-3호로 승격 지정하였다.
[네이버 지식백과] 동의보감 [東醫寶鑑] (한국민족문화대백과, 한국학중앙연구원)</textarea>
					</li>
					<li><input id="selectAgree" type="checkbox"><i></i><span onClick="textCheck4()"> 프로모션 정보 수신 동의<span class="sel">(선택)</span></span>
						<textarea readonly>『동의보감』은 목차 2권, 의학 내용 23권으로 이루어져 있다. 의학 내용은 5편으로 구성되어 있는데, 그것은 「내경편(內景篇)」(6권)·「외형편(外形篇)」(4권)·「잡병편(雜病篇)」(11권)·「탕액편(湯液篇)」(3권)·「침구편(鍼灸篇)」(1권)이다.

우선 이 책은 신체에 관한 내용을 안팎으로 나누어 신체 내부와 관련된 내용을 「내경편」에, 신체 외부와 관련된 내용을 「외형편」에 두었다. 신체 관련 내용에 포함되지 않는 각종 병 이론과 구체적인 병 내용은 「잡병편」에 묶였다. 「탕액편」은 가장 주요한 치료수단인 약에 관한 이론과 구체적인 약물에 관한 각종 지식을 실었고, 「침구편」은 또 하나의 치료수단인 침·뜸의 이론과 실재를 다뤘다.
[네이버 지식백과] 동의보감 [東醫寶鑑] (한국민족문화대백과, 한국학중앙연구원)</textarea>
					</li>
				</ul>
				<table><tr>
				<td><button id="cancelBtn" type="button" onClick="goToMain()">취소</button></td>
				<td><button id="nextBtn" type="button" onClick="agreeNext()">확인</button></td>
				</tr></table>
			</form>
		</section>
		<footer>
			<div>
				<ul>
					<li><a>이용약관</a></li>
					<li><a><strong>개인정보처리방침</strong></a></li>
					<li><a>운영정책</a></li>
					<li><a>고객센터</a></li>
				</ul>
			</div>
		</footer>
	</div>
