<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="jsp20220923.chap07.*" %>
<%
List<Person> list = new ArrayList<>();
list.add(new Person());
list.add(new Person());
list.add(new Person());
list.get(0).setName("감자바");
list.get(1).setName("신용권");
list.get(2).setName("트럼프");

request.setAttribute("list", list);

%>


<jsp:forward page="11to.jsp"></jsp:forward>
    
