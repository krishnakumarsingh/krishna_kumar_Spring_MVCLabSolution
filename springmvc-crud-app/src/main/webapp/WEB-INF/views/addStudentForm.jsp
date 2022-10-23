<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add New Student Form</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<style>
.error {
	color: #ff0000;
}
</style>

</head>

<body>
	<div class="container">
		<h2>Student Form</h2>

		<c:if test="${not empty error}">
			<div class="alert alert-danger" role="alert">${error}</div>
		</c:if>
		<hr />
		<form:form method="POST" modelAttribute="student"
			cssClass="form-horizontal">
			<form:input type="hidden" path="id" id="id" />

			<div class="form-group">
				<label for="firstName"> Name</label>
				<form:input path="name" id="name" cssClass="form-control" />
			</div>

			<div class="form-group">
				<label for="country">Country</label>
				<form:input path="country" id="country" cssClass="form-control" />
			</div>
			
			<div class="form-group">
				<label for="department">Department</label>
				<form:input path="department" id="department" cssClass="form-control" />
			</div>

			
			<hr />
			<c:choose>
				<c:when test="${edit}">
					<button type="submit" class="btn btn-primary">Update</button>
				</c:when>
				<c:otherwise>
					<button type="submit" class="btn btn-primary">Save</button>
				</c:otherwise>
			</c:choose>

			<a class="btn btn-secondary" href="<c:url value='/list' />">List
				of All Students</a>

		</form:form>
	</div>
</body>
</html>