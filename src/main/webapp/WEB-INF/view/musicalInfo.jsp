<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<html lang="en">
<head>
</head>
<style>

@import url(http://fonts.googleapis.com/earlyaccess/jejugothic.css);

*{
	font-family: 'Jeju Gothic', serif;
}

.infoM {
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
}

.memInfo{
font-size: 16px;
width: 75%;
height: 30%;
}

img {
	width: 20%;
	height: 30%;
}

.header_box {
	position: absolute;
	top: 0px;
}

.footer_box {
	bottom: 0;
	
}
.li{
text-align: center;
}

</style>
<body>
	<jsp:include page="include/header.jsp"></jsp:include><!-- 헤더 -->
	<br>
	<jsp:include page="include/scroll.jsp"></jsp:include><!-- 스크롤 -->
	<div class="infoM">
		<a class="infoPoster">뮤지컬 포스터</a> <br> <img alt="1"
			src="img/${musical.poster}">
		<br>	
		<table border="1" class="memInfo">
		<tr>
			<td class="li">뮤지컬 이름</td>
			<td>${musical.title}</td>
		</tr>
		<tr>
			<td class="li">뮤지컬 공연장</td>
			<td>${musical.hall}</td>
		</tr>
		<tr>
			<td class="li"><p>뮤지컬 캐스트</p></td>
			<td>${musical.casting}</td>
		</tr>
		<tr>
			<td class="li"><p>뮤지컬 공연기간</p></td>
			<td><fmt:formatDate pattern = "yyyy-MM-dd" value = "${musical.startDate}" /> ~
         		<fmt:formatDate pattern = "yyyy-MM-dd" value = "${musical.endDate}" /></td>
		</tr>
		
	</table>	
	</div>
	<br>
		<br>
	<jsp:include page="include/footer.jsp"></jsp:include><!-- 풋터 -->
</body>
<script>
if(${message}==0){
	alert('로그인이 필요합니다.');
	history.go(-1);
}else if(${message}==1){
}
</script>
</html>
