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

body {
	background-color: white;
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
	width: 20%;
	max-height: 30%;
	margin: 10px;
	display: table;
	margin: 10px;
}

.img {
	display: inline-block;
	width: 100%;
	height: 355px;
}

.overlay {
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background: rgba(0, 0, 0, 0.5);
	width: 100%;
	height: 355px;
	transition: .5s ease;
	opacity: 0;
	color: white;
	/* padding: 20px; */
	transition: .5s ease;
	font-size: 30px;
	text-align: center;
}

.contents {
	/* margin-top: 30%; */
	width: 100%;
	height: 100%;
	/* text-align: center; */
	/* margin-top: 120px; */
	font-size: 25px;
	text-decoration: none;
	display: block;
	text-align: center;
}

.MT {
	width:100%;
	padding:20px;
	margin-top:40%;
	height: 70%;
	text-align: center;
	font-size: 25px;
	text-decoration: none;
	position: absolute;
	display: block;
}

.poster:hover .overlay {
	opacity: 1;
}
</style>

<body>

	<div class="musical_box" id="current">
		<c:forEach items="${musicalC}" var="musical">
			<div class="poster">
				<img src="img/${musical.poster}" class="img" alt="${musical.title}">
				<div class="overlay">
					<a class="contents" href="musicalInfo?title=${musical.title}">
						<strong class="MT">${musical.title}</strong>
					</a>
				</div>

			</div>
		</c:forEach>
	</div>


</body>

</html>
