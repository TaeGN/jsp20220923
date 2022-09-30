<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	pageContext.setAttribute("myName", "유재석");
	request.setAttribute("myName", "김종국");
	
	pageContext.setAttribute("your Name", "강호동");
	request.setAttribute("99name", "지석진");
	%>
	
	<h1>${myName }</h1>
	<h1>${requestScope.myName }</h1>
	<h1>${pageScope["your Name"] }</h1>
	<h1>${requestScope["99name"] }</h1>
</body>
</html>













