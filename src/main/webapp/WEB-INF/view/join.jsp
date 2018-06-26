<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- Bootstrap core CSS -->
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<%
	String context = request.getContextPath();
%>
<style type="text/css">
@import url(http://fonts.googleapis.com/earlyaccess/jejugothic.css);

body {
	font-family: 'Jeju Gothic', serif;
}

div#join {
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

.joinForm {
	width: 300px;
	height: 500px;
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

#id {
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

#name {
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

#email {
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

#password {
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

#joinBt {
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
	cursor: pointer;

}

#formTop {
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


}

</style>
<body>
	<jsp:include page="include/header.jsp"></jsp:include><!-- 헤더 -->
	<div class="layer">
		<form action="joinResult" method="post" id="join">
			
			<fieldset class="joinForm">

				<p id="formTop">INTERMISSION</p>
				<p>
				<input type="text" name="id"  id="id" placeholder="아이디"> <br>
				</p>
				
				<p>
				<input type="text" name="name" id="name"  placeholder="이름"> <br>
				</p>
				<p>
				<input type="text" name="email" id="email" placeholder="email">
				</p>
				<p><input type="password" name="password" id="password" placeholder="password"> 
				</p>
					<input type="submit" value="가입" id="joinBt"> 
					<br><br>
				
			</fieldset>

		</form>
	</div>
	
	
	
	<jsp:include page="include/footer.jsp"></jsp:include><!-- 풋터 -->
</body>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/jquery.validate.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/additional-methods.min.js"></script>
<script>
$("#join").validate({
	rules:{
		id:{
			required: true,
			pattern: /^[0-9a-zA-Z]{8,12}$/
			
		},
		name: {
			required: true,
			pattern: /^[가-힣]{3,5}$/
		},
		
		email: {
			required: true,
			email: true
			
		},
		
		password:{
			required: true,
		},
		
		
	},
	messages:{
		id:{
			required: "아이디는 필수 입력입니다.",
			pattern: "아이디는 알파벳 또는 숫자로 8 ~ 12글자 입력하세요."
		},
		name :{
			required: "이름은 필수 입력입니다.",
			pattern: "이름은 한글 3~5글자로 입력하세요"
		},
		email: {
			required: "이메일은 필수 입력입니다.",
			email: "이메일 양식을 확인하세요."
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