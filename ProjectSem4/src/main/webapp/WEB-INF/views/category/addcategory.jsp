<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<form:form action="${pageContext.request.contextPath }/category/add" modelAttribute="category" method="GET">
		<form:input path="name"></form:input>
		<form:input path="status"></form:input>
		<input type="submit" value="Add">
	</form:form>
</body>
</html>