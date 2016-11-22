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
    <!-- <link href="resources/styles/bootstrap.css" rel="stylesheet"> -->
    <script src="resources/scripts/ajaxjquery.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
    <!-- <script src="resources/scripts/bootstrap.min.js" ></script> -->
    <link href="resources/styles/home.css" rel="stylesheet">
    <link href="<c:url value="resources/styles/font-awesome-4.6.3/css/font-awesome.css"/>" rel="stylesheet">

  <style>
.corousel-inner > .item > img,
.corousel-inner > .item > a > img {
  width: 70%;
  margin: auto;
}
</style>



</head>
<body>
<%@include file="navbar.jsp"%>




<div class="container-fluid">

<c:if test="${!empty prolistofcat }">
		<c:forEach items="${prolistofcat }" var="prolistwithcat">
	<div class="row">
	
		
			<div class="col-lg-6">
				<div class="thumbnail">
					<img src="<c:url value="resources/images/${prolistwithcat.pro_id }.jpg"/>">
				</div>
			</div>
		
			<div class="col-lg-6">
				<h1 class="text-center">${prolistwithcat.pro_name }</h1>
				<%-- <h4>${prolistwithcat.price }</h4> --%>
				<h2 class="text-center"><i class="fa fa-inr" aria-hidden="true"></i> ${prolistwithcat.price }</h2>
				
				<p> ${prolistwithcat.pro_desc }</p>
			</div>
			
			<c:if test="${pageContext.request.userPrincipal.name != null}">
			<c:if test="${pageContext.request.userPrincipal.name != 'Anubhav'}">
			<a href="cartadd${prolistwithcat.pro_id }" class="btn btn-primary">Add to cart</a>
					<a class="btn" href="payment">Buy Now</a> 
			</c:if>
			</c:if>
			
		
	</div>
</c:forEach>
	
	</c:if>
	
</div>


<%@include file="footer.jsp"%>
</body>
</html>