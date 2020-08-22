<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<table class="table">
	<tr>
		<td><b>Create</b></td>
		<td><b>PucharseOrder Code</b></td>
		<td><b>Invoice Code</b></td>
		<td><b>Status</b></td>

	</tr>
	<c:forEach var="rejection" items="${rejections }">
		
			<tr>
				<td>${rejection.created }</td>
				<td>${rejection.pucharseOrder.id }</td>
				<td>${rejection.invoice.id }</td>
				<td>${rejection.status }</td>
				<td><a
					href="${pageContext.request.contextPath }/rejection/approval/${rejection.id}">Approval</a></td>
				<td><a
					href="${pageContext.request.contextPath }/rejection/cancel/${rejection.id}">Cancel</a></td>
			</tr>
		
	</c:forEach>

</table>