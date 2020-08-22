<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Content Header (Page header) -->
<section class="content-header">
	<h1>
		Products &amp; Categories <small>Products</small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="#"><i class="fa fa-dashboard"></i> Administrator</a></li>
		<li><a href="#">Products &amp; Categories</a></li>
		<li class="active">Products</li>
	</ol>
</section>

<!-- Main content -->
<section class="content">
	<!-- CREATE FORM -->
	<div class="box box-default">
		<div class="box-header with-border">
			<h3 class="box-title">Product Form</h3>

			<div class="box-tools pull-right">
				<button type="button" class="btn btn-box-tool"
					data-widget="collapse">
					<i class="fa fa-minus"></i>
				</button>
				<button type="button" class="btn btn-box-tool" data-widget="remove">
					<i class="fa fa-remove"></i>
				</button>
			</div>
		</div>
		<!-- /.box-header -->
		<!-- form start -->
		<form role="form">
			<div class="box-body">
				<div class="row">
					<div class="col-md-6">
						<!-- text input -->
<!-- 						<div class="form-group"> -->
<!-- 							<label>Id</label> <input type="text" class="form-control" -->
<%-- 								placeholder="Enter name" value="${product.id }""> --%>
<!-- 						</div> -->
						<div class="form-group">
							<label>Name</label> <input type="text" class="form-control"
								placeholder="Enter product name"value="${product.name }" name="product_name">
						</div>
						<div class="form-group">
							<label>Description</label> <input type="text" class="form-control"
								placeholder="Enter description"value="${product.description }" name="description">
						</div>
						<div class="form-group">
							<label>Price</label> <input type="number" class="form-control"
								placeholder="Enter price"value="${product.price }" name="price">
						</div>
						<!-- /.form-group -->
					</div>
					<!-- /.col -->
					<div class="col-md-6">
						<div class="form-group">
							<label>Category</label> <select class="form-control select2"
								style="width: 100%;" name="category_id">
								
								
								<option selected="selected">Please choose category</option>
									<c:forEach var="category" items="${categories }">
										
										<option value="${category.id }">${category.name }</option>
										
									</c:forEach>
								
						</select>
						</div>
						<!-- /.form-group -->
						<div class="col-md-6">
							<div class="form-group">
								<label>Status</label>
								<input type="checkbox" checked="checked" name="status">
							</div>
							<!-- /.form-group -->
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.box-body -->
				<div class="box-footer">
				
					<button type="submit" formaction="${pageContext.request.contextPath }/admin/product/saveAdd" class="btn btn-primary">Submit</button>
				</div>

			</div>
		</form>
		<!-- /.box -->

	</div>
</section>
<!-- /.content -->
