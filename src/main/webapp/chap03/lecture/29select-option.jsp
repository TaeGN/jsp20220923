<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>select option 연습</h1>
<form action="">
	<!-- select>option[name="tel" value="val$"]*3 -->
	통신사 : 
	<select name="tel">
		<option value="SKT">skt</option>
		<option value="KT">kt</option>
		<option value="LG">lg</option>
	</select>
	
	<hr>
	
	<!-- select>option[name="food" value=""]*3 -->
	음식 : 
	<select name="foods" multiple="multiple">
		<option value="pizza">pizza</option>
		<option value="bread">bread</option>
		<option value="coffee">coffee</option>
	</select>
	
	<br>
	
	<input type="submit" value="전송">
</form>	
	<hr>
	
	
	
	<%
	String tel = request.getParameter("tel");
	String[] foods = request.getParameterValues("foods");
	
	if (tel == null) {
		tel = "";
	}
	
	if (foods == null) {
		foods = new String[]{};
	}
	
	%>
	<p>통신사는 <%= tel %>이고 <br>
	선택한 음식들은 <%= String.join(", ", foods)  %>입니다.</p>
	
</body>
</html>













