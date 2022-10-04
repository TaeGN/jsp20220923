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
	<%-- 중첩된 foreach 사용해서 구구단 2~9단 까지 모두 출력 --%>
<c:forEach var="dan" begin="2" end="9">
	<h1>구구단 ${dan }단을 출력</h1>
	<c:forEach var="num" begin="1" end="9">
		<h3>${dan } x ${num } = ${dan * num }</h3>
	</c:forEach>
	<hr>
</c:forEach>
</body>
</html>








