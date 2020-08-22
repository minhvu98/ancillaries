<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<h3>PucharseOrder History!</h3>
<table class="table">
	<tr>
		<td><b>Created</b></td>
		<td><b>Quantily</b></td>
		<td><b>Account</b></td>
		<td><b>Product</b></td>
		
	</tr>
	<c:forEach var="pucharseorder" items="${pucharseorders }">
		<tr>
			<td>${pucharseorder.created }</td>
			<td>${pucharseorder.quantity }</td>
			<td>${pucharseorder.account.username }</td>
			<td>${pucharseorder.product.name }</td>
			<td><a href="${pageContext.request.contextPath }/order/edit/${product.id}">
			Edit</a></td>
		</tr>
	</c:forEach>

</table>