<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div style="width:1250px" class="board1">
		<table class="board2">
			<caption>게시판 목록</caption>
			<thead>
				<h1>Community</h1><br>
				<tr class="top">
					<th class="num">번호</th>
					<th class="title">제목</th>
					<th class="writer">작성자</th>
					<th class="date">작성일</th>
					<th class="count">조회</th>
					<th class="love">좋아요</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="num">10</td>
					<td class="page1">
						<a href="viewpost.html">"나 혼자 산다" 신년 회식 장소</a>
					<td class="writer">관리자</td>
					<td class="date">2021-01-31</td>
					<td class="count">10350</td>
					<td class="love">100</td>
				</tr>
				<tr>
					<td class="num">9</td>
					<td class="page1">
						<a href="viewpost.html">우리 다함께 힘냅시다!</a>
					<td class="writer">이수일</td>
					<td class="date">2021-01-30</td>
					<td class="count">2565</td>
					<td class="love">25</td>
				</tr>
				<tr>
					<td class="num">8</td>
					<td class="page1">
						<a href="viewpost.html">웹개발자가 되고싶니? 그럼 그린컴퓨터아카데미 울산</a>
					<td class="writer">신현재</td>
					<td class="date">2021-01-29</td>
					<td class="count">3004</td>
					<td class="love">100</td>
				</tr>
				<tr>
					<td class="num">7</td>
					<td class="page1">
						<a href="viewpost.html">삼산동 맛집 LIST</a>
					<td class="writer">손동진</td>
					<td class="date">2021-01-28</td>
					<td class="count">2015</td>
					<td class="love">9</td>
				</tr>
				<tr>
					<td class="num">6</td>
					<td class="page1">
						<a href="viewpost.html">내일 태화강변 마라톤 하실분~</a>
					<td class="writer">홍경의</td>
					<td class="date">2021-01-27</td>
					<td class="count">1434</td>
					<td class="love">2</td>
				</tr>
				<tr>
					<td class="num">5</td>
					<td class="page1">
						<a href="viewpost.html">넷플릭스 ID 공유합니다.</a>
					<td class="writer">이수일</td>
					<td class="date">2021-01-26</td>
					<td class="count">1004</td>
					<td class="love">20</td>
				</tr>
				<tr>
					<td class="num">4</td>
					<td class="page1">
						<a href="viewpost.html">외롭니? 여길 눌러봐</a>
					<td class="writer">신현재</td>
					<td class="date">2021-01-25</td>
					<td class="count">6543</td>
					<td class="love">7</td>
				</tr>
				<tr>
					<td class="num">3</td>
					<td class="page1">
						<a href="viewpost.html">혼자 밥 해먹기 힘들어 매일 배민, 요기요만 찾니?</a>
					<td class="writer">손동진</td>
					<td class="date">2021-01-24</td>
					<td class="count">256</td>
					<td class="love">5</td>
				</tr>
				<tr>
					<td class="num">2</td>
					<td class="page1">
						<a href="viewpost.html">내 집 갖고싶니?</a>
					<td class="writer">홍경의</td>
					<td class="date">2021-01-23</td>
					<td class="count">687</td>
					<td class="love">3</td>
				</tr>
				<tr>
					<td class="num">1</td>
					<td class="page1">
						<a href="viewpost.html">"나 혼자 산다" 공지사항</a>
					<td class="writer">관리자</td>
					<td class="date">2021-01-22</td>
					<td class="count">1434</td>
					<td class="love">10</td>
				</tr>
			</tbody>
		</table>
		<div class="page">
			<a href="noticeboard.html" class="first">첫 페이지</a>
			<a href="noticeboard.html" class="prev">이전</a>
			<a href="noticeboard.html" class="number on">1</a>
			<a href="noticeboard.html" class="number">2</a>
			<a href="noticeboard.html" class="number">3</a>
			<a href="noticeboard.html" class="next">다음</a>
			<a href="noticeboard.html" class="last">마지막 페이지</a>
		</div>
		<div id="search">
			<select>
				<option>전체기간</option>
				<option>1일</option>
				<option>1주</option>
				<option>1개월</option>
				<option>6개월</option>
				<option>1년</option>
			</select>
			<select name="list">
				<option value="title">제목</option>
				<option value="title">작성자</option>
				<option value="title">내용</option>
				<option value="title">제목과내용</option>
			</select>
			<input type="text" name="search" size="40" required="required">
			<button class="button1" type="button" onclick="location.href='noticeboard.html'">검색</button>
		</div>
			<button class="button2" type="button" onclick="location.href='write.html'">글쓰기</button>
	</div>