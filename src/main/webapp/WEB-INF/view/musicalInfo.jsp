<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
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
	    
body {
font-family: 'Jeju Gothic', serif;
  padding-top: 54px;
}

@media (min-width: 992px) {
  body {
    padding-top: 56px;
  }
}
.img_div_main{
    margin-left: 640px;
    
    }
img{
    max-width: 640px;
    padding: .25rem;
    background-color: #fff;
    border: 1px solid #dee2e6;
    border-radius: .25rem;
    margin-bottom: 1.5rem!important;
    margin-top: 1.5rem!important;

}
.main_detail {
        border: 1px solid #dee2e6;
    width: 640px;
    height: 300px;
    margin-left: 640px;
    margin-bottom: 1.5rem!important;
}
</style>
  </head>

  <body>

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
                <span class="sr-only"></span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="login">Login</a>
            </li>
            <li class="nav-item active">
              <a class="nav-link" href="board">Board</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Creator</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
	<div class="main">
			 <div class="img_div_main">
        <div class="img_div">
          <a href="" class="img">
            <img class="img" src="img/${board.board_file}" alt="1">
          </a>
        </div>
   			 </div>
   			 <div class="main_detail">
   			 	   			 
   					${board.board_content}
   			 </div>
   			 
	</div>
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
