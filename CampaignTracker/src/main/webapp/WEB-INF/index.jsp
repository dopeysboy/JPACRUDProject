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
			<table class="table table-bordered table-dark">
				<c:forEach var="camp" items="${campaigns}">
					<tr>
						<td class="col-1"><a href="getCampaign.do?id=${camp.id}"><img src="${camp.imageUrl}" alt="Image Not Found" width="70" height="70"></a></td>
						<td class="col-9"><a href="getCampaign.do?id=${camp.id}">${camp.name}</a></td>
						<td class="col-2">${camp.creator}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<jsp:include page="footer.jsp"/>
	</body>
</html>