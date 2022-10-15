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
		<c:choose>
			<c:when test="${not empty camp or removed}">
				<h1 class="success">Successfully updated</h1>
			</c:when>
			<c:otherwise>
				<h1 class="error">Something went wrong while updating your campaign</h1>
			</c:otherwise>
		</c:choose>
		<jsp:include page="footer.jsp"/>
	</body>
</html>