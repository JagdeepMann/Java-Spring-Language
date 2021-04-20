<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach ; c:if -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (like dates) -->
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Language</title>
<!-- Bootstrap -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	<div class="container mt-5">
		<div class="row">
			<div class="col">
				<table class="table">
					<thead>
						<tr>
							<th>NAME</th>
							<th>CREATOR</th>
							<th>CURRENT VERSION</th>
							<th>ACTIONS</th>
						</tr>
					</thead>
					<c:forEach items="${languages}" var="language">
						<tr>
							<td><c:out value="${language.name}" /></td>
							<td><c:out value="${language.creator}" /></td>
							<td><c:out value="${language.currentVersion}" /></td>
							<td><a href="/languages/${language.id}/edit">Edit</a> <a
								href="/languages/${language.id}">Delete</a></td>
						</tr>

					</c:forEach>
				</table>
			</div>
			<div class="col">
				<form:form action="/languages" method="post"
					modelAttribute="language">
					<div class="form-group">
						<p>
							<form:label path="name">Name</form:label>
							<form:errors path="name" />
							<form:input path="name" />
						</p>
						<p>
							<form:label path="creator">Creator</form:label>
							<form:errors path="creator" />
							<form:textarea path="creator" />
						</p>
						<p>
							<form:label path="currentVersion">Current Version</form:label>
							<form:errors path="currentVersion" />
							<form:input path="currentVersion" />
						</p>

						<input type="submit" value="Submit" />
					</div>
				</form:form>

			</div>
		</div>
	</div>
</body>
</html>