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
	<%-- form 요소 작성 03to.jsp로 서브밋 되도록  --%>
	<form action="03to.jsp" method="post">
		<input type="text" name="address" value="seoul">
		<input type="submit" value="전송">
	</form>
</body>
</html>