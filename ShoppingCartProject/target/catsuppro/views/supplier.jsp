<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script src="resources/scripts/ajaxjquery.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
</head>
<body>

	<%@include file="navbar.jsp"%>
	<%@include file="subnavadmin.jsp"%>

	<div class="container-fluid">
		<div class="row product-container">

			<!-- ------------------- Category ADD Form ------------------- -->
			<div class="col-lg-12 col-md-6 col-sm-12">
				<div class="panel panel-default ">

					<!-- --------------- Displays this form when Category Name field is empty ------------ -->

					<div class="panel-heading">
						<h3 class="text-center">Add the Suppliers details.</h3>
					</div>
					<!-- /.panel-heading -->

					<%-- <c:if test="${not empty catsuccess}">
						<p class="alert-success text-center errormsg">${catsuccess}</p>
					</c:if> --%>
					<%-- <c:if test="${not empty caterror}">
							<p class="alert-danger text-center errormsg">${caterror}</p>
						</c:if> --%>

					<div class="panel-body">
						<form:form action="supplieradd" commandName="supplier"
							cssClass="add-content form-horizontal">

							<div class="form-group ">
								<label class="control-label">Supplier Id</label> 
								<br>
								<%-- 	<c:if test="${!empty category.cat_name}">
							      		<form:input path="cat_id" value="${category.cat_id}" readonly="true" cssClass="col-lg-7 col-md-7 col-xs-10" />
							      	</c:if> --%>

								<c:if test="${!empty supplier.sup_id}">
									<form:input path="sup_id" value="${supplier.sup_id}"
										readonly="true" cssClass="col-lg-7 col-md-7 col-xs-10" />
								</c:if>
								<c:if test="${empty supplier.sup_id}">
									<form:input path="sup_id" placeholder="Supplier id"
										cssClass="col-lg-7 col-md-7 col-xs-10" />
								</c:if>
							</div>

							<div class="form-group ">
								<label class="control-label">Supplier Name</label> 
								<br>
								<form:input path="sup_name"
									placeholder="Enter Supplier Name Here"
									value="${supplier.sup_name}"
									cssClass="col-lg-7 col-md-7 col-xs-10" />
							</div>

							<div class="form-group">
								<label class="control-label">Address </label> 
								<br>
								<c:if test="${empty supplier.sup_address}">
									<form:textarea path="sup_address"
										placeholder="Address of Supplier"
										cssClass="col-lg-7 col-md-7 col-xs-10" rows="5" />
								</c:if>
								<c:if test="${!empty supplier.sup_address}">
									<form:input path="sup_address" value="${supplier.sup_address}"
										cssClass="col-lg-7 col-md-7 col-xs-10" rows="5" />
								</c:if>
							</div>

							<c:if test="${empty supplier.sup_name}">
								<input type="submit" value="Add Supplier" class="submit">
								<br>
							</c:if>
							<c:if test="${!empty supplier.sup_name}">
								<input type="submit" value="Update Supplier" class="submit">
								<br>
							</c:if>

						</form:form>
						<!-- /.Category Form End -->

						<a href="suptable">Show supplier</a>

						<c:if test="${!empty supplierList}">
							<h2>Supplier Table</h2>
						<div class="table-responsive">
								<table class="table table-striped">
								<thead>
									<tr>
										<th>supplier Id</th>
										<th>Supplier Name</th>
										<th>Supplier address</th>
									</tr>
								</thead>

								<tbody>
									<c:forEach items="${supplierList}" var="slist">
										<tr>
											<td>${slist.sup_id}</td>
											<td>${slist.sup_name}</td>
											<td>${slist.sup_address}</td>
											<td><a href="supplier-edit-${slist.sup_id}">Edit</a></td>
											<td><a href="supplier-delete-${slist.sup_id}">Delete</a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							</div>
						</c:if>

					</div>
					<!-- /.panel-body -->
				</div>
				<!-- /.panel-primary -->
			</div>
			<!-- /Category ADD form area end -->

			<%@include file="footer.jsp"%>
</body>
</html>