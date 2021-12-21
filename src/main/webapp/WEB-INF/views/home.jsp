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

	<a href="/JqueryAjax">JqueryAjax</a>
	
<script type="text/javascript" src="${path}\resources\js\jquery-3.6.0.min.js"></script>

 

</body>
</html>
