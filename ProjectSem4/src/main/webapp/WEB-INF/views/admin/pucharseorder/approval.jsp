<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<h3>Approval page</h3>
<table class="table">
	<tr>
		<td><b>Warehouse Name</b></td>
		<td><b>Product Name</b></td>
		<td><b>Quantily</b></td>
		<td><b>Price</b></td>
	</tr>
	<form:form action="${pageContext.request.contextPath}/order/approval/${order.quantity }/${order.id }" modelAttribute="order">
		<c:forEach var="inventory" items="${inventories }">
		<tr>
			<td>${inventory.warehouse.name }</td>
			<td>${inventory.product.name }</td>
			<td>${inventory.quantity }</td>
			<td>${inventory.price }</td>
			<td>
				<input type="number" name="quantity_order">
				<input type="hidden" name="inventory_id" value="${inventory.id }">
				
			</td>
		</tr>
	</c:forEach>
	<tr>
		<td>
			<h4>
				<b><input type="submit" value="Order"></b>
			</h4>
		</td>
	</tr>
	</form:form>
	
	<tr>
		<td colspan="4">------------------------------------------------------------------------------------</td>
	</tr>
	<tr>
		<td><b>Product</b></td>
		<td><b>Quantily</b></td>
	</tr>
	<tr>
		<td>${order.product.name }</td>
		<td>${order.quantity }</td>
	</tr>
</table>