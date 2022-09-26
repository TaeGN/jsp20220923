<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- form>(input[name="scores"]+br)*3+input:s -->
	<form action="">
		<input type="text" name="scores" value="100">
		<br>
		<input type="text" name="scores" value="90">
		<br>
		<input type="text" name="scores" value="80">
		<br>
		<input type="submit" value="평균구하기">
	</form>
	
	<hr>
	<%-- scores의 값 더해서 3으로 나눈 평균 출력하기 --%>
	
	<%
	String[] scores = request.getParameterValues("scores");
	
	int sum = 0;
	if (scores != null) {
		for(int i = 0; i < scores.length; i++) {
			sum += Integer.valueOf(scores[i]);
		}
	double avg = (double) sum / scores.length;
	%>
	
	평균 : <%= avg %>
	<% 
	}
	%>
</body>
</html>











