<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<input type="button" id="insertReply" value="입력">
	<input type="button" id="modifyReply" value="수정">
	<input type="button" id="deleteReply" value="삭제">
	<form id="replyForm">
		<input type="text" name="content" id="content" placeholder="코멘트를 입력해주세요.(500자 제한)">
	</form>
	<ul id="replyResult"></ul>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	$("#insertReply").on("click", function(){
		$.ajax({
			url: 'insertReply',
			type: 'post',
			data: $("#replyForm").serialize(),
			success: function(result){
				console.log(result);
			}
		})
	})
</script>
</html>