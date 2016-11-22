<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HOME</title>
<!--   <link href="resources/styles/bootstrap.css" rel="stylesheet">   -->
<script src="resources/scripts/ajaxjquery.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- <script src="scripts/bootstrap.min.js"></script> -->
<!-- <link href="resources/styles/home.css" rel="stylesheet">  -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link href="<c:url value="resources/styles/font-awesome-4.6.3/css/font-awesome.css"/>" rel="stylesheet">

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

	<c:if test="${pageContext.request.userPrincipal.name == 'Anubhav'}">
		<jsp:include page="subnavadmin.jsp"></jsp:include>
	</c:if>

	<div class="container-fluid">
		<br>
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
				<li data-target="#myCarousel" data-slide-to="4"></li>
				<li data-target="#myCarousel" data-slide-to="5"></li>
				<li data-target="#myCarousel" data-slide-to="6"></li>
				<li data-target="#myCarousel" data-slide-to="7"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<center>
						<img src="resources/images/img2.jpg" alt="img1" width="700"
							height="345">
					</center>
				</div>

				<div class="item">
					<center>
						<img src="resources/images/1.JPG" alt="img2" width="700"
							height="345">
					</center>
				</div>

				<div class="item">
					<center>
						<img src="resources/images/img7.jpg" alt="img3" width="700"
							height="345">
					</center>
				</div>
				<div class="item">
					<center>
						<img src="resources/images/2.jpg" alt="img4" width="700"
							height="345">
					</center>
				</div>

				<div class="item">
					<center>
						<img src="resources/images/img8.jpg" alt="img5" width="700"
							height="345">
					</center>
				</div>

				<div class="item">
					<center>
						<img src="resources/images/bajaj/220/1.JPG" alt="img6" width="700"
							height="345">
					</center>
				</div>
				<div class="item">
					<center>
						<img src="resources/images/vm.jpg" alt="img7" width="700"
							height="345">
					</center>
				</div>
				<div class="item">
					<center>
						<img src="resources/images/r1m.jpg" alt="img8" width="700"
							height="345">
					</center>
				</div>

			</div>

			<!-- Left and right controls -->
			<a class="center carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>
	</br>

	<div class="container-fluid">

	<c:if test="${!empty productlist }">
		
		<div class="row">		
				
		<c:forEach items="${productlist }" var="newpro">	
					<div class="col-sm-12 col-md-4">
						<div class="thumbnail">
							<h2 class="text-center">New Arrivals</h2>
							<img src="resources/images/${newpro.pro_id }.jpg" alt=""
								style="width: 300px;">
							<div class="caption">
								<h4 class="text-center">${newpro.pro_name }</h4>
								  <h4 class="text-center"><i class="fa fa-inr" aria-hidden="true"></i> ${newpro.price}</h4>

								
								<%-- <h4 class="text-center">${newpro.price }</h4>
 --%>
								<!-- <a class="btn btn-primary" href="">Add To Cart</a> -->
								<%-- <c:if
									test="${pageContext.request.userPrincipal.name != 'Anubhav'}">
									<a href="cartadd${newpro.pro_id }" class="btn btn-primary">Add
										to cart</a>
									<a class="btn" href="payment">Buy Now</a>
								</c:if> --%>
								
								<c:if test="${pageContext.request.userPrincipal.name != null}">
									<c:if test="${pageContext.request.userPrincipal.name != 'Anubhav'}">
										<a href="yourproduct${newpro.pro_id}" class="btn btn-primary">More</a>
										<a class="btn" href="payment">Buy Now</a>
									</c:if>
								</c:if>
								
								<c:if test="${pageContext.request.userPrincipal.name == null}">
									<a href="yourproduct${newpro.pro_id}" class="btn btn-primary">More</a>
									<a class="btn-right" href="login">Buy Now</a>
								</c:if>
							</div>
						</div>
					</div>
				</c:forEach>
		</div> <!-- /.row -->
	
	</c:if>
	</div> 



		<div class="container-fluid">


		<%-- <div class="row">
			<c:if test="${!empty productlist }">
				<c:forEach items="${productlist }" var="newpro">
					<div class="col-sm-12 col-md-4">
						<div class="thumbnail">
							<h2>New Arrivals</h2>
							<img src="resources/images/${newpro.pro_id }.jpg" alt=""
								style="width: 200px;">
							<div class="caption">
								<h4>${newpro.pro_name }</h4>

							
								<h4>${newpro.price }</h4>

								<!-- <a class="btn btn-primary" href="">Add To Cart</a> -->
								<c:if
									test="${pageContext.request.userPrincipal.name != 'Anubhav'}">
									<a href="cartadd${newpro.pro_id }" class="btn btn-primary">Add
										to cart</a>
									<a class="btn" href="payment">Buy Now</a>
								</c:if>
								<c:if test="${pageContext.request.userPrincipal.name == null}">
									<a href="login" class="btn btn-primary">Add to cart</a>
									<a class="btn" href="login">Buy Now</a>
								</c:if>
							</div>
						</div>
					</div>
				</c:forEach>
			</c:if>
		</div> --%>
	</div> 

	<%@include file="footer.jsp"%>



</body>
</html>