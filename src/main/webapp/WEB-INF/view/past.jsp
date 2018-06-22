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
	width: 20%;
	/* max-width:30%; */
	/* height: 30%; */
	max-height: 30%;
	margin: 10px;
	display: table;
	margin: 10px;
}

.img {
	display: inline-block;
	width: 100%;
	height: 100%;
	/* max-height: 100%; */
}

.overlay {
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background: rgba(0, 0, 0, 0.5);
	width: 100%;
	/* height: 100%; */
	/* max-height:100%; */
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
	width: 100%;
	text-align: center;
	margin-top: 120px;
	font-size: 25px;
}

.poster:hover .overlay {
	opacity: 1;
}
</style>

<body>
	
	<div class="musical_box" id="current">
		<c:forEach items="${musicalP}" var="musical">
				<div class="poster" onclick="location.href='musicalInfo?${musical.title}'">
					<img src="img/${musical.poster}" class="img" alt="${musical.title}">
					<div class="overlay">
						<div class="contents">${musical.title}</div>
					</div>
					
				</div>
		</c:forEach>
	</div>
	<%-- 
	<div class="musical_box" id="past" style="visibility: hidden;">
		<c:forEach items="${musicalP}" var="Cmusical">
			<div class="poster">
				<img src="img/${Cmusical.poster}" class="img">
				<div class="overlay">
					<div class="contents">${Cmusical.title}</div>
				</div>
			</div>
		</c:forEach>
	</div>

	<div class="musical_box" id="future" style="visibility: hidden;">
		<c:forEach items="${musicalF}" var="Cmusical">
			<div class="poster">
				<img src="img/${Cmusical.poster}" class="img">
				<div class="overlay">
					<div class="contents">${Cmusical.title}</div>
				</div>
			</div>
		</c:forEach>
	</div> --%>

</body>
<script>
	/* $(document).ready(function name() {
	 $('#pastB').click(function() {
	 console.log(past);
	 $("#past").css("visibility", "visible");
	 $("#future").css("visibility", "hidden");
	 $("#current").css("visibility", "hidden");

	 });

	 $('#futureB').click(function() {
	 console.log(future);

	 $("#past").css("visibility", "hidden");
	 $("#future").css("visibility", "visible");
	 $("#current").css("visibility", "hidden");

	 });

	 $('#currentB').click(function() {
	 console.log(current);
	 $("#past").css("visibility", "hidden");
	 $("#future").css("visibility", "hidden");
	 $("#current").css("visibility", "visible");
	 });
	 }) */
	 
	 /* 
	 $('#currentB').click(function() {
		movepage();
		 });
		 })
	 function movepage() {
      $.ajax({
        url: "",
        dataType: "",
        success: function(html) {
          $('#fu').replaceWith($.parseHTML(html));
          setTimeout(refresh,2000);
        }
      });
    } */
	 
</script>
</html>
