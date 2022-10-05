<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<%
HashMap<String,Object> mapData = new HashMap<>();
mapData.put("name", "최범균");
mapData.put("today", new java.util.Date());
%>
<c:set var="intArray" value="<%= new int[] {1,2,3,4,5} %>"></c:set>
<c:set var="map" value="<%= mapData %>"></c:set>

<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>
<h4>1부터 100까지 홀수의 합</h4>
<c:set value="0" var="sum"></c:set>
<c:forEach var="i" begin="1" end="100" step="2">
	<c:set value="${sum + i }" var="sum"></c:set>
</c:forEach>
결과 = ${sum }

<h4>구구단 : 4단</h4>
<ul>
<c:forEach var="i" begin="1" end="9">
	<li>4 x ${i } = ${4 * i }</li>
</c:forEach>
</ul>

<h4>int형 배열</h4>

<c:forEach var="i" items="${intArray }" begin="2" end="4" varStatus="status">
	${status.index }-${status.count }-[${i }] <br>
</c:forEach>

<h4>Map</h4>

<c:forEach var="i" items="${map }">
	${i.key } = ${i.value } <br>
</c:forEach>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>