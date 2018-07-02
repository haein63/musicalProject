<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link
	href="https://fonts.googleapis.com/css?family=Anton|Nanum+Gothic|Francois+One|Krona+One|Passion+One"
	rel="stylesheet">
	
<style>
* {
	margin: 0px;
	padding: 0px;
}
.header_box{
width: 100%;
height: 40px;
background-color: #E4E4E4;
display: flex;
flex-direction: row;
justify-content: space-around;
align-items: center;
}
.logo_box{
width: 10%;
height: 40px;
font-family: Anton;
font-size: 25px;
text-decoration: none;
color: black;

}
.sign_box{
width: 13%;
height: 40px;
display: flex;
flex-direction: row;
justify-content: space-between;
align-items: center;
}
.empty_box{
width: 65%;
height:40px;
}
.login{
width: 40%;
font-family: Nanum+Gothic;
font-size: 15px;
text-align: center;
}
.separation{
width: 5%;
text-align: center;
}
.join{
width: 40%;
font-family: Nanum+Gothic;
font-size: 15px;
text-align: center;
}
</style>
<div class="header_box">

	<a class="logo_box" href="Main2">INTERMISSION</a>

	<div class="empty_box"></div>
	<div class="sign_box">
		<%
		if(session.getAttribute("id")==null || session.getAttribute("id")==""){	
		%>
		<input class="login" type="button" value="로그인" onclick="location.href='login'">
		<div class="separation">/</div>
		<input class="join" type="button" value="회원가입" onclick="location.href='join'">
		<%
		}else{
		%>
		<input class="login" type="button" value="로그아웃" onclick="location.href='logout.do'">
		<div class="separation">/</div>
		<input class="toDeleteForm" type="button" value="회원정보" onclick="location.href='memberInfo'">
		<%
		}
		%>

	</div>

</div>
