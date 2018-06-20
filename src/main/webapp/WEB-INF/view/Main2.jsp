<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>INTERMISSION</title>
</head>
<style>
* {
	box-sizing: border-box;
}

.musical_box {
	width: 80%;
	margin: 0 auto;
	text-align: center;
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	background-color: gray;
}

.poster {
	position: relative;
	width: 25%;
	/* max-width:20%; */
	height: 35%;
	/* max-height:30%; */ 
	margin : 10px;
	display: table;
	margin: 10px;
}

.img {
	display: inline-block;
	 width: 100%;
	height: 100%;
}

.overlay {
	position: absolute;
	bottom: 0;
	background: rgba(0, 0, 0, 0.5); /* Black see-through */
	width: 100%;
	height: 100%;
	transition: .5s ease;
	opacity: 0;
	color: white;
	padding: 20px;
	transition: .5s ease;
	font-size: 30px;
	
}

.contents {
	/* position: absolute; */
	top: 30%;
	width:100%;
	text-align: center;
	margin-top: 120px;
	font-size: 25px;
}

.poster:hover .overlay {
	opacity: 1;
}
</style>

<body>

	<jsp:include page="include/header.jsp"></jsp:include><!-- 헤더 -->
	<jsp:include page="include/slide.jsp"></jsp:include><!-- 슬라이드 -->
	<jsp:include page="include/menu.jsp"></jsp:include><!-- 메뉴 -->

	<div class="musical_box">
		<c:forEach items="${musical}" var="musical">
			<div class="poster">
				<img src="img/${musical.poster}" class="img">
				<div class="overlay">
					<div class="contents">${musical.title}</div>
				</div>
			</div>
		</c:forEach>
	</div>

	<jsp:include page="include/scroll.jsp"></jsp:include><!-- 스크롤 -->
	<jsp:include page="include/footer.jsp"></jsp:include><!-- 풋터 -->
</body>
</html>