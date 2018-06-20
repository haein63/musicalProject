<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link href="https://fonts.googleapis.com/css?family=Anton|Nanum+Gothic"
	rel="stylesheet">
<style>
* {
	margin: 0px;
	padding: 0px;
}

.footer_box {
	width: 100%;
	height: 200px;
	background-color: #9b886f;
	display: flex;
	flex-direction: column;
	justify-content: space-around;
	align-items: center;
	justify-content: space-around;
}

.logo_info_box {
	width: 60%;
	height: 80%;
	background-color: #9b886f;
	display: flex;
	flex-direction: row;
	justify-content: space-around;
	align-items: center;
	justify-content: space-around;
}

.logo {
	width: 15%;
	font-family: Anton;
	font-size: 20px;
	align-items: right;
	text-align: right;
	
}

.info {
	width: 90%;
	background-color: #9b886f;
	display: flex;
	flex-direction: column;
	justify-content: space-around;
	align-items: center;
	justify-content: space-around;
	font-family: Nanum + Gothic;
	font-size: 14px;
	text-align: left;
}

.copyright {
	width: 100%;
	height: 40%;
	height: 22px;
	font-family: Nanum + Gothic;
	font-size: 10px;
	text-align: center;
	background-color: #9b886f;
}
</style>
<div class="footer_box">
	<div class="logo_info_box">
		<div class="logo">
			INTER<br />MISSION
		</div>
		<div class="info">
			(16313) 311, SUSEONG-RO, JANAGAN-GU, SUWON-SI, GYEONGGI-DO<br />
			TEL: 010-XXXX-XXXX<br /> E-MAIL: intermission@naver.com
		</div>
	</div>
	<div class="copyright">Copyright 2018 by INTERMISSION. All Rights
		Reserved.</div>
</div>

