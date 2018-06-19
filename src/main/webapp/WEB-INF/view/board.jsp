<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="ko">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>K-MOVE GALLERY</title>

    <!-- Bootstrap core CSS -->
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">

	@import url(http://fonts.googleapis.com/earlyaccess/jejugothic.css);
	#insert{
	 float: right;
	 margin-bottom: 2.5em;
	}
body {
  font-family: 'Jeju Gothic', serif;
  padding-top: 54px;
}

.go_board_detail{
color: black;
}

.go_board_detail:hover{
  text-decoration: none;
  color : blue;
}

@media (min-width: 992px) {
  body {
    padding-top: 56px;
  }
}

</style>
  </head>

  <body>
<%
String context = request.getContextPath();
%>
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="Main">K-MOVE 3 Generation</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link" href="Main">Home
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Login</a>
            </li>
            <li class="nav-item active">
              <a class="nav-link" href="#">Board</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Creator</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Page Content -->
    <div class="container" style="    margin-top: 2.5em;
    margin-bottom: 2.5em;">
      	<table class="table table-board">
      <colgroup>
         <col width="7%">  <!-- 글 번호 -->
         <col width="*">   <!-- 제목 -->
         <col width="15%"> <!-- 작성자 -->
         <col width="10%"> <!-- 작성일 -->
         <col width="7%">  <!-- 조회수 -->
      </colgroup>
      <thead>
         <tr>
            <th style="text-align:center;">글 번호</th>
            <th style="text-align:center;">제목</th>
            <th style="text-align:center;">작성자</th>
            <th style="text-align:center;">작성일</th>
            <th style="text-align:center;">조회수</th>
         </tr>
        <c:forEach items="${board}" var="board">
         <tr>
            <td style="text-align:center;">${board.numrow}</td>
            <td><a class="go_board_detail" href="board_detail?board_no=${board.board_no}">${board.board_name}</a></td>
            <td style="text-align:center;">${board.id }</td>
            <td style="text-align:center;">${board.board_date}</td>
            <td style="text-align:center;">${board.board_count}</td>
         </tr>
         </c:forEach>
      </table>
      <div class="huge-top">
         <button class="btn btn-normal pull-right" id="insert" onclick="location.href='insertCmt.jsp'">쓰기</button>
      </div>
   
    </div>
    <!-- /.container -->

    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; JANG MOON KIM</p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
   <script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>

  </body>

</html>
