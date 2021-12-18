<%@ page language= "java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
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

	<form>
		<input type="text" name="id1" value="TestId"> <br>
		<input type="text" name="pw1" value="TestPw"> <br>

		<Button type="Button" id="idCheck">전송</Button>
	</form>

<script src="${path}/resources/js/jquery-3.6.0.min.js"></script>

<script>

$(function() {
	idCheck();
});


function idCheck(){
$("#idCheck").on('click', function() {
	
	var id = $("input:text[name='id1']").val();
	var pw = $("input:text[name='pw1']").val();
	var id2 = id;
	var box = {userId:id, userPw:pw};
	
	
	console.log(typeof pw);
	console.log(pw);
	
	/* document.writeln(typeof id)
	document.writeln(id)
	
	document.writeln(typeof pw)
	document.writeln(pw)
	
	document.writeln(typeof box)
	document.writeln(box) */
	
	$.ajax({
		url:"idCheck",
		method:"post",
		contentType:"application/json;charset=utf-8",
		data: JSON.stringify(box),
		success:function(data){
			if(data=="1"){
				alert("아이디 중복");
				console.log("잘됬어요");
			}
		}, error:function(request,status,error){
			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});
	
	
});
}  

/*  function idCheck(){
	$("#idCheck").on('click', function() {
		
		var id = $("input:text[name='id1']").val();
		$.ajax({
			url:"idCheck",
			method:"GET",
			contentType:'application/html;charset=utf-8',
			dataType:"json",
			data:{userId:id},
			success:function(data){
				if(data=="1"){
					alert("아이디 중복")
					console.log("잘됬어요");
				}
			}, error:function(request,status,error){
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		});
	});
}   */




/*  function idCheck(){
	
	$("#idCheck").on('click', function() {
		$.ajax({
			url:"idCheck",
			type:"GET",
			contentType:"html" ,
			dataType:"html",
			
			success:function(data){
				if(data==1){
					alert("아이디 중복")
					console.log("잘됬어요");
				}
			}, error:function(request,status,error){
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		});
	});
	
}  */




</script>
</body>
</html>
