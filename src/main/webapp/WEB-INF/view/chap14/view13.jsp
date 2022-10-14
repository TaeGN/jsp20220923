<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>
	<h1>${customer.id }번 고객 정보 수정</h1>
	
<%-- 	<form action="${pageContext.request.contextPath }/Servlet30" method="get">
		수정할 고객 id 입력 <input type="number" name="id"  value="">
		
	</form> --%>
	
	<form action="${pageContext.request.contextPath }/Servlet30" method="post">
		<input type="hidden" name="id" value="${customer.id }">
		customerName : <input type="text" name="name" value="${customer.name }"> <br>
		contactName : <input type="text" name="contactName" value="${customer.contactName }"> <br>
		address : <input type="text" name="address" value="${customer.address }"> <br>
		city : <input type="text" name="city" value="${customer.city }"> <br>
		country : <input type="text" name="country" value="${customer.country }"> <br>
		<input type="submit" value="수정">
	</form>
	
	<form id="deleteForm1" action="${pageContext.request.contextPath }/Servlet32" method="post">
		<input type="hidden" value="${customer.id }" name="id">
		<input id="deleteButton1" class="btn btn-danger" type="submit" value="삭제">
	</form>
	
	
	<script type="text/javascript">
		document
		.querySelector("#deleteButton1")
		.addEventListener("click", function(e) {
			e.preventDefault;
			if(confirm("진짜 삭제??????")) {
				document.querySelector("#deleteForm1").summit();
			}
		});
	</script>
	
	
<%-- 	
		<a href="${pageContext.request.contextPath }/Servlet30">고객 정보 수정하러 가기</a>
	<table class="table">
		<thead>
			<tr>
				<th>ID</th>
				<th>CustomerName</th>
				<th>ContactName</th>
				<th>주소</th>
				<th>도시</th>
				<th>나라</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${customerList }" var="customer">
				<tr>
					<td>${customer.id }</td>
					<td>${customer.name }</td>
					<td>${customer.contactName }</td>
					<td>${customer.address }</td>
					<td>${customer.city }</td>
					<td>${customer.country }</td>
				</tr>
			
			</c:forEach>
		</tbody>
	</table> --%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>