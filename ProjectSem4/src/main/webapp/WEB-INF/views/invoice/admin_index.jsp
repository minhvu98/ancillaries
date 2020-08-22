<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<h3>Invoice page!</h3>
<table class="table">
	<tr>
		<td><b>Invoice Code</b></td>
		<td><b>Product</b></td>
		<td><b>Account</b></td>
		<td><b>Created</b></td>
		<td><b>Status</b></td>

	</tr>
	<c:forEach var="invoice" items="${invoices }">
		
			<tr>
				<td>${invoice.id }</td>
				<td>${invoice.pucharseOrder.product.name }</td>
				<td>${invoice.pucharseOrder.account.username }</td>
				<td>${invoice.created }</td>
				<td>${invoice.status }</td>
				<td><a
					href="${pageContext.request.contextPath }/invoice/details/${invoice.id}">Details</a></td>
			</tr>
		
	</c:forEach>

</table>


            <!-- Content Header (Page header) -->
            <section class="content-header">
                <h1>
                    Invoices
                    <small>Information</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="#"><i class="fa fa-dashboard"></i> Administrator</a></li>
                    
                    <li class="active">Invoices</li>
                </ol>
            </section>

            <!-- Main content -->
            <section class="content">
                <form>
                    <button type="submit" class="btn btn-primary" formaction="invoices_crud.html">New</button>
                </form>
                <form:form modelAttribute="invoices">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="box">
                            <div class="box-header">
                                <h3 class="box-title">Invoice List</h3>
                            </div>
                            <!-- /.box-header -->
                            <div class="box-body">
                                <div id="example2_wrapper" class="dataTables_wrapper form-inline dt-bootstrap"><div class="row"><div class="col-sm-6"></div><div class="col-sm-6"></div></div><div class="row"><div class="col-sm-12"><table id="example2" class="table table-bordered table-hover dataTable" role="grid" aria-describedby="example2_info">
                                    <thead>
                                        <tr role="row"><th class="sorting_asc" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Invoice #: activate to sort column descending">Invoice #</th><th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="Issued: activate to sort column ascending">Issued</th><th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="Due date: activate to sort column ascending">Due date</th><th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="Subtotal: activate to sort column ascending">Subtotal</th><th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="Status: activate to sort column ascending">Status</th><th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label=": activate to sort column ascending"></th><th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label=": activate to sort column ascending"></th></tr>
                                    </thead>
                                    <tbody>
                                        
                                    <c:forEach var="invoice" items="${invoices }">
                                    	<tr role="row" class="odd">
                                            <td class="sorting_1">${invoice.id }</td>
                                            <td>${invoice.created }</td>
                                            <td>dd/mm/yy</td>
                                            <td>${invoice.total }</td>
                                            <td>${invoice.status }</td>
                                            <td><form><button type="submit" class="btn btn-primary" formaction="invoices_crud.html">Update</button></form></td>
                                            <td><button type="submit" class="btn btn-danger">Delete</button></td>
                                        </tr>
                                    </c:forEach>
                                    
                                    
                                </table></div></div><div class="row"><div class="col-sm-5"><div class="dataTables_info" id="example2_info" role="status" aria-live="polite">Showing 1 to 2 of 2 entries</div></div><div class="col-sm-7"><div class="dataTables_paginate paging_simple_numbers" id="example2_paginate"><ul class="pagination"><li class="paginate_button previous disabled" id="example2_previous"><a href="#" aria-controls="example2" data-dt-idx="0" tabindex="0">Previous</a></li><li class="paginate_button active"><a href="#" aria-controls="example2" data-dt-idx="1" tabindex="0">1</a></li><li class="paginate_button next disabled" id="example2_next"><a href="#" aria-controls="example2" data-dt-idx="2" tabindex="0">Next</a></li></ul></div></div></div></div>
                            </div>
                            <!-- /.box-body -->
                        </div>
                        <!-- /.box -->
                    </div>
                    <!-- /.col -->
                </div>
                </form:form>
                <!-- /.row -->
            </section>
            <!-- /.content -->
        