<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
.error {
	margin: 0 auto;
	text-align: center;
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	display: flex;
	flex-direction: column;
	justify-content: space-around;
	align-items: center;
	justify-content: space-around;
	text-align: left;
	font-size: 50px;
}
.header_box {
	position: absolute;
	top: 0px;
}

.footer_box {
	bottom: 0px;
	position: absolute;
}


</style>

<body>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

	<jsp:include page="include/header.jsp"></jsp:include><!-- 헤더 -->
	<h1 class="error">권한이 없습니다.<br>로그인을 해주십시오.</h1>
	<jsp:include page="include/footer.jsp"></jsp:include><!-- 풋터 -->

</body>
</html>