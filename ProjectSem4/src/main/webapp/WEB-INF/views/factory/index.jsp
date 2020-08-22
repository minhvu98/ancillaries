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
	<form>
		<button type="submit" class="btn btn-primary"
			formaction="${pageContext.request.contextPath}/factory/add">New</button>
	</form>

	<!-- TABLE -->
	<div class="row">
		<div class="col-xs-12">
			<div class="box">
				<div class="box-header">
					<h3 class="box-title">Factory List</h3>
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
												aria-label="Factory: activate to sort column descending">Factory</th>
											<th class="sorting" tabindex="0" aria-controls="example2"
												rowspan="1" colspan="1"
												aria-label="Product: activate to sort column ascending">Product</th>
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


										<tr role="row" class="odd">
											<td class="sorting_1">factory</td>
											<td>product</td>
											<td>active</td>
											<td><form>
													<button type="submit" class="btn btn-primary"
														formaction="factories_crud.html">Update</button>
												</form></td>
											<td><button type="submit" class="btn btn-danger">Delete</button></td>
										</tr>
										<tr role="row" class="even">
											<td class="sorting_1">factory</td>
											<td>product</td>
											<td>active</td>
											<td><form>
													<button type="submit" class="btn btn-primary"
														formaction="factories_crud.html">Update</button>
												</form></td>
											<td><button type="submit" class="btn btn-danger">Delete</button></td>
										</tr>
									</tbody>
									<tfoot>
										<tr>
											<th rowspan="1" colspan="1">Factory</th>
											<th rowspan="1" colspan="1">Product</th>
											<th rowspan="1" colspan="1">Status</th>
											<th rowspan="1" colspan="1"></th>
											<th rowspan="1" colspan="1"></th>
										</tr>
									</tfoot>
								</table>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-5">
								<div class="dataTables_info" id="example2_info" role="status"
									aria-live="polite">Showing 1 to 2 of 2 entries</div>
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
