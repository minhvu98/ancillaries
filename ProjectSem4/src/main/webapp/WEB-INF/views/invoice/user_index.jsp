<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<h3>Invoice page!</h3>
<table class="table">
	<tr>
		<td><b>Invoice Code</b></td>
		<td>Product</td>
		<td>Account</td>
		<td>Created</td>
		<td>Status</td>

	</tr>
	<c:forEach var="invoice" items="${invoices }">

		<tr>
			<td>${invoice.id }</td>
			<td>${invoice.pucharseOrder.product.name }</td>
			<td>${invoice.pucharseOrder.account.username }</td>
			<td>${invoice.created }</td>
			<td>${invoice.status }</td>
			<c:if test="${invoice.status == false }">
				<td><b>Pending...</b></td>

			</c:if>
			<c:if test="${invoice.status == true }">
				<td><a
					href="${pageContext.request.contextPath }/invoice/cancel/${invoice.id}/${invoice.pucharseOrder.id}">Reject</a></td>
			</c:if>

		</tr>

	</c:forEach>

</table>