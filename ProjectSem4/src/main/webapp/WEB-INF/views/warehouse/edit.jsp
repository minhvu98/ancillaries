<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>	
<!-- Content Header (Page header) -->
<section class="content-header">
	<h1>
		Warehouses <small>Information management</small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="#"><i class="fa fa-dashboard"></i> Administrator</a></li>
		<li class="active">Warehouses</li>
	</ol>
</section>

<!-- Main content -->
<section class="content">

	<!-- CREATE FORM -->
	<div class="box box-default">
		<div class="box-header with-border">
			<h3 class="box-title">Warehouse Details Form</h3>

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
		<form:form role="form" modelAttribute="warehouse" method="get">
			<div class="box-body">
				<div class="row">
					<div class="col-md-6">
						<!-- text input -->
						<div class="form-group">
							<label>Name</label> 
							<form:input type="text" class="form-control"
								placeholder="Enter warehouse" path="name" value="${warehouse.name }"></form:input>
						</div>

						<!-- /.form-group -->
						<div class="form-group">
							<label>Status</label> 
							
							<form:checkbox path="status"/>
						</div>
						<!-- /.form-group -->
					</div>
					<!-- /.col -->
					<div class="col-md-6">
						<div class="form-group">
							<label>Location</label> 
<!-- 							<select class="form-control select2" -->
<!-- 								style="width: 100%;" name="location"> -->
<%-- 								<option selected="selected">${warehouse.location }</option> --%>
<!-- 								<option>Alaska</option> -->
<!-- 								<option>California</option> -->
<!-- 								<option>Delaware</option> -->
<!-- 								<option>Tennessee</option> -->
<!-- 								<option>Texas</option> -->
<!-- 								<option>Washington</option> -->
<!-- 							</select> -->
							<form:select path="location" class="form-control select2">
								<form:option value="Alaska"></form:option>
								<form:option value="California"></form:option>
								<form:option value="Delaware"></form:option>
								<form:option value="Tennessee"></form:option>
								<form:option value="Texas"></form:option>
								<form:option value="Washington"></form:option>
							</form:select>
						</div>
						<!-- /.form-group -->

					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /.box-body -->
			<div class="box-footer">
				<button formaction="${pageContext.request.contextPath }/admin/warehouse/save/${warehouse.id}" type="submit" class="btn btn-primary">Submit</button>
			</div>
		</form:form>
	</div>
	<!-- /.box -->


</section>
<!-- /.content -->
