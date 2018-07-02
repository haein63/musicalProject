<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
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

	<jsp:include page="include/header.jsp"></jsp:include><!-- 헤더 -->
<br>
<br>

<h1>회원 정보</h1>
${member.id }<br>
${member.name }<br>
${member.password }<br>
${member.email }<br>
${member.joindate }<br>
<jsp:include page="include/footer.jsp"></jsp:include><!-- 풋터 -->
</body>
</html>