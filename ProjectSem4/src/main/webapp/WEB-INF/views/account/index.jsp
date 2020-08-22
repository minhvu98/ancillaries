<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Content Header (Page header) -->
<section class="content-header">
	<h1>
		Accounts &amp; Roles <small>Accounts</small>
	</h1>
	<ol class="breadcrumb">
		<li><a href="#"><i class="fa fa-dashboard"></i> Administrator</a></li>
		<li><a href="#">Accounts &amp; Roles</a></li>
		<li class="active">Accounts</li>
	</ol>
</section>

<!-- Main content -->
<section class="content">
	<form>
		<button type="submit" class="btn btn-primary"
			formaction="${pageContext.request.contextPath }/register">New Account</button>
	</form>

	<!-- /.box -->
	<!-- TABLE -->
	<div class="row">
		<div class="col-xs-12">
			<div class="box">
				<div class="box-header">
					<h3 class="box-title">Account List</h3>
				</div>
				<!-- /.box-header -->
				<div class="box-body">
					<div id="example2_wrapper"
						class="dataTables_wrapper form-inline dt-bootstrap">
						<div class="row">
							<div class="col-sm-6"></div>
							<div class="col-sm-6"></div>
						</div>
						<div class="row">
							<div class="col-sm-12">
								<table id="example2"
									class="table table-bordered table-hover dataTable" role="grid"
									aria-describedby="example2_info">
									<thead>
										<tr role="row">
											<th class="sorting_asc" tabindex="0" aria-controls="example2"
												rowspan="1" colspan="1" aria-sort="ascending"
												aria-label="Username: activate to sort column descending">Username</th>
											<th class="sorting" tabindex="0" aria-controls="example2"
												rowspan="1" colspan="1"
												aria-label="Role: activate to sort column ascending">Role</th>
											<th class="sorting" tabindex="0" aria-controls="example2"
												rowspan="1" colspan="1"
												aria-label="Fullname: activate to sort column ascending">Fullname</th>
											<th class="sorting" tabindex="0" aria-controls="example2"
												rowspan="1" colspan="1"
												aria-label="Email: activate to sort column ascending">Email</th>
											<th class="sorting" tabindex="0" aria-controls="example2"
												rowspan="1" colspan="1"
												aria-label="Phone: activate to sort column ascending">Phone</th>
											<th class="sorting" tabindex="0" aria-controls="example2"
												rowspan="1" colspan="1"
												aria-label="Credit Balance: activate to sort column ascending">Credit
												Balance</th>
											<th class="sorting" tabindex="0" aria-controls="example2"
												rowspan="1" colspan="1"
												aria-label="Status: activate to sort column ascending">Status</th>
											<th class="sorting" tabindex="0" aria-controls="example2"
												rowspan="1" colspan="1"
												aria-label=": activate to sort column ascending"></th>
											<th class="sorting" tabindex="0" aria-controls="example2"
												rowspan="1" colspan="1"
												aria-label=": activate to sort column ascending"></th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="account" items="${accounts }">
											<tr role="row" class="odd">
												<td>${account.username }</td>
												<td>${account.role.role }</td>
												<td>${account.fullname }</td>
												<td>${account.email }</td>
												<td>${account.phone }</td>
												<td>${account.credit }</td>
												<td>${account.status }</td>
												<td><form method="get">
														<button type="submit" class="btn btn-primary"
															formaction="${pageContext.request.contextPath }/account/edit/${account.id}">Update</button>
													</form></td>
												<td><form method="get"
														action="${pageContext.request.contextPath }/account/deactivate/${account.id}">
														<button type="submit" class="btn btn-danger">Deactivate</button></td>
												</form>
											</tr>
									</tbody>
									</c:forEach>
								</table>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-5">
								<div class="dataTables_info" id="example2_info" role="status"
									aria-live="polite">Showing 1 to 10 of 10 entries</div>
							</div>
							<div class="col-sm-7">
								<div class="dataTables_paginate paging_simple_numbers"
									id="example2_paginate">
									<ul class="pagination">
										<li class="paginate_button previous disabled"
											id="example2_previous"><a href="#"
											aria-controls="example2" data-dt-idx="0" tabindex="0">Previous</a></li>
										<li class="paginate_button active"><a href="#"
											aria-controls="example2" data-dt-idx="1" tabindex="0">1</a></li>
										<li class="paginate_button next disabled" id="example2_next"><a
											href="#" aria-controls="example2" data-dt-idx="2"
											tabindex="0">Next</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- /.box-body -->
			</div>
			<!-- /.box -->
		</div>
		<!-- /.col -->
	</div>
	<!-- /.row -->
</section>
<!-- /.content -->

