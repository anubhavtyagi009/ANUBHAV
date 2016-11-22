
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="true"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<head>
<title>Payment Details</title>
   <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> 
<!--     <link href="resources/styles/bootstrap.css" rel="stylesheet"> -->
<script src="resources/scripts/ajaxjquery.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
    <!-- <script src="resources/scripts/bootstrap.min.js" ></script> -->
    <link href="resources/styles/home.css" rel="stylesheet">
<style>

<style>
li.uppercase {
	text-transform: uppercase;
}




h2{
color:#ff3399;
font-family: calibre;
}
.btn {
    background-color: #ff3399;
    }


</style>
</head>

<body>
<nav class="navbar navbar-inverse ">
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
      
      

	</ul>

      
<%--       <li><a href="<c:url value="/loginUser" />">Login</a></li> --%>
<%-- 			<li><a href="<c:url value="memberShip.obj" />">Sign Up</a></li> --%>
		
	</ul>
      
<!--       <li><a href="memberShip.obj"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li> -->
<!--       <li><a href="loginUser"><span class="glyphicon glyphicon-log-in"></span> Login</a></li> -->
<%--       <li><a href="myCart"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a>${cartSize} </li> --%>
<!--     </ul> -->
      
  </div>
</nav>

	<div class="header">
		<div class="header-top-strip">
			<div class="container">
				
				<div class="clearfix"></div>
			</div>
		</div>
	</div>

	<div class="container">
		
		
		<center>
			<h2>ENTER YOUR PAYMENT DETAILS</h2>
		</center>
		<br>
	</div>

	<%-- <center>
		<div class="content">
			<fieldset>
				<br>
				<form action="thanks" method="post">
					<table>

						<tr>
							<td>Street Address:</td>
							<td><input id="input-field" type="text" name="streetaddress" required="required" autocomplete="on" maxlength="45" placeholder="Street Address"/></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td>City:</td>
							<td><input id="column-left" type="text" name="city" required="required" autocomplete="on" maxlength="20" placeholder="City"/></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td>ZIP:</td>
							<td><input id="column-right" type="text" pattern="^\d{6}$" name="zipcode" required="required" autocomplete="on" pattern="[0-9]*" maxlength="10" placeholder="ZIP code"/></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td>Mobile:</td>
							<td><input id="input-field" type="tel" name="mobile" required="required" pattern="^\d{10}$" maxlength="15" autocomplete="on" placeholder="Mobile No"/></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td>Email:</td>
							<td><input id="input-field" type="email" name="email" required="required" autocomplete="on" maxlength="40" placeholder="Email"/></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td>FirstName:</td>
							<td><input id="column-left" type="text" name="first-name" required="required" placeholder="First Name"/></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
						
						<tr>
							<td>LastName:</td>
							<td><input id="column-right" type="text" name="last-name" required="required" placeholder="Last Name"/></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td>Card Number:</td>
							<td><input id="input-field" type="text" name="number" required="required" placeholder="Card Number"/></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td>Expiry Date:</td>
							<td><input id="column-left" type="text" name="expiry" required="required" placeholder="MM / YY"/></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td>CCV:</td>
							<td><input id="column-right" type="text" name="cvc" required="required" placeholder="CCV"/></td>
						</tr>
						
						<tr>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
						<br>
						
						<tr>
							<td align="center" colspan="2"><input type="submit"
								value="Submit" class="btn btn-success"/></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
					</table>
				</form>
			</fieldset>
		</div>
	</center>
 --%>
 
 
 <center>
		<div class="content">
			<fieldset>
				<br>
				<form:form action="addpayment" commandName="paymentform">
				
					StreetAddress <form:input path="streetaddrs"/> <br>
					city <form:input path="city"/> <br>
					zip <form:input path="zip" /> <br>
					mob <form:input path="mob" /> <br>
					payemail <form:input path="payemail" /> <br>
					payfname <form:input path="payfname" /> <br>
					paylname <form:input path="paylname" /> <br>
					paycardno <form:input path="paycardno" /> <br>
					cardexpirydate <form:input path="cardexpirydate" /> <br>
					ccv <form:input path="ccv" /> <br>
					
					<input type="submit" value="submit">
				</form:form>
			</fieldset>
		</div>
	</center>

 
	<%@include file="footer.jsp"%>
</body>
</html>


