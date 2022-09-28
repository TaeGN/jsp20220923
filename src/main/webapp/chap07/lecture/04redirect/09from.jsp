<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%
// session에 attribute 추가하기
session.setAttribute("num1", 30);
session.setAttribute("num2", 50);
response.sendRedirect("09to.jsp");
%>