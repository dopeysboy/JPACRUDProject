<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:choose>
	<c:when test="${not empty camp}">
		<label for="name">Name</label>	
		<input type="text" name="name" value="${camp.name}" required><br>
	</c:when>
	<c:otherwise>
		<label for="name">Name</label>	
		<input type="text" name="name" required><br>
	</c:otherwise>
</c:choose>
<c:choose>
	<c:when test="${not empty camp}">
		<label for="setting">Setting</label>
		<input type="text" name="setting" value="${camp.setting}"><br>
	</c:when>
	<c:otherwise>
		<label for="setting">Setting</label>
		<input type="text" name="setting"><br>
	</c:otherwise>
</c:choose>
<c:choose>
	<c:when test="${not empty camp}">
		<label for="description">Description</label><br>
		<textarea name="description" rows="10" cols="50">${camp.description}</textarea><br>
	</c:when>
	<c:otherwise>
		<label for="description">Description</label><br>
		<textarea name="description" rows="10" cols="50"></textarea><br>
	</c:otherwise>
</c:choose>
<c:choose>
	<c:when test="${not empty camp}">
		<img src="${camp.imageUrl}" width="300" height="300"><br>
		<input type="url" name="imageUrl" value="${camp.imageUrl}"><br>
	</c:when>
	<c:otherwise>
		<label for="imageUrl">Campaign Image URL</label>
		<input type="url" name="imageUrl"><br>
	</c:otherwise>
</c:choose>
<c:choose>
	<c:when test="${not empty user}">
		<input type="hidden" name="creator" value="${user.username}">
	</c:when>
	<c:otherwise>
		<input type="hidden" name="creator" value="anonymous">
	</c:otherwise>
</c:choose>
<button type="submit">Submit Campaign</button>