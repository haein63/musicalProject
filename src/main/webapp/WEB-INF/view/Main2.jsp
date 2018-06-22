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
<script>
	$('#currentB').click(function() {
		toPast();
	})
	
	function toPast() {
		$.ajax({
			url : "past.jsp",
			dataType : "json",
			success : function(html) {
				$('#fu').replaceWith($.parseHTML(html));
			}
		});
	}
</script>
</html>
