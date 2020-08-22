<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<h3>PucharseOrder History!</h3>
<table class="table">
	<tr>
		<td>Created</td>
		<td>Quantity</td>
		<td>Account</td>
		<td>Product</td>
		
	</tr>
	<c:forEach var="pucharseorder" items="${pucharseorders }">
		<tr>
			<td>${pucharseorder.created }</td>
			<td>${pucharseorder.quantity }</td>
			<td>${pucharseorder.account.username }</td>
			<td>${pucharseorder.product.name }</td>
			<c:if test="${pucharseorder.status == false }">
				<td><a href="${pageContext.request.contextPath }/order/checkApproval/${pucharseorder.id}">
			Approval</a></td>
			</c:if>
			<c:if test="${pucharseorder.status == true }">
				<td><a href="#"" style="color:red">
			Approved</a></td>
			</c:if>
			
		</tr>
	</c:forEach>

</table>