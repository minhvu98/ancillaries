<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  
  <title>AdminLTE 2 | Log in</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/user/bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/user/bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/user/bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/user/dist/css/AdminLTE.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/user/plugins/iCheck/square/blue.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition login-page">
<div class="login-box">
  <div class="login-logo">
    <a href="../../index2.html"><b>AAL</b>App</a>
  </div>
  <!-- /.login-logo -->
  <div class="login-box-body">
    <p class="login-box-msg">Sign in to start your session</p>
    <c:if test="${mess != null}">
    	<p class="login-box-msg" style="color:red">${mess }</p>
    </c:if> 
    
	
<%--     <form method="post" action="${pageContext.request.contextPath }/login/process" > --%>
<!--       <div class="form-group has-feedback"> -->
<!--         <input type="text" class="form-control" placeholder="Email" name="username"> -->
<!--         <span class="glyphicon glyphicon-envelope form-control-feedback"></span> -->
<!--       </div> -->
<!--       <div class="form-group has-feedback"> -->
<!--         <input type="password" class="form-control" placeholder="Password" name="password"> -->
<!--         <span class="glyphicon glyphicon-lock form-control-feedback"></span> -->
<!--       </div> -->
<!--       <div class="row"> -->
<!--         <div class="col-xs-8"> -->
<!--           <div class="checkbox icheck"> -->
<!--             <label> -->
<!--               <input type="checkbox"> Remember Me -->
<!--             </label> -->
<!--           </div> -->
<!--         </div> -->
<!--         /.col -->
<!--         <div class="col-xs-4"> -->
<!--           <button type="submit" class="btn btn-primary btn-block btn-flat">Sign In</button> -->
<!--         </div> -->
<!--         /.col -->
<!--       </div> -->
<!--     </form> -->
	<!-- 
		Closed !!
		
		<div class="social-auth-links text-center">
      <p>- OR -</p>
      <a href="#" class="btn btn-block btn-social btn-facebook btn-flat"><i class="fa fa-facebook"></i> Sign in using
        Facebook</a>
      <a href="#" class="btn btn-block btn-social btn-google btn-flat"><i class="fa fa-google-plus"></i> Sign in using
        Google+</a>
    </div>
    

    <a href="#">I forgot my password</a><br>
		
	 -->
	 <form action="${pageContext.request.contextPath }/login/process" method="post">
      <div class="form-group has-feedback">
        <input type="text" class="form-control" placeholder="Email" name="username"> 
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <input type="password" class="form-control" placeholder="Password" name="password">
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>
      <div class="row">

          <div class="col-xs-4">
              <button type="submit" class="btn btn-primary btn-block btn-flat">Sign In</button>
          </div>
          <!-- /.col -->
          
          <!-- /.col -->
          <a href="${pageContext.request.contextPath }/register" class="text-center">Register a new membership</a>
      </div>
    </form>
	 
    
    

  </div>
  <!-- /.login-box-body -->
</div>
<!-- /.login-box -->

<!-- jQuery 3 -->
<script src="${pageContext.request.contextPath }/resources/user/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="${pageContext.request.contextPath }/resources/user/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="${pageContext.request.contextPath }/resources/user/plugins/iCheck/icheck.min.js"></script>
<script>
  $(function () {
    $('input').iCheck({
      checkboxClass: 'icheckbox_square-blue',
      radioClass: 'iradio_square-blue',
      increaseArea: '20%' /* optional */
    });
  });
</script>
</body>
</html>
