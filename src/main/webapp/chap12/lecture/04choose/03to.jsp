<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:choose>
		<c:when test="${param.genre == 'comedy' }">
			comedy
		</c:when>
		<c:when test="${param.genre == 'family' }">
			family
		</c:when>
		<c:when test="${param.genre == 'action' }">
			action
		</c:when>
	</c:choose>
</body>
</html>