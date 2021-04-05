<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="container">

    <div class="row">

      <!-- Blog Entries Column -->
      <div class="col-md-8">

        <div class="my-4">
        <div class="gallerylist">
        	<article>
				<div class="div1">
					<div class="div2">
					<div id="lu" class="div3" style="background-image:url('img/image03.jpg')"><h3>혼족이란?</h3></div>
					<div class="div3" style="background-image:url('img/image10.jpg')"><h3>혼족 구분</h3></div>
					<div class="div3" style="background-image:url('img/image02.jpg')"><h3>당신 혼족?</h3></div>
					<div class="div3" style="background-image:url('img/jcalone.jpg')"><h3>혼자야?</h3></div>
					<div id="ld" class="div3" style="background-image:url('img/image13.jpg')"><h3>혼밥</h3></div>
					<div class="div3" style="background-image:url('img/image30.jpg')"><h3>서비스</h3></div>
					</div>
				</div>
				<div class="div4" style="background-image:url('img/200.jpg')"><h1><strong>나 혼자 라이프 간단 정보</strong></h1><h4>&larr; Click image</h4></div>
			</article>
			</div>
        </div>

        <!-- Blog Post -->
        <h1 class="my-4">The Latest Member Story
          <small></small>
        </h1>
        <div class="card mb-4">
          <img class="card-img-top" src="img/file_000.png" alt="Card image cap">
          <div class="card-body">
            <h2 class="card-title">김지훈 님</h2>
            <p class="card-text">사교육 스타 이즈 본. 스트레칭, 농구, 보컬 등 다양한 사교육을 섭렵했던 지훈! 사교육의 끝은 어디까지?!
            이번엔 언어다! 영어, 일본어, 중국어! 3개 국어 마스터로 언어 열정 불태우고 킥복싱으로 체력까지 불태운 프로 열정러 지훈! 사교육으로 FLEX한 지훈의 하루는?!</p>
            <a href="#" class="btn btn-primary">Read More &rarr;</a>
          </div>
          <div class="card-footer text-muted">
            Posted on Mar 12, 2021
          </div>
        </div>

        <!-- Pagination -->
        <!-- <ul class="pagination justify-content-center mb-4">
          <li class="page-item">
            <a class="page-link" href="#">&larr; Older</a>
          </li>
          <li class="page-item disabled">
            <a class="page-link" href="#">Newer &rarr;</a>
          </li>
        </ul> -->

      </div>

      <!-- Sidebar Widgets Column -->
      <div class="col-md-4">

        <!-- Search Widget -->
        <div class="card my-4">
          <h5 class="card-header">Search</h5>
          <div class="card-body">
            <div class="input-group">
              <input type="text" class="form-control" placeholder="Search for...">
              <span class="input-group-append">
                <button class="btn btn-secondary" type="button">Go!</button>
              </span>
            </div>
          </div>
        </div>

<%@ page import="board.boardDTO" %>
<%@ page import="java.util.ArrayList" %>
<% ArrayList<boardDTO> blist = (ArrayList) request.getAttribute("blist"); %>

        <!-- Side Widget -->
        <div class="card my-4">
          <h5 class="card-header">Popular posts</h5>
          <div class="card-body">
          	<ol class="pop-list">
          		<!-- 
          		<li><a href="#">&#10102; <span>1</span></a></li>
				<li><a href="#">&#10103; <span>2</span></a></li>
				<li><a href="#">&#10104; <span>3</span></a></li>
				<li><a href="#">&#10105; <span>4</span></a></li>
				<li><a href="#">&#10106; <span>5</span></a></li>
          		 -->
          		
				<li><a href="#">&#10102; <span><%= blist.get(0).getTitle() %></span></a></li>
				<li><a href="#">&#10103; <span><%= blist.get(1).getTitle() %></span></a></li>
				<li><a href="#">&#10104; <span><%= blist.get(2).getTitle() %></span></a></li>
				<li><a href="#">&#10105; <span><%= blist.get(3).getTitle() %></span></a></li>
				<li><a href="#">&#10106; <span><%= blist.get(4).getTitle() %></span></a></li>
				
			</ol>
          </div>
        </div>

      </div>

    </div>
    <!-- /.row -->

  </div>
