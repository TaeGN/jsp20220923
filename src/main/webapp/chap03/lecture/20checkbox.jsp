<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- 적절한 html 코드를 작성 --%>
<%-- name="name"인 요소는 text field로 만들기 --%>
<%-- name="heros"인 요소는 checkbox로 만들기 --%>
<!-- form>input[name="name"]+(input:c[name="heroes"])*5 -->
<form action="">
	<input type="text" name="name" value="감자바"> <br>
	<input type="checkbox" name="heroes" value="a"> a
	<input type="checkbox" name="heroes" value="b"> b
	<input type="checkbox" name="heroes" value="c"> c
	<input type="checkbox" name="heroes" value="d"> d
	<input type="checkbox" name="heroes" value="e"> e
	<br>
	<input type="submit" value="전송">
</form>

<hr>
<%
String name = request.getParameter("name");
String[] heroes = request.getParameterValues("heroes");

if (heroes != null) {
	out.print("<p>");
	out.print(name + "님이 좋아하는 영웅은 ");
	
	for (String hero : heroes) {
		out.print(hero + " ");
	}
	
	out.print("입니다.");
	out.print("</p>");
}
%>

</body>
</html>










