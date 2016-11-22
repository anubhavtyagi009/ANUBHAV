<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
	<link href="<c:url value="resources/Style/font-awesome-4.6.3/css/font-awesome.css"/>" rel="stylesheet">
</head>
<style>



h2{
color:black;
font-family: "Times New Roman", Times, serif;
}


</style>
<body>
	

 <body>
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
				<li><a href="<c:url value="/admin" />">VIEW PRODUCTS</a></li>
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



 <div class="container-fluid">
 <div class="row">
	<h3><center>YOUR CART</center></h3>
	<br>
	
	
	
	<c:if test="${!empty cartList}">
		<div class="table-responsive">
								<table class="table table-striped" >
			<thead>
			<tr>
<!-- 				<th width="80">Cart ID</th> -->
				<th  width="125">Product Name</th>
				<th  width="125">Price</th>	
				<th  width="125">Image</th>			
				<th width="125" align="center">Delete</th>
				
			</tr>
			</thead>
			<tbody>
			<c:forEach items="${cartList}" var="cart">
				<tr>
<%-- 					<td>${cart.id}</td> --%>
					<td  >${cart.prodname}</td>
					<td  >${cart.price}</td>
					<td><img src="<c:url value="resources/images/${cart.cartpro_id}.jpg"/>"  style="width: 100px;"></td>	
					
					
					
					<td align="center"><a href="<c:url value='cart/delete/${cart.cart_id}' />"><button type="button" class="btn btn-default">Delete</button></a></td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
		</div>
	
	</c:if>
	
	<%-- 
	<c:if test="${!empty userscartlists}">
		<div class="table-responsive">
								<table class="table table-striped" >
			<tr>
<!-- 				<th width="80">Cart ID</th> -->
				<th  width="125">Product Name</th>
				<th  width="125">Price</th>
				
				
				
				
				
				<th width="125" align="center">Delete</th>
				
			</tr>
			<c:forEach items="${userscartlists}" var="userscart">
				<tr>
					<td>${cart.id}</td>
					<td  align="center">${userscart.prodname}</td>
					<td  align="center">${userscart.price}</td>
					
					
					
					
					<td align="center"><a href="<c:url value='cart/delete/${userscart.cart_id}' />"><button type="button" class="btn btn-default">Delete</button></a></td>
				</tr>
			</c:forEach>
		</table>
		</div>
	
	</c:if>
	
	 --%>
	</div>
	<br>
	<br>
	<div style="text-align: center;">
	
	<a href="home"><button type="button" class="btn btn-success" align="center">CONTINUE SHOPPING</button>
	</h4></a>
	
	
	<br>
	<br>
	<c:if test="${!empty cartList }">
	<a href="checkout"><h4 style="color: #c19a6b "><button type="button" class="btn btn-primary">Checkout and Pay</button>
	</h4></a>
	
	</c:if>
	</div>
	</div>

				

 
	
</body>
</html><br><br><br><br><br><br><br><br><br><br><br>
<%@include file="footer.jsp"%>
</body>
</html>