<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<jsp:include page="header.jsp"/>
	</head>
	<body>
		<jsp:include page="nav.jsp"/>
		<h1>Create A Campaign</h1>
		<form action="createCampaign.do" method="POST">
			<jsp:include page="campaignForm.jsp"/>
		</form>
		<jsp:include page="footer.jsp"/>
	</body>
</html>