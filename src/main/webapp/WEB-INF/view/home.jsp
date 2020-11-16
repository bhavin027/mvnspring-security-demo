<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
	<title>Spring Security Demo</title>
</head>
<body>
	<h2>Welcome to the Spring Security Demo</h2>
	<hr>
	<p>You have logged in successfully!</p>
	<hr>
	<!-- Display username and roles -->
	<p>
		Username: <security:authentication property="principal.username" /><br><br>
		Role(s): <security:authentication property="principal.authorities" />
	</p>
	<hr><br>
	<form:form method="POST" action="${pageContext.request.contextPath}/logout">
		<input type="submit" value="Logout" />
	</form:form>
</body>

</html>