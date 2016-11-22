<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ page session="true"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Thanks</title>
<head>
   <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> 
<!--     <link href="resources/styles/bootstrap.css" rel="stylesheet"> -->
<script src="resources/scripts/ajaxjquery.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
    <!-- <script src="resources/scripts/bootstrap.min.js" ></script> -->
    <link href="resources/styles/home.css" rel="stylesheet">

<!-- Latest compiled JavaScript -->
<!-- <script src="/ShoppingCart/resources/bootstrap/js/bootstrap.min.js"></script> -->
</head>
<style>

 

</style>
<body >
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
     <a class="navbar-brand" href="#"  style="padding: 0px 15px;"><img src="resources/images/logo2.jpg" id="logo"></a>
    </div>
    <ul class="nav navbar-nav">
    <li class="active"><a href="home"><span class="glyphicon glyphicon-home"></span></a></li>
	
    </ul>
     <ul class="nav navbar-nav navbar-right">
      
      <li class="divider-vertical"></li>
		<c:if test="${pageContext.request.userPrincipal.name != null}">
			
			
			
			<c:if test="${pageContext.request.userPrincipal.name  == 'Anubhav'}">
				<li><a href="<c:url value="/admin" />">View Products</a></li>
			</c:if>
			
			<li><a>Hello, ${pageContext.request.userPrincipal.name}</a></li>
			<li><a href="<c:url value="/j_spring_security_logout" />"> <span class="glyphicon glyphicon-log-out"></span> Log Out</a></li>
		</c:if>
								
		<c:if test="${pageContext.request.userPrincipal.name  == null}">
			<li><a href="<c:url value="/loginUser" />"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
			<li><a href="<c:url value="memberShip.obj" />"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
		</c:if>
      
      
<%--       <li><a href="<c:url value="/loginUser" />">Login</a></li> --%>
<%-- 			<li><a href="<c:url value="memberShip.obj" />">Sign Up</a></li> --%>
		
	</ul>
      
<!--       <li><a href="memberShip.obj"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li> -->
<!--       <li><a href="loginUser"><span class="glyphicon glyphicon-log-in"></span> Login</a></li> -->
<%--       <li><a href="myCart"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a>${cartSize} </li> --%>
<!--     </ul> -->
      
  </div>
</nav>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<center>
<h2>Thank You for Shopping..!!</h2><br>

<br>
 <a href="home"> <button type="button" class="btn btn-info">GO BACK</button></a></center>
 <%@include file="footer.jsp"%>
</body>
 </html>
 