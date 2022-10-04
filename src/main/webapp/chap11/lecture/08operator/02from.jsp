<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>


<%
request.setAttribute("num1", 99);
request.setAttribute("num2", 7);
request.setAttribute("num3", 54);
request.setAttribute("num4", 37);
request.setAttribute("n5", 24);
request.setAttribute("n6", 11);
request.setAttribute("n7", 35);
request.setAttribute("n8", 3);
request.setAttribute("num9", 77);
request.setAttribute("num10", 6);
%>
<jsp:forward page="02to.jsp" />


<%-- 	<p>+ : ${num1 + num2 }</p>
	<p>- : ${num3 - num4 }</p>
	<p>* : ${n5 * n6 }</p>
	<p>/ : ${n7 / n8 }</p>
	<p>% : ${num9 % num10}</p> --%>