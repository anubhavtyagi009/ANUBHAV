<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<title>Welcome Page</title>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<link href="resources/styles/home.css" rel="stylesheet">
<style>
.corousel-inner > .item > img,
.corousel-inner > .item > a > img {
  width: 70%;
  margin: auto;

</style>
</head>
<body >


<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"  style="padding: 0px 15px;"><img src="resources/images/logo2.jpg" id="logo"></a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="admin"><span class="glyphicon glyphicon-home"></span></a></li>
     
     </ul>
     <ul class="nav navbar-nav navbar-right">
     <li><a href="home"><span class="glyphicon glyphicon-user"></span> Sign out</a></li>
      
     </ul>
		
		
								
      
      
  </div>
</nav>


<h2>Welcome To Shopping Cart.....</h2><br><br><br><br>

<h4><p>Please Signout And Login Again To Continue Shopping....</p></h4><br><br><br><br><br><br><br><br>
	<br><br><br><br><br><br><br>

<%@include file="footer.jsp"%>



</body>
</html>