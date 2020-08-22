<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


 <ul class="sidebar-menu" data-widget="tree">
 
          <li class="header">MANAGEMENT TOOLS</li>
          <!-- Optionally, you can add icons to the links -->
 		<sec:authorize access="hasRole('ROLE_SUPER_ADMIN')" >        
          <li class="treeview">
              <a href="pages/Admin/account.html">
                  <i class="fa fa-users"></i> <span>Accounts & Roles</span>
                  <span class="pull-right-container">
                      <i class="fa fa-angle-left pull-right"></i>
                  </span>
              </a>
              <ul class="treeview-menu">
                  <li><a href="${pageContext.request.contextPath}/account">Accounts</a></li>
                  <li><a href="${pageContext.request.contextPath}/role">Roles</a></li>
              </ul>
          </li>
          </sec:authorize>
          <li class="treeview">
              <a href="pages/Admin/products.html">
                  <i class="fa fa-cart-plus"></i> <span>Products & Categories</span>
                  <span class="pull-right-container">
                      <i class="fa fa-angle-left pull-right"></i>
                  </span>
              </a>
              
              
              	<ul class="treeview-menu">
              		<c:if test="${sessionScope.role == '[ROLE_SUPER_ADMIN]' }">
                  		<li><a href="${pageContext.request.contextPath}/admin/product/index">Products</a></li>
                  	</c:if>
                  	<c:if test="${sessionScope.role == '[ROLE_USER]' }">
                  		<li><a href="${pageContext.request.contextPath}/user/product/index">Products</a></li>
                  	</c:if>
                  <li><a href="${pageContext.request.contextPath}/admin/category">Categories</a></li>
              	</ul>
              
              
          </li>
          <sec:authorize access="hasRole('ROLE_ADMIN') or hasRole('ROLE_SUPER_ADMIN')">
          	<li><a href="${pageContext.request.contextPath}/admin/warehouse"><i class="fa fa-truck"></i> <span>Warehouses</span></a></li>
          </sec:authorize>
          <li><a href="${pageContext.request.contextPath}/inventory"><i class="fa fa-truck"></i> <span>Inventories</span></a></li>
          <li><a href="${pageContext.request.contextPath}/factory"><i class="fa fa-industry"></i> <span>Factories</span></a></li>
          
          	<li><a href="${pageContext.request.contextPath}/pucharseorder"><i class="fa fa-file-text-o"></i> 
          		<span>Purchase Orders</span>
          	</a></li>
          <li><a href="${pageContext.request.contextPath}/invoice"><i class="fa fa-dollar"></i> <span>Invoices</span></a></li>
          <sec:authorize access="hasRole('ROLE_ADMIN') or hasRole('ROLE_SUPER_ADMIN')">
          <li><a href="${pageContext.request.contextPath}/rejection"><i class="fa fa-bullhorn"></i> <span>Material Rejections</span></a></li>
          </sec:authorize>

</ul>
