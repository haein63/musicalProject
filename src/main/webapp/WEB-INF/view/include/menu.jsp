<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
.main_box {
	background-color: gray;
	width: 100%;
	height: 70px;
	margin: 0 auto;
	text-align: center;
}

.btn-group .button {
	background-color: #4CAF50; /* Green */
	border: 1px solid green;
	color: white;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	cursor: pointer;
	height: 60px;
	width: 180px;
	border-radius: 8px;
}

.btn-group

 

.button


:not

 

(
:last-child

 

)
{
border-right


:

 

none


; /* Prevent double borders */
}
.btn-group .button:hover {
	background-color: #3e8e41;
}
</style>
<body>
	<div class="main_box">
		<div class="btn-group">
			<button class="button" id="pastB">지난 공연</button>
			<button class="button" id="currentB">현재 공연</button>
			<button class="button" id="futureB">공연 예정</button>
		</div>
	</div>
</body>
</html>