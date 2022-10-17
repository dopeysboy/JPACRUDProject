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
			<form action="updatePass.do" method="POST">
				<label for="confirm">Comfirm Current Password:</label>
				<input type="password" required name="confirm"><br>
				<label for="newPassword">New Password</label>
				<input type="password" name="newPassword" required><br>
				<label for="confirmNew">Confirm New Password:</label>
				<input type="password" name="confirmNew" required><br>
				<button type="submit" class="btn btn-primary">Update Password</button>
			</form>
			<c:if test="${not empty successful}">
				<c:choose>
					<c:when test="${successful}">
						<p class="success">Password updated successfully</p>
					</c:when>
					<c:otherwise>
						<p class="error">There was an error updating your password, please try again</p>
					</c:otherwise>
				</c:choose>
			</c:if>
		</div>
		<jsp:include page="footer.jsp"/>
	</body>
</html>