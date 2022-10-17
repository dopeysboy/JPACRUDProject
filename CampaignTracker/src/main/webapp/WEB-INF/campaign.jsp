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
			<c:forEach var="campaign" items="${campaigns}">
				<h1>${campaign.name}</h1>
				<p>${campaign.description}</p>
				<p>Setting: ${campaign.setting}</p>
				<p>Created By: ${campaign.creator}</p>
				<img class="campaignPic" alt="Image Not Found" src="${campaign.imageUrl}"><br>
				
				<c:choose>
					<c:when test="${user.username == campaign.creator or user.username == 'admin'}">
						<a href="updateCamp.do?id=${campaign.id}" class="btn btn-dark">Update this campaign</a>
						<a href="deleteCamp.do?id=${campaign.id}" class="btn btn-danger">Delete this campaign</a>
					</c:when>
				</c:choose>
				<hr>
			</c:forEach>
		</div>
		
		<jsp:include page="footer.jsp"/>
	</body>
</html>