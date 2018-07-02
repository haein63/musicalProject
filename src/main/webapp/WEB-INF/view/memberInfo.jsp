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

.Mtable{
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
	font-size: 20px;
	text-align: left;
}

.memInfo{
width: 30%;
height: 30%;
text-align: center;
table-layout: auto;
}

</style>

<body>

	<jsp:include page="include/header.jsp"></jsp:include><!-- 헤더 -->
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>



<div class="Mtable">
<table border="1" class="memInfo">
		<tr>
			<td colspan="2"><h3>회원 정보</h3>
		</tr>
		<tr>
			<td>회원 아이디</td>
			<td>${member.id }</td>
		</tr>
		<tr>
			<td>회원 이름</td>
			<td>${member.name }</td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td>${member.password }</td>
		</tr>
		<tr>
			<td>이메일</td>
			<td>${member.email }</td>
		</tr>
		<tr>
			<td>가입 날짜</td>
			<td>${member.joindate }</td>
		</tr>
		
	</table>
	</div>
<jsp:include page="include/footer.jsp"></jsp:include><!-- 풋터 -->
</body>
</html>