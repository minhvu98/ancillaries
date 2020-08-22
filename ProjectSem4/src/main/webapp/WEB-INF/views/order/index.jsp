<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<form:form name="order" method="POST" modelAttribute="pucharseOrder" 
		action="${pageContext.request.contextPath}/order/pucharseOrder/${product_id}">
	Warehouse : ${quantily }
	<br>
	Quantily:<form:input path="quantity"  type="number" />
	
<!-- 	<input type="hidden" name="product_id"/> -->
	<input type="submit" value="Accept"/>
</form:form>