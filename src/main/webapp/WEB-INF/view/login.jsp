
</html><%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>K-MOVE GALLERY</title>

<!-- Bootstrap core CSS -->
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css"
	rel="stylesheet">
<style type="text/css">
@import url(http://fonts.googleapis.com/earlyaccess/jejugothic.css);

body {
	font-family: 'Jeju Gothic', serif;
}

div#form {
	position: absolute;
	height: 90%;
	/* 		width: 100%; */
	/* margin: 100px 0px 0px 0px; */
	background-color: #F8F8F8;
	/*  background-color: #FAFAFA; */
	top: 100px;
	/*  min-width: 500px; */
	left: 50%;
	margin-left: -950px;
}

div#wrap {
	border-style: none;
	/* border: 1px solid #D8D8D8; */
	margin: 0px 0px 0px 400px;
	height: 500px;
	width: 1200px;
	min-width: 900px;
}

.login {
	width: 300px;
	height: 350px;
	/* border: 2px solid #D8D8D8; */
	border: 2px solid #A6A6A6;
	border-radius: 8px;
	/* margin: 50px 150px 0px 100px; */
	background-color: #343a40 !important;
	float: none;
	top: 150px;
	/* font-family: 'Jeju Gothic', serif; */
	font-family: 'Jeju Gothic', serif;
}

#loginid {
	width: 250px;
	height: 7px;
	padding: 19px 15px;
	margin: 10px 0px 0px 22px;
	border-style: none;
	color: #39261f;
	font-size: 14px;
	line-height: 17px;
	vertical-align: top;
	font-family: 'Jeju Gothic', serif;
}

#loginpw {
	width: 250px;
	height: 7px;
	padding: 19px 15px;
	margin: 10px 0px 0px 22px;
	border-style: none;
	color: #39261f;
	font-size: 14px;
	line-height: 17px;
	vertical-align: top;
	font-family: 'Jeju Gothic', serif;
}

#loginbt {
	margin: 0;
	padding: 0;
	top: 0;
	right: 0;
	color: black;
	/* background-color:#353535; */
	background-color: white;
	width: 250px;
	height: 40px;
	margin: 10px 0px 0px 22px;
	border-radius: 5px;
	border: 0;
	font-size: 15px;
	font-family: 'Jeju Gothic', serif;
	cursor: pointer
}

#name {
	color: white;
	text-align: center;
	font-size: 20px;
	margin: 10px 0px 20px 0px;
	font-family: 'Jeju Gothic', serif;
}

body {
	padding-top: 54px;
}

@media ( min-width : 992px) {
	body {
		padding-top: 56px;
	}
}

.img_div_main {
	
}

img {
	max-width: 640px;
	padding: .25rem;
	background-color: #fff;
	border: 1px solid #dee2e6;
	border-radius: .25rem;
	margin-bottom: 1.5rem !important;
	margin-top: 1.5rem !important;
}

.main_detail {
	border: 1px solid #dee2e6;
	width: 640px;
	height: 300px;
	margin-bottom: 1.5rem !important;
}
</style>
<script type="text/javascript">
	
	function windowclose() {
		window.opener.location = "Main";
		window.close();
	}
	
</script>
</head>
<%
String context = request.getContextPath();
%>
<body>
	<div class="main">
		<form action="loginCheck" method="post">
			<fieldset class="login">
				<p id="name">INTERMISSION</p>
				<input type="text" name="mem_id" id="loginid" placeholder="아이디">
				<p>
					<input type="password" name="mem_pw" id="loginpw"
						placeholder="비밀번호">
				<p>
					<button type="submit" id="loginbt" onclick="windowclose();">로그인</button>
					<br> <br>
				<p
					style="text-align: center; color: white; font-family: 'Jeju Gothic', serif;">
					사이트가 처음이신가요? <a href="<%=context %>/join" style="color: white;">회원가입</a>
				</p>
				<br>
			</fieldset>
		</form>
	</div>
	<!-- Bootstrap core JavaScript -->
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>
</body>
</html>

