<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>SIGNUP</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
<link href="resources/styles/bootstrap.css" rel="stylesheet">
<!--  <script src="resources/scripts/ajaxjquery.js"></script> -->
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
<script src="resources/scripts/bootstrap.min.js"></script>
<link href="resources/styles/home.css" rel="stylesheet">
<link href="resources/styles/signup.css" rel="stylesheet">
<link href="resources/styles/animate.css" rel="stylesheet">

<style>
.corousel-inner>.item>img, .corousel-inner>.item>a>img {
	width: 70%;
	margin: auto;
}
</style>
</head>
<body background="resources/images/back1.jpg"
	style="background-repeat: no-repeat; background-size: cover;">
	<%@include file="navbar.jsp"%>
	<div class="container-fluid">

		<div id="signupbox"
			class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
			<div class="panel panel-info">
				<div class="panel-heading">
					<center>
						<div class="panel-title">SIGNUP</div>
					</center>
					<div
						style="float: right; font-size: 80%; position: relative; top: -10px"></div>
				</div>

				<div style="padding-top: 30px" class="panel-body">
					<div style="display: none" id="login-alert"
						class="alert alert-danger col-sm-12"></div>

					<form:form action="signupfunc" method="POST" commandName="user">
					
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span>
							<form:input path="user_name" placeholder="username"
								cssClass="form-control" required="true" />
						</div>
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-envelope"></i></span>
							<form:input path="user_email" cssClass="form-control" name="email"
								value="" placeholder="Enter email" required="true" />
						</div>
						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-lock"></i></span>
							<form:password path="user_pass" cssClass="form-control"
								name="password" value="" placeholder="password" required="true" />

						</div>

						<div style="margin-top: 10px" class="form-group">
							<!-- Button -->

							<div class="col-sm-12 controls">
								<!-- <a id="btn-signup" href="home.html" class="btn btn-success">Signup</a> -->
								<input type="submit" value="Signup" class="btn btn-success">
							</div>
						</div>

					</form:form>
				</div>
			</div>
	</div>

	</div>
	
	<div class="animated bounceOut"></div>
	
	  

</body>
</html>