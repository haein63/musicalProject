<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<html lang="en">
<head>
</head>
<style>
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
	bottom: 0px;
	/* position: absolute; */
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
			<td>뮤지컬 이름</td>
			<td>${musical.title}</td>
		</tr>
		<tr>
			<td>뮤지컬 공연장</td>
			<td>${musical.hall}</td>
		</tr>
		<tr>
			<td>뮤지컬 캐스트</td>
			<td>${musical.casting}</td>
		</tr>
		<tr>
			<td>뮤지컬 공연기간</td>
			<td><fmt:formatDate pattern = "yyyy-MM-dd" 
         value = "${musical.startDate}" /> ~
         <fmt:formatDate pattern = "yyyy-MM-dd" 
         value = "${musical.endDate}" />
				</td>
		</tr>
		
	</table>	
	</div>
	<br>
	<jsp:include page="include/footer.jsp"></jsp:include><!-- 풋터 -->
</body>
<script>

</script>
</html>
