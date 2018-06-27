<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	font-size: 14px;
	text-align: left;
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
	position: absolute;
}

</style>
<body>
	<jsp:include page="include/header.jsp"></jsp:include><!-- 헤더 -->
	<br>
	<jsp:include page="include/scroll.jsp"></jsp:include><!-- 스크롤 -->
	<div class="infoM">
		<a class="infoPoster">뮤지컬 포스터</a> <br> <img alt="1"
			src="img/${musical.poster}">
		<ul>
			<li class="detail">뮤지컬 이름:${musical.title}
			<li class="detail">뮤지컬 공연장:${musical.hall}
			<li class="detail">뮤지컬 캐스트:${musical.casting}
			<li class="detail">뮤지컬 공연기간:${musical.startDate} ~
				${musical.endDate}
		</ul>
	</div>
	
	<jsp:include page="include/footer.jsp"></jsp:include><!-- 풋터 -->
</body>

</html>
