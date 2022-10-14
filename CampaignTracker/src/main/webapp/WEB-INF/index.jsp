<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<jsp:include page="header.jsp"/>
	</head>
	<body>
		<h1>Hello world!</h1>
		<c:forEach var="camp" items="${campaigns}">
			<p>${camp.name}</p>
			<p>${camp.description}</p>
			<hr>
		</c:forEach>
	</body>
</html>