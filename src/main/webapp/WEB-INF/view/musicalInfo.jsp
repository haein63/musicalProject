<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
</head>

<body>


	<a class="poster">뮤지컬 포스터</a>
	<img alt="1" src="img/#{musical.poster}">
	<ul>
		<li>뮤지컬 이름:#{musical.title}
		<li>
		<li>뮤지컬 공연장:#{musical.hall}
		<li>
		<li>뮤지컬 캐스트:#{musical.cast}
		<li>
		<li>뮤지컬 공연기간:#{musical.startDate}~#{musical.endDate}
		<li>
	</ul>
</body>

</html>
