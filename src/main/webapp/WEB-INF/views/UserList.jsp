<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<!-- 	navigation Bar -->
<%@ include file="navbar.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Management</title>
<link rel="stylesheet"
	href="<c:url value="/resource/bootstrap/css/bootstrap.min.css"/>">
<script src="<c:url value="/resource/js/jquery.js"/>"></script>
<script src="<c:url value="/resource/bootstrap/js/bootstrap.min.js"/>"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resource/css/productList.css"/>">
</head>
<body>
	<div class="container" id="productTable" style="width:1145px;margin-bottom: 180px; height: 100vh;">
		<h2>User Management</h2>
		<p>The List of Users in our Database</p>
		<table class="table table-hover" id="productList">
			<thead>
				<tr>
					<th>User Id</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Address</th>
					<th>State</th>
					<th>City</th>
                                        <th>Country</th>
					<th>Phone Number</th>
					<th>Email Id</th>
					<th>Password</th>
					<th>RoleType</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${users}" var="user">
					<tr>
						<td>${user.userId}</td>
						<td>${user.firstName}</td>
						<td>${user.lastName}</td>
						<td>${user.address}</td>
						<td>${user.state}</td>
						<td>${user.city}</td>
                                                <td>${user.country}</td>
						<td>${user.customerPhone}</td>
						<td>${user.emailId}</td>
						<td>${user.password}</td>
						<td>${user.role}</td>
						
						<td>
						    <a href="user/delete/${user.userId}"> <span
								class="glyphicon glyphicon-trash"></span></a></td>  
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>
<%@ include file="footer.jsp"%>