<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LOGIN</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <link href="resources/styles/bootstrap.css" rel="stylesheet">  -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- <script src="scripts/bootstrap.min.js"></script> -->
<link href="resources/styles/home.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script type="text/javascript" src="resources/scripts/login.js"></script>
<link href="resources/styles/login.css" rel="stylesheet">
<link href="resources/styles/animate.css" rel="stylesheet">
 <script src="resources/scripts/ajaxjquery.js"></script>


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
	<div class="container">

		<div id="loginbox"
			class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
			<div class="panel panel-info">
				<div class="panel-heading">
					<center>
						<div class="panel-title">LOGIN</div>
						
						<c:if test="${not empty loginerrormsg}">
							<p>${loginerrormsg}</p>
						</c:if> 
					</center>
					<div
						style="float: right; font-size: 80%; position: relative; top: -10px"></div>
				</div>

				<div style="padding-top: 30px" class="panel-body">
					<div style="display: none" id="login-alert"
						class="alert alert-danger col-sm-12"></div>
						
							

				 	  
					 <%--   <form name="loginForm" action="<c:url value='j_spring_security_check' />" method="post">
						
						   <c:if test="${not empty error}">
                    			<div class="error" style="color: #ff0000;">${error}</div>
                			</c:if>
                			
                			
                			  <div class="span9 center">
                   			<c:if test="${not empty msg}">
                 				<div class="msg">${msg} <br><br></div>
            				</c:if>
                	
                
                <div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span>
								 <input type="text"  class="form-control" name="UserName" 
								placeholder="Enter UserName">  
															
						</div>

						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-lock"></i></span> 
								<input id="login-password"
								type="password" class="form-control" name="Password" 
								placeholder="password">  
								
						</div>
					


						<div style="margin-top: 10px" class="form-group">
							<!-- Button -->

							<div class="col-sm-12 controls">
								<input type="submit" value="Login" class="btn btn-success">
								<a id="btn-fblogin" href="https://www.facebook.com/"
									class="btn btn-primary">Login with Facebook</a>
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-12 control">
								<div
									style="border-top: 1px solid #888; padding-top: 15px; font-size: 85%">
									New User? <a href="signup.html"> Register Here </a>
								</div>
							</div>
						</div>
						
						 <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
 				 		</form> --%>
					  
					 
				   <form name="loginForm" action="<c:url value='j_spring_security_check' />" method="post">
                <c:if test="${not empty error}">
                    <div class="error" style="color: #ff0000;">${error}</div>
                </c:if>
                <div class="span9 center">
                   	<c:if test="${not empty msg}">
                 		<div class="msg">${msg} <br><br></div>
            		</c:if>
            		
                	<input type="text" placeholder="Enter Username" name="username" class="form-control"/>
                	<!-- <div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span>
								 <input type="text"  class="form-control" name="UserName" 
								placeholder="Enter UserName">  
															
						</div> -->
                	<br>
                	<br>
                	
					<input type="password" placeholder="Password"  name="password" class="form-control"/>
					<div class="span8 center">
					<br>
                		<button type="submit" class="btn btn-success"><h8>login</h8></button>

					</div>
				</div>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
            </form> 
					  
					</div>
			</div>

		</div>
		
	
		 <!-- <div class="animated bounceOut"></div> -->
		
</body>
</html>


