<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<section class="content">
                <!-- CREATE FORM -->
                <div class="box box-default">
                    <div class="box-header with-border">
                        <h3 class="box-title">Account Details Form</h3>

                        <div class="box-tools pull-right">
                            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                            <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-remove"></i></button>
                        </div>
                    </div>
                    <!-- /.box-header -->
                    <!-- form start -->
                    <form:form action="${pageContext.request.contextPath }/account/saveChanges" modelAttribute="account">
                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-4">
                                    <!-- text input -->
                                    <div class="form-group">
                                        <label>Full Name</label>
                                        <form:input path="fullname" type="text" class="form-control"
			placeholder="Enter Full name"></form:input>
                                        
                                    </div>
                                    <div class="form-group">
                                        <label>Email</label>
                                        <form:input path="email" type="text" class="form-control"
			placeholder="Enter Email"></form:input>
                                        
                                    </div>
                                    <div class="form-group">
                                        <label>Phone</label>
                                        <form:input path="phone" type="text" class="form-control"
			placeholder="Enter Phone"></form:input>
                                    
                                    </div>
                                    <!-- /.form-group -->
                                </div>
                                <!-- /.col -->
                                <div class="col-md-4">
                                    <!-- text input -->
                                    <div class="form-group">
                                        <label>Username</label>
                                        <form:input path="username" type="text" class="form-control"
			placeholder="Enter user name"></form:input>
                                        
                                    </div>
                                    <div class="form-group">
                                        <label>Password</label>
                                        <form:input path="password" type="password" class="form-control"
			id="exampleInputPassword1" placeholder="Enter Password"></form:input>
                                        
                                    </div>
                                    <div class="form-group">
                                        <label>Credit</label>
                                        <form:input path="credit" type="text" class="form-control"
			id="exampleInputPassword1"></form:input>
                                        
                                    </div>                                     
                                    <!-- /.form-group -->
                                </div>
                                <!-- /.col -->
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Status</label>
                                        <div>
                                        <form:checkbox path="status" id="exampleInputEmail1"></form:checkbox>
                                            Active
                                        </div>                                        
                                    </div>
                                    <!-- /.form-group -->
                                    <div class="form-group" style="padding-top: 13px">
                                        <label>Role</label>
                                        
                                        <form:select class="form-control select2" style="width: 100%;" path="role">
			<form:options items="${roles }" itemValue="id"
				itemLabel="role" class="form-control" id="exampleInputEmail1"
				placeholder="Enter email"></form:options>
		</form:select>
		
                                    </div>
                                    <div class="form-group">
                                        <label>Day Term</label>
                                        <form:input path="dayTerm" type="text" class="form-control"
			id="exampleInputPassword1"></form:input>
                                        
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
                    </form:form>
                </div>
                <!-- /.box -->
                
            </section>