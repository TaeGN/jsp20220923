<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 구구단 출력 --%>
	<%-- request parameter "dan" --%>
<c:if test="${empty param.dan }" var="emptyDan">
	<h3>dan을 입력해주세요.</h3>
</c:if>
<c:if test="${not emptyDan }">
	<h3>구구단 ${param.dan }단 출력</h3>
	<c:forEach var="i" begin="1" end="9">
		<h3>${param.dan } x ${i } = ${param.dan * i }</h3>
	</c:forEach>
</c:if>


</body>
</html>








