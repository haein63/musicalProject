<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
.header_box {
	position: absolute;
	top: 0px;
}

.footer_box {
	bottom: 0px;
	position: absolute;
}
strong{
font-size: 45px;
text-align: center;
}
.joinText {
	width:100%;
	top: 250px;
	text-align: center;
	position: absolute;
	font-size: 20px;
}

</style>
<body>
	<jsp:include page="include/header.jsp"></jsp:include><!-- 헤더 -->

	<div class="joinText">
		<strong>Welcome!</strong><br>
		${result.id}님. 회원 가입이 정상적으로 처리되었습니다! <br> 
		<a href="http://localhost:9090/gesipanProject/Main2">home으로</a>
	</div>
	<jsp:include page="include/footer.jsp"></jsp:include><!-- 풋터 -->
</body>
</html>