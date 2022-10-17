<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<jsp:include page="header.jsp"/>
	</head>
	<body>
		<jsp:include page="nav.jsp"/>
		<div class="container">
			<form action="searchById.do">
					<label for="id">Search By Id</label>
					<input type="text" name="id" required>
					<button type="submit">Search</button>
			</form>
			<form action="searchByKeyword.do">
					<label for="keyword">Keyword Search</label>
					<input type="text" name="keyword" required>
					<button type="submit">Search</button>		
			</form>
			<form action="searchBySetting.do">
					<label for="setting">Setting Search</label>
					<input type="text" name="setting" required>
					<button type="submit">Search</button>
			</form>
			<form action="searchByUser.do">
					<label for="username">User search</label>
					<input type="text" name="username" required>
					<button type="submit">Search</button>
			</form>
		</div>
		<jsp:include page="footer.jsp"/>
	</body>
</html>