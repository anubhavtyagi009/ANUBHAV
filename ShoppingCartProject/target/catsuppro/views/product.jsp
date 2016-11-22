<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%@include file="navbar.jsp"%>
	<%@include file="subnavadmin.jsp"%>


	<%-- <h1>Product</h1>
<form:form action="productadd" commandName="product" enctype="multipart/form-data">

	<c:if test="${!empty product.pro_id}">
		<form:input path="pro_id" value="${product.pro_id}" readonly="true"/>
	</c:if>
	<c:if test="${empty product.pro_id}">
		<form:input path="pro_id" placeholder="pro iD" />
	</c:if>
	
	<form:input path="pro_name" placeholder="pro name" value="${product.pro_name}"/>
	<form:input path="size" placeholder="pro size" value="${product.size}"/>
	<form:input path="price" placeholder="pro price" value="${product.price}"/>
	<form:input path="pro_desc" placeholder="pro desc" value="${product.pro_desc}"/>
	<form:select path="stock">
		<form:option value="Available">Available</form:option>
		<form:option value="Unavailable">Unavailable</form:option>
	</form:select>
	
	<form:select path="supplier.sup_name" value="${product.supplier.sup_name}" items="${supplierList}" itemLabel="sup_name" itemValue="sup_name"></form:select>
	<form:select path="category.cat_name" value="${product.category.cat_name}" items="${categoryList}" itemLabel="cat_name" itemValue="cat_name"></form:select>
	
	<form:input type="file" value="${product.image}" path="image" required="true"/>	
	
	<c:if test="${!empty product.pro_name}">
		<input type="submit" value="Edit">
	</c:if>
	
	<c:if test="${empty product.pro_name}">
		<input type="submit" value="ADD">
	</c:if>
	
</form:form>
<a href="protable-${product.pro_id}">Show product</a>

<c:if test="${!empty productList}">
<h2>Product Table</h2>
<table border="1">
	<thead>
		<tr>
			<th>Product Id</th>
			<th>Product Name</th>
			<!-- <th>Product Size</th> -->
			<th>Price</th>
			<!-- <th>Stock</th> -->
			<th>Description</th>
			<th>Cat Name</th>
			<th>Sup Name</th>
			<th>Image</th>
		</tr>
	</thead>
	
	<tbody>
	<c:forEach items="${productList}" var="plist">
		<tr>
			<td>${plist.pro_id}</td>
			<td>${plist.pro_name}</td>
			<td>${plist.size}</td>
			<td>${plist.price}</td>
			<td>${plist.stock}</td>
			<td>${plist.pro_desc}</td>
			<td>${plist.category.cat_name}</td>
			<td>${plist.supplier.sup_name}</td>
			<td><img src="resources/images/${plist.pro_id}.jpg" style="width: 100px; height: 150px;"></td>
			<td><a href="product-edit-${plist.pro_id}">Edit</a></td>
			<td><a href="product-delete-${plist.pro_id}">Delete</a></td>
		</tr>	
	</c:forEach>
	</tbody>
