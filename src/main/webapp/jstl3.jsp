<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:set var="num" value="<%=request.getParameter(\"num\")%>" />
	<form action="jstl3.jsp">

		<label for="num">Number: </label> <input type="text" name="num"
			id="num"> 
			<c:if test="${empty num}">
			<br>
			<span style="color:red">Number is required</span>
			</c:if>
			<br>
		<br> <input type="submit" value="Display Even Numbers">
	</form>
	<hr>
	<c:if test="${not empty num}">
		<h1>All Even Numbers are:</h1>
		<c:forEach var="i" begin="0" end="${num}" step="2">
			<p>${i}</p>
		</c:forEach>
	</c:if>


</body>
</html>