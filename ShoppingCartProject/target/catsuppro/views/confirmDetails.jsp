<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page isELIgnored ="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shopping Cart</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <link href="resources/styles/bootstrap.css" rel="stylesheet">  -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- <script src="scripts/bootstrap.min.js"></script> -->
<link href="resources/styles/home.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">


<link href="resources/styles/animate.css" rel="stylesheet">


<style>
 th{
    color: light blue;
    backgr	ound-color: #9ACD32;
}

</style>
</head>



<body >

<%@include file="navbar.jsp"%>


   
<h2><center>CONFIRM DETAILS</center></h2>
		<br>
		<br>
		<div class="container-fluid">
	
<div class="col-md-2">
  <div class="row-fluid">
		<fieldset>
		<!-- for triggering webflow events using links,
					 the eventId to be triggered is given in "href" attribute as:
				 -->
			
			<sf:form modelAttribute="user">
			<%-- 	<sf:label path="user_id">User ID :</sf:label>    ${user.user_id}
					<br />
				<br /> --%>
				<sf:label path="user_name"> User Name:</sf:label> ${user.user_name}
					<br />
				<br />
				<sf:label path="user_pass">Password :</sf:label> ${user.user_pass}
				<br>
					<br>
                <sf:label path="user_email">Email:</sf:label> ${user.user_email}
					<br />
				<br />
			
	 
				<br />
				<input name="_eventId_edit" type="submit"  class="btn btn-primary" value="Edit" />
				<input name="_eventId_submit" type="submit" class="btn btn-success" value="confirmDetails" />
				<br />
			</sf:form>
		</fieldset>
	</div>
	</div>
	</div>
	<%@include file="footer.jsp"%>
</body>
</html>