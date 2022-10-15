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
			<div class="row">
				<div class="col">
					<h1>Login</h1>
					<form action="login.do" method="POST">
						<label for="username">Username</label>
						<input type="text" name="username" required/>
						<label for="password">Password</label>
						<input type="password" name="password" required/>
						<button type="submit">Login</button>
					</form>
					<c:if test="${badLogin}">
						<p class="error">Incorrect username/password</p>
					</c:if>
				</div>
				<div class="col">
					<h1>Need to create an account?</h1>
					<form action="createUser.do" method="POST">
						<label for="username">Username</label>
						<input type="text" name="username" required/>
						<label for="password">Password</label>
						<input type="password" name="password" required/>
						<button type="submit">Login</button>
					</form>
				</div>
			</div>
		</div>
		<jsp:include page="footer.jsp"/>
	</body>	
</html>