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
						<h3 class="text-center">Add the Categories details.</h3>
					</div>
					<!-- /.panel-heading -->

					<c:if test="${not empty catsuccess}">
						<p class="alert-success text-center errormsg">${catsuccess}</p>
					</c:if>
					<%-- <c:if test="${not empty caterror}">
							<p class="alert-danger text-center errormsg">${caterror}</p>
						</c:if> --%>

					<div class="panel-body">
						<form:form action="categoryadd" commandName="category"
							cssClass="add-content form-horizontal">

							<div class="form-group ">
								<label class="control-label">Category Id</label> <br>
								<%-- 	<c:if test="${!empty category.cat_name}">
							      		<form:input path="cat_id" value="${category.cat_id}" readonly="true" cssClass="col-lg-7 col-md-7 col-xs-10" />
							      	</c:if> --%>

								<c:if test="${!empty category.cat_id}">
									<form:input path="cat_id" value="${category.cat_id}"
										readonly="true" cssClass="col-lg-7 col-md-7 col-xs-10" />
								</c:if>
								<c:if test="${empty category.cat_id}">
									<form:input path="cat_id" placeholder="category id"
										cssClass="col-lg-7 col-md-7 col-xs-10" />
								</c:if>
							</div>

							<div class="form-group ">
								<label class="control-label">Category Name</label><br>
								<form:input path="cat_name"
									placeholder="Enter Category Name Here"
									value="${category.cat_name}"
									cssClass="col-lg-7 col-md-7 col-xs-10" />
							</div>

							<div class="form-group">
								<label class="control-label">Description </label> <br>
								<c:if test="${empty category.cat_desc}">
									<form:textarea path="cat_desc"
										placeholder="Description About Category"
										cssClass="col-lg-7 col-md-7 col-xs-10" rows="5" />
								</c:if>
								<c:if test="${!empty category.cat_desc}">
									<form:input path="cat_desc" value="${category.cat_desc}"
										cssClass="col-lg-7 col-md-7 col-xs-10" rows="5" />
								</c:if>
							</div>

							<c:if test="${empty category.cat_name}">
								<input type="submit" value="Add Category" class="submit"><br>
							</c:if>
							<c:if test="${!empty category.cat_name}">
								<input type="submit" value="Update Category" class="submit"><br>
							</c:if>

						</form:form>
						<!-- /.Category Form End -->

						<a href="cattable">Show category</a>

						<c:if test="${!empty categoryList}">
							<h2>Category Table</h2>
							<div class="table-responsive">
								<table class="table table-striped">
								<thead>
									<tr>
										<th>Category Id</th>
										<th>Category Name</th>
										<th>Category Desc</th>
									</tr>
								</thead>

								<tbody>
									<c:forEach items="${categoryList}" var="clist">
										<tr>
											<td>${clist.cat_id}</td>
											<td>${clist.cat_name}</td>
											<td>${clist.cat_desc}</td>
											<td><a href="category-edit-${clist.cat_id}">Edit</a></td>
											<td><a href="category-delete-${clist.cat_id}">Delete</a></td>
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