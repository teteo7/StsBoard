<%@ page language= "java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

    
<!DOCTYPE html>
<html>
<head>

<title>Insert title here</title>
</head>
<body>

<!--Button을 누르면 idCheck로 요청  -->
	<form id="loginForm">
		<input type="text" name="id1" value="TestId"> <br>
		<input type="text" name="pw1" value="TestPw"> <br>

		<Button class="login_url" type="Button" id="idCheck">전송</Button>
	</form>


<script type="text/javascript" src="${path}\resources\js\jquery-3.6.0.min.js"></script>

<!-- ajax.js 호출  -->
<script type="text/javascript" src="${path}\resources\js\ajax.js"></script>

<!-- ajax.js에 ajax()메소드 호출해서 사용 -->
<script>
$(function() {
    var url = $('#loginForm .login_url').attr('id');
    console.log("url check: "+url);
    ajax(url);
});
</script>

</body>
</html>