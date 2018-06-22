<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%
String context = request.getContextPath();
%>
<style>

.layer{

  position:absolute;
  width:100px;
  height:100px;
  top: 10%;
  left:40%;

}



</style>
<body>
<jsp:include page="include/header.jsp"></jsp:include><!-- 헤더 -->
<div class="layer">
<form action="joinResult" method="post">
<fieldset id="joinForm">
	
	<legend>회원 가입</legend>
	<input type="text" name="id" placeholder="id">
	<br>
	<br>
	<input type="text" name="name" placeholder="name">
	<br>
	<br>
	<input type="text" name="email" placeholder="email">
	<br>
	<br>
	<input type="password" name="password" placeholder="password">
	<br>
	<br>
	<input type="submit" value="가입">
	<br>
	<br>
	<a href="<%=context %>/Main2">Home으로</a>
</fieldset>

</form>
</div>
<jsp:include page="include/footer.jsp"></jsp:include><!-- 풋터 -->
</body>
</html>