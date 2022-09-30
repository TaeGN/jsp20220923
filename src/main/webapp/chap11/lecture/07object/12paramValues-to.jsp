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
<h1> 이름!!!!!! : ${param.n } </h1><br>
<h1> 히어로들!! : ${paramValues.heros[0] } 
${paramValues.heros[1] }
${paramValues.heros[2] }
${paramValues.heros[3] }
${paramValues.heros[4] }
</h1>
</body>
</html>