<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
	<title>Spring Security Demo- Custom Login Form</title>
</head>
<body>
	<h2>Custom Sign In Page</h2>
	<hr>
	<c:if test="${param.error != null }">
		<i>Sorry! You entered invalid username/password.</i>		
	</c:if>
	<form:form method="POST" action="${pageContext.request.contextPath}/authenticateTheUser">
		<p>User Name: <input type="text" name="username" required /> </p>
		<p>Password: <input type="password" name="password" required /> </p>
		<input type="submit" value="Login" />
	</form:form>
</body>

</html>