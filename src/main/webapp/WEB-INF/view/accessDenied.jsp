<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
	<title>Spring Security Demo- LeaderShip Meeting</title>
</head>
<body>
	<h2>Welcome to the Spring Security Demo</h2>
	<hr>
	<p>Access Denied: You are not authorized to view this page</p>
	<p>
		<a href="${pageContext.request.contextPath}">Back to Home</a>
	</p>
	<hr>
	<br>
	<form:form method="POST" action="${pageContext.request.contextPath}/logout">
		<input type="submit" value="Logout" />
	</form:form>
</body>

</html>