<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
	<title>Spring Security Demo</title>
</head>
<body>
	<h2>Welcome to the Spring Security Demo</h2>
	<hr>
	<p>You have logged in successfully!</p>
	<form:form method="POST" action="${pageContext.request.contextPath}/logout">
		<input type="submit" value="Logout" />
	</form:form>
</body>

</html>