<%@ page language= "java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<p>여기는 홈이에요</p>


<!--Button을 누르면 idCheck로 요청  -->
	<form id="loginForm">
		<input type="text" name="id1" value="TestId"> <br>
		<input type="text" name="pw1" value="TestPw"> <br>

		<Button class="login_url" type="Button" id="idCheck">전송</Button>
	</form>

<script type="text/javascript" src="${path}\resources\js\jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="${path}\resources\js\ajax.js"></script>
<script>
$(function() {
    var url = $('#loginForm .login_url').attr('id');
    console.log("url check: "+url);
    ajax(url);
    
});
</script>

<!-- <script>
// 작성한 메소드를 선언해줘야 한다.
$(function() {
	var url = $('Button').attr('id');
	idCheck(url);
});

// 테스트 테스트 함수
// $.ajax의 url: 데이터를 처리할 controller
// method: 전송방식
// contentType: 보내는 데이터 타입
// data: 서버에서 받을 데이터 타입.
   
   
function idCheck(){
$("#idCheck").on('click', function() {
	
	var id = $("input:text[name='id1']").val();
	var pw = $("input:text[name='pw1']").val();
	var id2 = id;
	var box = {userId:id, userPw:pw};
	var url = $('Button').attr('id'); 
	



	
	console.log(typeof pw);
	console.log(pw);
	console.log(url);
	
	$.ajax({
		url:"idCheck",
		method:"post",
		contentType:"application/json;charset=utf-8",
		data: JSON.stringify(box),
		success:function(data){
			if(data=="1"){
				alert("잘됐어요");
				console.log("잘됬어요");
				console.log(data);
			}
		}, error:function(request,status,error){
			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});
});
}
</script> -->
 

</body>
</html>
