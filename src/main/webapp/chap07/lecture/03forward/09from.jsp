<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%
Map<String, String> map = Map.of("trump", "new york", "donald", "chicago");

request.setAttribute("address", map);
%>

<jsp:forward page="09to.jsp"></jsp:forward>