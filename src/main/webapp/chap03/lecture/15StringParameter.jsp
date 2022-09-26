<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- form>input+input:s -->
<form action="">
	<input type="text" name="x">
	<input type="submit" value="">
</form>

<%
String x = request.getParameter("x");
Integer numX = 0;
if(x != null) {
	numX = Integer.valueOf(x);	
}

%>

<p> <%= numX %>의 제곱은 <%= numX * numX %>입니다. </p>

</body>
</html>