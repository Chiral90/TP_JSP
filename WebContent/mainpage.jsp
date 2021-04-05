<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>나 혼자 산다</title>
  <script type="text/javascript" src="js/jquery-3.5.1.js"></script>
    <!-- Bootstrap core CSS -->
	<!-- <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"> -->
	<link href="css/blog_home_index.css" rel="stylesheet">
	<!-- Custom styles for this template -->
	<link href="css/blog-home.css" rel="stylesheet">
	
<!-- default of section page -->
<%
	String pagefile = request.getParameter("page"); // section, login, singup
	if ("".equals(pagefile) || pagefile == null) {
		pagefile = "default";
	}
%>
<!-- page마다 다른 css, js적용 -->
<% if (pagefile.equals("default")) { %>
<script type="text/javascript" src="js/index2.js"></script>
<!-- Bootstrap core CSS -->
<!-- <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"> -->
<link href="css/blog_home_index.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="css/blog-home.css" rel="stylesheet">
<%-- <%@ page import="board.boardDTO" %>
<%@ page import="java.util.ArrayList" %>
<% ArrayList<boardDTO> blist = (ArrayList) request.getAttribute("blist"); %>
<% request.setAttribute("blist", blist); %> --%>
<% } %>
<% if (pagefile.equals("login")) { %>
<link rel="stylesheet" href="css/login.css">
<% } %>
<% 	if (pagefile.equals("signup")) { %>
<link rel="stylesheet" href="css/Create_acount1.css">
<script type="text/javascript" src="js/Create_acount.js"></script>
<% } %>
<% if (pagefile.equals("board")) { %>
<script type="text/javascript" src="js/noticeboard.js"></script>
<link href="css/blog_home_index.css" rel="stylesheet">
<link rel="stylesheet" href="css/noticeboard.css">  
<% } %>

</head>

<body>
	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
	<jsp:include page="nav.jsp"></jsp:include>
	</nav>

	<!-- Page Content -->
	<section>
	<jsp:include page='<%="section_"+pagefile+".jsp"%>' />
	</section>
  <!-- /.container -->

	<!-- Footer -->
	<footer class="py-5 bg-dark">
    	<jsp:include page="footer.jsp"></jsp:include>
    <!-- /.container -->
	</footer>

</body>

</html>
