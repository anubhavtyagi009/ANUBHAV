<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<%@page isELIgnored ="false" %>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Cart</title>

   <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> 
<!--     <link href="resources/styles/bootstrap.css" rel="stylesheet"> -->
<script src="resources/scripts/ajaxjquery.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
    <!-- <script src="resources/scripts/bootstrap.min.js" ></script> -->
    <link href="resources/styles/home.css" rel="stylesheet">
<style>
 th{
    color:white;
    background-color:#d35400;
}

table, th, td {
    border: 1px solid black;
}
.btn {
    background-color:#d35400 ;
    }
.button {
    background-color:#d35400 ;
    }


h2{
color:#d35400;
font-family: "Times New Roman", Times, serif;
}


</style>
</head>

 <body style="background-color:white;">
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
      
      
      
  </div>
</nav>



 
 
 <div class="container-fluid">
	<h2><center>CART LIST</center></h2>
	<br>
	<br>
	<br>
	<c:if test="${!empty cartList}">
			<div class="table-responsive">
								<table class="table table-striped" >
			<tr>
<!-- 				<th width="80">Cart ID</th> -->
				<th width="120" align="center">Product Name</th>
				<th width="120" align="center">Price</th>
				
				
				
				
				<th width="60" align="center">Delete</th>
				
			</tr>
			<c:forEach items="${cartList}" var="cart">
				<tr>
<%-- 					<td>${cart.id}</td> --%>
					<td align="center">${cart.prodname}</td>
					<td align="center">${cart.price}</td>
					
					
				
					
					<td width="120" align="center"><a href="<c:url value='cart/delete/${cart.cart_id}' />"><button type="button" class="btn btn-info">Delete</button></a></td>
				</tr>
			</c:forEach>
		</table>
		<br>
		</div>
		
		
		<h2><center> Total: ${sum}</center></h2>
	</c:if>
	</div>
	
	
	<br>
	<br>
	<br>
	<br>
	<div style="text-align: center;">
	<a href="payment"><button type="button" class="btn btn-success">Proceed to Pay</button>
	</h4></a>
	</div>
	<%@include file="footer.jsp"%>
</body>
</html><br><br><br><br><br><br><br><br><br><br><br>

