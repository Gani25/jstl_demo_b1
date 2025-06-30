<%@page import="java.util.Arrays"%>
<%@page import="java.util.ArrayList"%>
<%@page import="day1.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Add JSTL Links / import -->
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL CORE TAGS</title>
<style type="text/css">
table {
	width: 80%;
}

table, th, td {
	border: 2px solid black;
	border-collapse: collapse;
}
</style>
</head>
<body>

	<%
	List<User> allUsers = new ArrayList<>();
	allUsers.add(new User(10, "Rohan Gupta", "Male", true));
	allUsers.add(new User(05, "Ashutosh Verma", "Male", true));
	allUsers.add(new User(1, "Sanika Dabir", "Female", false));
	allUsers.add(new User(20, "Pranjal Sharma", "Female", true));
	allUsers.add(new User(18, "Abhishek Gupta", "Male", true));
	allUsers.add(new User(3, "Abdul Gani Memon", "Male", false));
	allUsers.add(new User(19, "Rohan Shinde", "Male", true));
	%>
	<%
	List<String> foods = Arrays.asList("Banana", "Orange", "Mango");
	out.print("<ol>");
	for (String fruit : foods) {
		out.print("<li>" + fruit + "</li>");
	}
	out.print("</ol>");
	%>
	<center>
		<c:set var="users" value="<%=allUsers%>"></c:set>
		<h1>User Information</h1>

		<table>

			<tr>
				<th>Roll No</th>
				<th>Name</th>
				<th>Gender</th>
				<th>Premium</th>
			</tr>
			<c:forEach items="${users }" var="tempUser">
				<!-- Logic to create rows -->
				<tr>
					<!-- only write field name it will automatically called getters -->
					<td>${tempUser.rollNo}</td>
					<td>${tempUser.name}</td>
					<td>${tempUser.gender}</td>
					<td>${tempUser.premium}</td>
				</tr>
			</c:forEach>
		</table>
	</center>

	<hr>
	<center>
		<h1>User Information</h1>

		<table>

			<tr>
				<th>Roll No</th>
				<th>Name</th>
				<th>Gender</th>
				<th>Premium</th>
			</tr>
			<%
			for (User tempUser : allUsers) {
				out.print("<tr>");
				out.print("<td>"+tempUser.getRollNo()+"</td>");
				out.print("<td>"+tempUser.getName()+"</td>");
				out.print("<td>"+tempUser.getGender()+"</td>");
				out.print("<td>"+tempUser.isPremium()+"</td>");
				out.print("</tr>");
			}
			%>
		</table>
	</center>

</body>
</html>