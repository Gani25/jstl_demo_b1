<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<%@ taglib uri="jakarta.tags.functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:set var="name" value="SPRK TECH"/>

<h1>Lenth of Name is = ${fn:length(name)}</h1>
<h1>Lenth of Name is = <c:out value="${fn:length(name)}"></c:out> </h1>

<h1>${name} to Lower Case -> ${fn:toLowerCase(name)}</h1>

<h1>Index of TECH is ${fn:indexOf(name,"TECH") }</h1>

<h1>Substring of ${name} is ${fn:substring(name,5,9)}</h1>

<c:set var="names" value="Rohit, Aman, Shubham, Pranjal"></c:set>

<h1>Names are: ${names }</h1>

<c:set var="nameArr" value="${fn:split(names,\", \") }" />

<h1>Students are: </h1>

<ol>
<c:forEach var="studentName" items="${nameArr}">
	<li>${studentName}</li>	

</c:forEach>
</ol>

<c:set value="${fn:join(nameArr,\" - \") }" var="joinNames"></c:set>

<h1>${joinNames }</h1>

</body>
</html>