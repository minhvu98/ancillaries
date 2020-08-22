<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<h3>Invoice Details</h3>

<table class="table">
	<tr>
		<td>Account</td>
		<td>Product name</td>
		<td>Ware house</td>
		<td>Created</td>
		<td>Quantity</td>
		<td>Status</td>
		<td>Price</td>
		
	</tr>
	<c:forEach var="detail" items="${details }">
		<tr>
			<td>${detail.invoice.pucharseOrder.account.username }</td>
			<td>${detail.inventory.product.name }</td>
			<td>${detail.inventory.warehouse.name }</td>
			<td>${detail.invoice.created }</td>
			<td>${detail.quantity }</td>
			<td>${detail.invoice.status }</td>
			<td>${detail.inventory.price }</td>
		</tr>
	</c:forEach>
	<tr>
		<td>
			<h4>Total</h4>
		</td>
		<td>${total }</td>
	</tr>
</table>