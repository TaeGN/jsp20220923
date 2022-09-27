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
	<div>
	main contents!!!!
	</div>
	 <jsp:include page="04sub.jsp">
	 	<jsp:param name="address" value="sege"/>
	 	<jsp:param name="name" value="heerh"/>
	 </jsp:include>
	
	<%-- 
	04sub.jsp 출력 결과 포함 (jsp:include 액션 태그 사용)
	 --%>
</body>
</html>





