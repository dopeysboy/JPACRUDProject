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
		<div class="container">
			<h1>${campaign.name}</h1>
			<p>${campaign.description}</p>
			<img class="campaignPic" alt="Image Not Found" src="${campaign.imageUrl}">
		</div>
	</body>
</html>