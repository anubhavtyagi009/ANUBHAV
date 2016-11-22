<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
   <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> 
<!--     <link href="resources/styles/bootstrap.css" rel="stylesheet"> -->
<script src="resources/scripts/ajaxjquery.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
    <!-- <script src="resources/scripts/bootstrap.min.js" ></script> -->
    <link href="resources/styles/home.css" rel="stylesheet">
<!-- <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet"> -->
  <style>
.corousel-inner > .item > img,
.corousel-inner > .item > a > img {
  width: 70%;
  margin: auto;
}
</style>
  </head>
    <body>

<nav class="navbar navbar-inverse" style="margin-bottom: 0px;">
<div class="container-fluid">

<div class="navbar-header">
  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
    <span class="sr-only">Toggle navigation</span>
    <span class="icon-bar"></span>
    <span class="icon-bar"></span>
    <span class="icon-bar"></span>
  </button>
  <a class="navbar-brand" href="#"  style="padding: 0px 15px;"><img src="resources/images/logo2.jpg" id="logo"></a>
</div>

<!-- Collect the nav links, forms, and other content for toggling -->
<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
  <ul class="nav navbar-nav">
    <li><a href="home"><i class="glyphicon glyphicon-home"></i> <span class="sr-only">(current)</span></a></li>
  <%--   <c:if test="${pageContext.request.userPrincipal.name == 'Anubhav'}">
    <li><a href="admin"><i class="glyphicon glyphicon-home"></i>Admin</a></li>
    
    
    </c:if>
     --%>
    
    <li><a href="about">ABOUT US</a></li>
    <li class="dropdown">
      <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">CATEGORIES <span class="caret"></span></a>
      <ul class="dropdown-menu">
        <c:if test="${!empty hcatlist }">
        <c:forEach items="${hcatlist}" var="homecatlist">
        <li><a href="category${homecatlist.cat_id}">${homecatlist.cat_name}</a></li>
        
        
        </c:forEach>
        
        </c:if>

      </ul>
    </li>
  </ul>
 <!--  <form class="navbar-form navbar-left">
    <div class="form-group">
      <input type="text" class="form-control" placeholder="Search">
    </div>
    <button type="submit" class="btn btn-default">Submit</button>
  </form> -->
  <ul class="nav navbar-nav navbar-right">
   <li id="feedback"><a href="feedback">FEEDBACK</a></li>
   
   <c:if test="${pageContext.request.userPrincipal.name != null}">
   
   <c:if test="${pageContext.request.userPrincipal.name != 'Anubhav'}">
				<li><a href="<c:url value="/myCart" />"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a>${cartSize}</li>
	</c:if>
			
			
  <li><a>Hello, ${pageContext.request.userPrincipal.name}</a></li>
  <li><a href="<c:url value="/j_spring_security_logout" />"> <span class="glyphicon glyphicon-log-out"></span> LOGOUT</a></li>
   </c:if>
   
   
   
      <c:if test="${pageContext.request.userPrincipal.name == null}">
    <li><a href="login"><span class="glyphicon glyphicon-log-in" aria-hidden="true">LOGIN</span></a></li>
     <li><a href="memberShip.obj">SIGNUP</a> </li>
   </c:if>
  </ul>
</div><!-- /.navbar-collapse -->
</div><!-- /.container-fluid -->
</nav>

 

</body>
</html>