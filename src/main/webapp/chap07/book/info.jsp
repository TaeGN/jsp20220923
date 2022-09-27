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
<table width="100%" border="1" cellpadding="0" cellspacing="0">
	<tr>
		<td>제품번호</td>
		<td>XXXX</td>
	</tr>
	<tr>
		<td>가격</td>
		<td>10,000원</td>
	</tr>	
<jsp:include page="infoSub.jsp">
	<jsp:param value="A" name="type"/>
</jsp:include>
<jsp:include page="infoSub.jsp">
	<jsp:param value="B" name="type"/>
</jsp:include>
<jsp:include page="infoSub.jsp">
	<jsp:param value="C" name="type"/>
</jsp:include>
</table>


</body>
</html>