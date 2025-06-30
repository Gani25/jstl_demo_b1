<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- Add JSTL Links / import -->
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL CORE TAGS</title>
</head>
<body>


<%String name = "SPRK"; %>
<h1>Welcome <%= name %></h1>

<c:set var="name1" value="HELLO" />
<h1>Welcome Sir <c:out value="${name1 }"/> </h1>
<c:remove var="name1"/>
<h1>Welcome Sir <c:out value="${name1 }"/> </h1>
<h1>Check Variable Value Present Or Not? <c:out value="${empty name1 }"/> </h1>
<h1>Check Variable Value Present Or Not? <c:out value="${not empty name1 }"/> </h1>



</body>
</html>