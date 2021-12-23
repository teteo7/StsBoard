<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<html>
<head>
<title>Home</title>
</head>
<body>
	<h1>Hello world!</h1>

	<P>The time on the server is ${serverTime}.</P>
	<p>여기는 홈이에요</p>

	<form action="/upload_image" id="image_upload_form" method="post" enctype="multipart/form-data">
		<input type="file" name="uploadFile" multiple>
		<input type="submit">
	</form>


	<a href="/JqueryAjax">JqueryAjax</a>
<%-- 	<script type="text/javascript"	src="${path}\resources\js\jquery-3.6.0.min.js"></script> --%>

</body>
</html>
