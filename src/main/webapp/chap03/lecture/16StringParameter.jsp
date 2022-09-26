<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>스트링 파라미터를 다른 타입으로 변경</h1>
	<form action="">
		영어 : <input type="text" name="e"> <br>
		수학 : <input type="text" name="m"> <br>
		국어 : <input type="text" name="k"> <br>
		
		<%-- submit 버튼 value 속성 : 버튼에 표시되는 내용 --%>
		<input type="submit" value="평균 구하기">
	
	</form>
		<%
		String e = request.getParameter("e");
		String m = request.getParameter("m");
		String k = request.getParameter("k");
		Integer a = 0;
		Integer b = 0;
		Integer c = 0;
		if(e != null && m != null && k != null) {
			a = Integer.valueOf(e);
			b = Integer.valueOf(m);
			c = Integer.valueOf(k);	
		}
		double avg = (a + b + c) / 3.0;
		%>
		
		평균 : <%= avg %>
	
	<hr>
	<%-- 영어, 수학, 국어 점수의 평균 구하기 --%>
</body>
</html>












