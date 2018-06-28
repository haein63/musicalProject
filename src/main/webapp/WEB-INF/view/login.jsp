
</html><%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>INTERMISSION</title>

<!-- Bootstrap core CSS -->
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css"
	rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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

.login1 {
	width: 300px;
	height: 400px;
	/* border: 2px solid #D8D8D8; */
	border: 2px solid #A6A6A6;
	border-radius: 8px;
	margin: 0 auto;
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

.header_box {
	position: absolute;
	top: 0px;
}

.footer_box {
	bottom: 0px;
	position: absolute;
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

label.error{
color: white;
font-size: 12px;
display: flex;

}

</style>
</head>
<%
	String context = request.getContextPath();
%>
<body>
	<jsp:include page="include/header.jsp"></jsp:include><!-- 헤더 -->

	<div class="main">
		<form id="form" action="loginCheck" method="post">
			<c:if test="${msg == 'logout'}">
				<div
					style="text-align: center; color: black; font-family: 'Jeju Gothic', serif;">
					로그아웃되었습니다</div>
			</c:if>
			<fieldset class="login1">
				<p id="name">INTERMISSION</p>
				<input type="text" name="id" id="loginid" placeholder="아이디">
				<p>
					<input type="password" name="password" id="loginpw"
						placeholder="비밀번호">
				<p>
					<button id="loginbt">로그인</button>
					<br> <br>
				<p
					style="text-align: center; color: white; font-family: 'Jeju Gothic', serif;">
					사이트가 처음이신가요? <a href="<%=context%>/join" style="color: white;">회원가입</a>
				</p>


				<p
					style="text-align: center; color: white; font-family: 'Jeju Gothic', serif;">
					<a href="<%=context%>/Main2" style="color: white;">Home으로</a>
				</p>

			</fieldset>
		</form>
	</div>
	<%-- <jsp:include page="include/scroll.jsp"></jsp:include> --%>
	<!-- 스크롤 -->
	<jsp:include page="include/footer.jsp"></jsp:include><!-- 풋터 -->
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/jquery.validate.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/additional-methods.min.js"></script>
<script>
$("#form").validate({
	rules:{
		id:{
			required: true,
			
		},
				
		password:{
			required: true,
		},
		
		
	},
	messages:{
		id:{
			required: "아이디는 필수 입력입니다.",
		},
		password: {
			required: "비밀번호는 필수 입력입니다.",
		}
	},
	invalidHandler: function(form, validator){
		var errors = validator.numberOfInvalids();
		if(errors){
			alert(validator.errorList[0].message);
			validator.errorList[0].element.focus();
		}
		
	}
	
	
	
	
});
	
	
</script>
</html>

