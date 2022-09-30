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
	<%--
	attribute에 추가 하는 코드 작성
	 --%>
	<%
		String[] arr = {"fsf","sgegs","segesg"};
		request.setAttribute("song", arr);
	%>
	
	<hr>
	<p>${song[0] }</p> <%-- 값 출력 --%>
	<p>${song[1] }</p> <%-- 값 출력 --%>
	<p>${song[2] }</p> <%-- 값 출력 --%>
</body>
</html>