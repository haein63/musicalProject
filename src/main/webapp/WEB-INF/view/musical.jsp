<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri= "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>css/musical.css">
<body>
	<div class="musical_box">
		<div class="poster">
			<c:forEach items="${musical}" var="musical">
				<img src="img/${musical.poster}" class="img" alt="1">
				<div class="overlay">
					<div class="contents">${musical.title}</div>
				</div>
			</c:forEach>
		</div>
	</div>

	<jsp:include page="include/scroll.jsp"></jsp:include><!-- 스크롤 -->

</body>
</html>