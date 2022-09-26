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
	String name = request.getParameter("name");
	String address = request.getParameter("address");
	String[] animal = request.getParameterValues("animal");
	
	if (animal == null) {
		animal = new String[]{};
	}
	%>
	
	<hr>
	
	이름 : <%= name %> <br>
	주소 : <%= address %> <br>
	좋아하는 동물 : <%= String.join(", ", animal) %> 
</body>
</html>