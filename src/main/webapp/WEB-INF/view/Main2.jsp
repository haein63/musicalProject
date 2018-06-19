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
	   <script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>

<style type="text/css">

@import url(http://fonts.googleapis.com/earlyaccess/jejugothic.css);
body {
  font-family: 'Jeju Gothic', serif;
  padding-top: 54px;
}

@media (min-width: 992px) {
  body {
    padding-top: 56px;
  }
}
img{

}
</style>
  </head>
<script type="text/javascript">

function showPopup(){
	window.open("login","LOGIN","width=300px,height=480px,left=100,top=50")
}

</script>
  <body>
<%
String context = request.getContextPath();
%>
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="#">K-MOVE 3 Generation</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link" href="main">Home
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="" onclick="showPopup();" >Login</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="board">Board</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Creator</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Page Content -->
    <div class="container">
      <h1 class="my-4 text-center text-lg-left">K-MOVE GALLERY</h1>
      <div class="row text-center text-lg-left">
      <c:forEach items="${board}" var="board">
        <div class="col-lg-3 col-md-4 col-xs-6">
          <a href="board_detail?board_no=${board.board_no }" class="d-block mb-4 h-100">
            <img name="main_img" class="img-fluid img-thumbnail" src="img/${board.board_file}" alt="1">
          </a>
        </div>
        </c:forEach>
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
