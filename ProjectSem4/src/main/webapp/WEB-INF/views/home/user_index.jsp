<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<h3>Home page!</h3>

<table class="table">
	<tr>
		<td><b>Credit Balance</b></td>
		<td><b>Out Standing Invoices</b></td>
		<td><b>Ending Balance</b></td>
		<td><b>Created</b></td>
		<td><b>Day Term</b></td>
	</tr>
	<tr>
		<td>${creditaccount }</td>
		<td>${credit.amount }</td>
		<td>${creditaccount - credit.amount }</td>
		<td>${credit.created }</td>
		<td>${credit.dayTerm }</td>
	</tr>

</table>
