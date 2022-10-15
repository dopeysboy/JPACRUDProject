<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<jsp:include page="header.jsp"/>
	</head>
	<body>
		<jsp:include page="nav.jsp"/>
		<div class="container">
			<h1>${campaign.name}</h1>
			<p>${campaign.description}</p>
			<p>Setting: ${campaign.setting}</p>
			<p>Created By: ${campaign.creator}</p>
			<img class="campaignPic" alt="Image Not Found" src="${campaign.imageUrl}">
		</div>
		
		<jsp:include page="footer.jsp"/>
	</body>
</html>