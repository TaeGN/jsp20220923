<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, jsp20220923.chap07.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
attribute 에 List<Car> 타입 객체 추가

--%>
<%
	List<Car> list = new ArrayList<>();
	Car c1 = new Car();
	c1.setModel("AAA");
	c1.setPrice(5000);
	list.add(c1);
	
	list.add(new Car());
	list.get(1).setModel("BBBBBBBB");
	list.get(1).setPrice(888888888);
	
	
	request.setAttribute("cars", list);
	
%>
	<p>${cars[0].company }</p>
	<p>${cars[0].price }</p>
	<p>${cars[0].model }</p> <hr>
	<p>${cars[1].company }</p>
	<p>${cars[1].price }</p>
	<p>${cars[1].model }</p>
</body>
</html>