</table>
</c:if>
 --%>


	<div class="container-fluid">
		<div class="row product-container">

			<!-- ------------------- Category ADD Form ------------------- -->
			<div class="col-lg-12 col-md-6 col-sm-12">
				<div class="panel panel-default ">

					<!-- --------------- Displays this form when Category Name field is empty ------------ -->

					<div class="panel-heading">
						<h3 class="text-center">Add the Product details.</h3>
					</div>
					<!-- /.panel-heading -->

					<%-- <c:if test="${not empty catsuccess}">
						<p class="alert-success text-center errormsg">${catsuccess}</p>
					</c:if> --%>
					<%-- <c:if test="${not empty caterror}">
							<p class="alert-danger text-center errormsg">${caterror}</p>
						</c:if> --%>

					<div class="panel-body">
						<form:form action="productadd" commandName="product"
							enctype="multipart/form-data"
							cssClass="add-content form-horizontal">

							<div class="form-group ">
								<label class="control-label">Product Id</label> 
								<br> 
								<%-- 	<c:if test="${!empty category.cat_name}">
							      		<form:input path="cat_id" value="${category.cat_id}" readonly="true" cssClass="col-lg-7 col-md-7 col-xs-10" />
							      	</c:if> --%>

								<c:if test="${!empty product.pro_id}">
									<form:input path="pro_id" value="${product.pro_id}"
										readonly="true" cssClass="col-lg-7 col-md-7 col-xs-10" />
								</c:if>
								<c:if test="${empty product.pro_id}">
									<form:input path="pro_id" placeholder="Product id"
										cssClass="col-lg-7 col-md-7 col-xs-10" />
								</c:if>
							</div>

							<div class="form-group ">
								<label class="control-label">Product Name</label> 
								<br> 
								<form:input path="pro_name"
									placeholder="Enter Product Name Here"
									value="${product.pro_name}"
									cssClass="col-lg-7 col-md-7 col-xs-10" />
							</div>

							<div class="form-group">
								<label class="control-label">Price </label> 
								<br> 
								<c:if test="${empty product.price}">
									<form:textarea path="price" placeholder="Enter Price"
										cssClass="col-lg-7 col-md-7 col-xs-10" />
								</c:if>
								<c:if test="${!empty product.price}">
									<form:input path="price" value="${product.price}"
										cssClass="col-lg-7 col-md-7 col-xs-10" />
								</c:if>
							</div>

							<div class="form-group">
								<label class="control-label">Product Description</label> <br>
								<c:if test="${empty product.pro_desc}">
									<form:textarea path="pro_desc"
										placeholder="Description About Product"
										cssClass="col-lg-7 col-md-7 col-xs-10" rows="5" />
								</c:if>
								<c:if test="${!empty product.pro_desc}">
									<form:input path="pro_desc" value="${product.pro_desc}"
										cssClass="col-lg-7 col-md-7 col-xs-10" rows="5" />
								</c:if>
							</div>

							<div class="form-group">
								<label class="control-label">Categories List</label> <br>
								<form:select path="category.cat_name"
									value="${product.category.cat_name}" items="${categoryList}"
									itemLabel="cat_name" itemValue="cat_name"
									cssClass="col-lg-7 col-md-7 col-xs-10"></form:select>
							</div>

							<div class="form-group">
								<label class="control-label">Suppliers List</label> <br>
								<form:select path="supplier.sup_name"
									value="${product.supplier.sup_name}" items="${supplierList}"
									itemLabel="sup_name" itemValue="sup_name"
									cssClass="col-lg-7 col-md-7 col-xs-10"></form:select>
							</div>


							<div class="form-group">
								<label class="control-label">Upload Image</label> <br>
								<form:input type="file" path="image" required="true"
									cssClass="col-lg-7 col-md-7 col-xs-10" />
							</div>
					</div>


					<c:if test="${empty product.pro_name}">
						<input type="submit" value="Add Product" class="submit">
						<br>
					</c:if>
					<c:if test="${!empty product.pro_name}">
						<input type="submit" value="Update Product" class="submit">
						<br>
					</c:if>

					</form:form>
					<!-- /.Category Form End -->

					<a href="protable-${product.pro_id}">Show product</a>

					<c:if test="${!empty productList}">
						<h2>Product Table</h2>
							<div class="table-responsive">
								<table class="table table-striped">
							<thead>
								<tr>
									<th>Product Id</th>
									<th>Product Name</th>
									<!-- <th>Product Size</th> -->
									<th>Price</th>
									<!-- <th>Stock</th> -->
									<th>Description</th>
									<th>Cat Name</th>
									<th>Sup Name</th>
									<th>Image</th>
								</tr>
							</thead>

							<tbody>
								<c:forEach items="${productList}" var="plist">
									<tr>
										<td>${plist.pro_id}</td>
										<td>${plist.pro_name}</td>
										<td>${plist.price}</td>
										<td>${plist.pro_desc}</td>
										<td>${plist.category.cat_name}</td>
										<td>${plist.supplier.sup_name}</td>
										<td><img src="resources/images/${plist.pro_id}.jpg"
											style="width: 100px; height: 150px;"></td>
										<td><a href="product-edit-${plist.pro_id}">Edit</a></td>
										<td><a href="product-delete-${plist.pro_id}">Delete</a></td>
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