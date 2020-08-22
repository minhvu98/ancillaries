<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!-- Content Header (Page header) -->
<section class="content-header">
	<h1>
		Factories <small>Information management</small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="#"><i class="fa fa-dashboard"></i> Administrator</a></li>
		<li class="active">Factories</li>
	</ol>
</section>

<!-- Main content -->
<section class="content">

	<!-- CREATE FORM -->
	<div class="box box-default">
		<div class="box-header with-border">
			<h3 class="box-title">Factory Details Form</h3>

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
						<div class="form-group">
							<label>Id</label> <input type="text" class="form-control"
								placeholder="Enter factory">
						</div>
						<div class="form-group">
							<label>Name</label> <input type="text" class="form-control"
								placeholder="Enter product">
						</div>
						<!-- /.form-group -->
					</div>
					<!-- /.col -->
					<div class="col-md-6">

						<!-- /.form-group -->
						<div class="form-group">
							<label>Status</label> <select class="form-control select2"
								style="width: 100%;">
								<option selected="selected">Active</option>
								<option>Disable</option>
							</select>
						</div>
						<!-- /.form-group -->
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /.box-body -->
			<div class="box-footer">
				<button type="submit" class="btn btn-primary">Submit</button>
			</div>
		</form>
	</div>
	<!-- /.box -->


</section>
<!-- /.content -->
