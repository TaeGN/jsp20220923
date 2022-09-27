<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% 
List<String> list = (List<String>) request.getAttribute("list1");
Map<String, String> map = (Map<String, String>) request.getAttribute("map1");

for(int i = 0; i < list.size(); i++) {
	out.print("<p>" + list.get(i) + "</p>");
}
	out.print("<p>" + map.get("jisu") + "</p>");
	out.print("<p>" + map.get("v") + "</p>");
%>
<br>

<%
for(int i = 0; i < list.size(); i++) { %>
	<p><%= list.get(i) %></p>
<% } %>
	<p><%= map.get("jisu") %></p>
	<p><%= map.get("v") %></p>
	
	
