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
		<table class="table table-dark table-bordered">
			<thead>
				<tr>
					<td class="col-1">DELETE</td>
					<td class="col-1">CampaignImg</td>
					<td class="col-8">Campaign Name</td>
					<td class="col-2">Creator</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="camp" items="${campaigns}">
					<tr>
						<td class="col-1 delete"><a href="deleteCamp.do?id=${camp.id}" class="delete">X</a></td>
						<td class="col-1"><a href="updateCamp.do?id=${camp.id}"><img src="${camp.imageUrl}" alt="Image Not Found" width="70" height="70"></a></td>
						<td class="col-8"><a href="updateCamp.do?id=${camp.id}">${camp.name}</a></td>
						<td class="col-2">${camp.creator}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<jsp:include page="footer.jsp"/>
	</body>
</html>