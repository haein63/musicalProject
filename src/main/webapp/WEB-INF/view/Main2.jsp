<%@page import="java.util.List"%>
<%@page import="com.guksi.dto.MusicalDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>INTERMISSION</title>
</head>

<body>

	<jsp:include page="include/header.jsp"></jsp:include><!-- 헤더 -->
	<jsp:include page="slide.jsp"></jsp:include><!-- 슬라이드 -->
	<jsp:include page="include/menu.jsp"></jsp:include><!-- 메뉴 -->
	<jsp:include page="musical.jsp"></jsp:include><!-- 뮤지컬 -->
	<jsp:include page="include/scroll.jsp"></jsp:include><!-- 스크롤 -->
	<jsp:include page="include/footer.jsp"></jsp:include><!-- 풋터 -->
</body>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	$('#pastB')
			.click(
					function() {
						console.log("clickPast");
						$(".musical_box").children().remove();
						$(".musical_box")
								.append(
										'<c:forEach items="${musicalP}" var="musical">'
												+ '<div class="poster">'
												+ '<img src="img/${musical.poster}" class="img" alt="${musical.title}">'
												+ '<div class="overlay">'
												+ '	<a class="contents" href="musicalInfo?title=${musical.title}">${musical.title}</a>'
												+ '	</div>' + '</div>'
												+ '</c:forEach>')
					})

	$('#currentB')
			.click(
					function() {
						console.log("clickPast");
						$(".musical_box").children().remove();
						$(".musical_box")
								.append(
										'<c:forEach items="${musicalC}" var="musical">'
												+ '<div class="poster">'
												+ '<img src="img/${musical.poster}" class="img" alt="${musical.title}">'
												+ '<div class="overlay">'
												+ '	<a class="contents" href="musicalInfo?title=${musical.title}">${musical.title}</a>'
												+ '	</div>' + '</div>'
												+ '</c:forEach>')
					})
	$('#futureB')
			.click(
					function() {
						console.log("clickPast");
						$(".musical_box").children().remove();
						$(".musical_box")
								.append(
										'<c:forEach items="${musicalF}" var="musical">'
												+ '<div class="poster">'
												+ '<img src="img/${musical.poster}" class="img" alt="${musical.title}">'
												+ '<div class="overlay">'
												+ '	<a class="contents" href="musicalInfo?title=${musical.title}">${musical.title}</a>'
												+ '	</div>' + '</div>'
												+ '</c:forEach>')
					})
		
</script>
</html>
