<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%

	Object o = request.getAttribute("myMap");
	Map<String, String> map = (Map<String, String>) o;
	if (map != null) {
%>
		<p>name : <%= map.get("name")  %></p> <%-- null이 아닌 값이 출력 --%>
		<p>address : <%= map.get("address") %></p> <%-- null이 아닌 값이 출력 --%>
		<p>age : <%= map.get("age") %></p>
<%
	}
%>