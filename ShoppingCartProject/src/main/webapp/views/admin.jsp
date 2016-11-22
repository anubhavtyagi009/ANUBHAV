<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ADMIN</title>

<!--   <link href="resources/styles/bootstrap.css" rel="stylesheet">   -->
<!-- <script src="resources/scripts/ajaxjquery.js"></script>
 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- <script src="scripts/bootstrap.min.js"></script> -->
<!-- <link href="resources/styles/home.css" rel="stylesheet">  -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

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
	<%@include file="subnavadmin.jsp"%>
	
<%-- 
	<div class="container-fluid">
		<div class="row">
				 
 	 <c:if test="${!empty feedlist}">
	 	<table>
	 		<thead>
	 			<tr>
	 				<th>Name</th>
	 				<th>Comment/Query</th>
	 			</tr>
	 		</thead>
	 		
	 		<tbody>
	 			<c:forEach items="${feedlist} var="flist">
		 			<tr>
		 				<td>${flist.fname}</td>
		 				<td>${flist.comments}</td>
		 			</tr>
		 		</c:forEach>
	 		</tbody>
	 		
	 	
	 	</table>
	 
	 </c:if> 
	 </div>
	</div> --%>
	
	
	
	<div class="container-fluid" >
		<div class="row">
			<div class="col-lg-12 col-md-6 col-sm-12" style="background:white;">
				<div class="table-div">
					<h1 class="text-center">FeedBacks</h1>
					<hr>
					
					<c:if test="${!empty feedlist}">
						<div class="feedback-container">
							<blockquote>
								<c:forEach items="${feedlist}" var="flist">									
									<div class="feed-username">
										<h4> ${flist.feed_name}</h4>
									</div> <!-- /.feed-username -->
								
									<div class="feed-feedback">
										<h4><small>${flist.comments}</small></h4>
									</div> <!-- /.feed-feedback -->
									<hr>									
								</c:forEach>
							</blockquote>
						</div> <!-- /.feedback-container -->
					</c:if>
					
					<c:if test="${empty feedlist}">
						<h1 class="text-center" style="color:#ccc;">No Feedbacks to show</h1>
					</c:if>
					
					<p style="text-align: right;"><a href="allfeed"><button type="button" class="admin-btns">Show all</button></a></p>
				</div> <!-- /.table-div -->
			</div>
	<%@include file="footer.jsp"%>

</body>
</html>