<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<h3>Inventory page!</h3>

<table class="table">
	<tr>
		<td>Warehouse Name</td>
		<td>Product Name</td>
		<td>Quantity</td>
		<td>Price</td>
	</tr>
	<c:forEach var="inventory" items="${inventories }">
		<tr>
			<td>${inventory.warehouse.name }</td>
			<td>${inventory.product.name }</td>
			<td>${inventory.quantity }</td>
			<td>${inventory.price }</td>
			
			<td><a href="${pageContext.request.contextPath }/inventory/view/${warehouse.id}">Add</a></td>
			<td><a href="${pageContext.request.contextPath }/inventory/view/${warehouse.id}">Edit</a></td>
			<td><a href="${pageContext.request.contextPath }/inventory/view/${warehouse.id}">Delete</a></td>
		</tr>
	</c:forEach>

</table>