<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="jsp20220923.chap07.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- request에 attribute 추가해서 13sub.jsp에 null 출력되지 않도록 하기 --%>
<%
	Map<String, Book> map = new HashMap<>();
	map.put("book1", new Book("국어", 3000));
	map.put("book2", new Book("수학", 5000));
	
	request.setAttribute("books", map);

%>
<jsp:include page="13sub.jsp"></jsp:include>
<hr>
<jsp:include page="13sub-el.jsp"></jsp:include>
</body>
</html>