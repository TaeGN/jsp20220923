<%@page import="java.util.*, jsp20220923.chap07.*"%>
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
	두개의 entry를 가진 
	Map<String, Person> 타입 객체를 attribute에 넣고
	entry의 value들의 프로퍼티 el로 출력하는 코드 작성
	
	 --%>
	<%
	Map<String, Person> m = new HashMap<>();
	m.put("key1", new Person());
	m.get("key1").setAge(30);
	m.get("key1").setName("자바자바");
	m.get("key1").setAlive(true);
	
	
	Person p2 = new Person();
	p2.setAge(500);
	p2.setName("자바칩");
	p2.setAlive(false);
	m.put("key2", p2);
	
	request.setAttribute("map", m);
	%>
	
	<h1>${map.key1.age }</h1>
	<h1>${map.key1.name }</h1>
	<h1>${map.key1.alive }</h1> <hr>
	<h1>${map.key2.age }</h1>
	<h1>${map.key2.name }</h1>
	<h1>${map.key2.alive }</h1>
</body>
</html>




