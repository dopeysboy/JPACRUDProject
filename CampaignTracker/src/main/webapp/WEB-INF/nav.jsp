<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<nav>
	<table class="table table-borderless">
		<tbody>
			<tr>
				<td><a href="index.do" class="btn btn-dark btn-block">Home</a></td>
				<td><a href="searchCampaign.do" class="btn btn-dark btn-block">Search A Campaign</a></td>
				<td><a href="createCampaign.do" class="btn btn-dark btn-block center">Create Campaign</a></td>
				<td><a href="manageCampaigns.do" class="btn btn-dark btn-block">Manage Campaigns</a></td>
				<c:choose>
					<c:when test="${empty user}">
						<td><a href="login.do" class="btn btn-primary btn-block">Login/Signup</a></td>
					</c:when>
					<c:otherwise>
						<td><a href="profile.do" class="btn btn-dark btn-block">Account</a></td>
						<td><a href="logout.do" class="btn btn-primary btn-block">Logout</a></td>
					</c:otherwise>
				</c:choose>
			</tr>
		</tbody>
	</table>
</nav>