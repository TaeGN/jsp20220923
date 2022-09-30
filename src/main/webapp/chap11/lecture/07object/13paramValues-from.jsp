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
	<form action="13paramValues-to.jsp" method="post">
		<input type="date" name="date"> <br>
		옷 <input type="checkbox" name="prod" value="옷">
		신발 <input type="checkbox" name="prod" value="신발">
		사과 <input type="checkbox" name="prod" value="사과">
		가방 <input type="checkbox" name="prod" value="가방">
		커피 <input type="checkbox" name="prod" value="커피"> <br>
		<input type="submit" value="전송">
	</form>
</body>
</html>