<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="" method="post">
	<input type="radio" name="sign1" value="a"> 
	회원정보에 등록한 휴대전화로 인증 
	<br>
	<input type="radio" name="sign1" value="b">
	본인확인 이메일로 인증
	<br>	
</form>
	<%
	String sign1 = request.getParameter("sign1");
	if(sign1.equals("a")) {
		%>
		<form action="" method="post">
		이름 : 
		<input type="text" name="name"> <br>
		휴대전화 : 
		<input type="number" name="num"> <br>
		</form>
		<% 
	} else {
		
	}
	%>
</body>
</html>