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
	
	<!-- Add Link to point /leaders... -->
	<security:authorize access="hasRole('MANAGER')">
		<p>
			<a href="${pageContext.request.contextPath}/leaders">Leadership Meeting</a> (Only Managers)
		</p>
	</security:authorize>
	<!-- Add Link to point /system... -->
	<security:authorize access="hasRole('ADMIN')">
	<p>
		<a href="${pageContext.request.contextPath}/system">Admin Meeting</a> (Only Admins)
	</p>
	</security:authorize>
	<hr>
	<br>
	<form:form method="POST" action="${pageContext.request.contextPath}/logout">
		<input type="submit" value="Logout" />
	</form:form>
</body>

</html>