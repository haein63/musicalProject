<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">

</script>
<style>
.header_box {
	position: absolute;
	top: 0px;
}

.footer_box {
	bottom: 0px;
	position: absolute;
}

.Mtable {
	margin: 0 auto;
	text-align: center;
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	display: flex;
	flex-direction: column;
	justify-content: space-around;
	align-items: center;
	justify-content: space-around;
	font-size: 20px;
	text-align: left;
}

.memInfo {
	width: 30%;
	height: 30%;
	text-align: center;
	table-layout: auto;
}

#id, #name, #email, #joindate {
	font-size: 20px;
	border: none;
	border-collapse: separate;
	border-spacing: 2px;
}
.modify{
	display: inline-block;
}
</style>
<body>

	<jsp:include page="include/header.jsp"></jsp:include><!-- 헤더 -->
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>



	<div class="Mtable">
		<table border="1" class="memInfo">
			<tr>
				<td colspan="2"><h3>회원 정보</h3>
			</tr>
			<tr>
				<td>회원 아이디</td>
				<td><input type="text" value=${member.id } name="id" id="id"
					readonly="readonly"></td>
			</tr>
			<tr>
				<td>회원 이름</td>
				<td><input type="text" value=${member.name } name="name"
					id="name" readonly="readonly"></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" value=${member.email } name="email"
					id="email" readonly="readonly"></td>
			</tr>
			<tr>
				<td>가입 날짜</td>
				<td><input type="text" value=${member.joindate }
					name="joindate" id="joindate" readonly="readonly"></td>
			</tr>


		</table>
		
	<div class="modify">
		<input type="button" name="update" id="update" class="update" value="수정"> 
		<input type="button" name="del" id="del" value="삭제">
	</div>
	</div>
	<jsp:include page="include/footer.jsp"></jsp:include><!-- 풋터 -->
</body>
<script>
update();
delete1();
function delete1(){
	$("#del").on("click",function(){ 
     if (confirm("삭제 하시겠습니까?") == true)
     { 
   		$.ajax({
 			url : "del",
 			data :{
 				id : $("#id").val(),
 			}
   		});
     alert("삭제 되었습니다.");
     location.href="Main2";
     } else {
         alert("취소 되었습니다.")
             };
	}
	)
}



function update(){
	$("#update").on("click",function(){ 
		$("#update").attr('value','완료');
		$("#name").attr("readonly",false);
		$("#email").attr("readonly",false);
		$("#update").attr("id","up");
		up();
	});
}
function up(){
	$("#up").on("click",function(){
		$("#up").attr('value','수정');
		$("#name").attr("readonly",true);
		$("#email").attr("readonly",true);
		$("#update").attr("id","update");
		
		$.ajax({
			url : "memberupdate",
			data :{
				id : $("#id").val(),
				name : $("#name").val(),
				email :$("#email").val()
			},
		success:function(data){
			alert("성공");	
		}
		})
		
	});
}



</script>
</html>
