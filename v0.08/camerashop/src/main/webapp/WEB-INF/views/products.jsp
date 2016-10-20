<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
   <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		 <meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="resources/css/bootstrap.css">
		<link rel="stylesheet" href="resources/css/bootstrap.min.css">
		 <link rel="stylesheet" href="resources/css/navbar.css">
		<script src="resources/js/jquery.min.js"></script>
		<script src="resources/js/bootstrap.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
		<title>Products</title>
	</head>
	<body style="margin-top:100px">
	<%@include file="header.jsp" %>
		<div class="container">
						<div class="row">
							
						<legend>Add Product Form</legend>
						<form:form class="form-horizontal" method="POST" action="product" modelAttribute="product">
							<div  class="col-sm-12 col-md-6 form-group">
      						<label  style="font-size:20px">Select Category:</label>
							
							<form:select path="category.categoryName" items="${listCategory}" itemValue="categoryName" itemLabel="categoryName" class="form-control input-lg" id="category"/>
							</div>
							<div  class="col-sm-12 col-md-6 form-group">
      						<label style="font-size:20px;" for="subcategory">Select Sub categories:</label>	
							<form:select path="subcategory.subCategoryName" items="${listSubCategory}" itemValue="subCategoryName" itemLabel="subCategoryName" class="form-control input-lg" id="subcategory"/>
							</div>
     						<div class="col-sm-12 col-md-6 form-group">
      						<label style="font-size:20px" for="supplier">Select Supplier</label>
      						<form:select path="supplier.supplierName" items="${listSupplier}" itemValue="supplierName" itemLabel="supplierName" class="form-control input-lg" id="supplier"/>
							</div>
							<form:input path="productId" hidden="true"/>
							<div class="col-sm-12 col-md-6 form-group">
      						<label for="pname" style="font-size:20px">Product Name</label>
      						<form:input path="productName" class="form-control input-lg" id="pname"/>
							<form:errors path="productName" class="input-lg" style="color: #e32828 "/>
							</div>
     						<div class="col-sm-6 col-md-6 form-group">
      						<label for="pdesc" style="font-size:20px">Product Description</label>
									<form:input path="productDescription" class="form-control input-lg" id="pdesc"/>
									<form:errors path="productDescription" class="input-lg"/>
								</div>
     						<div class="col-sm-6 col-md-6 form-group">
      						<label for="prent" style="font-size:20px">Product Rent</label>
 									<form:input path="productRent" class="form-control input-lg" id="prent"/>
									<form:errors path="productRent" class="input-lg"/>
							</div>
							<div class="form-group">
							<input type="Submit" value="Submit" class="btn btn-success btn-lg"/>
						</div>
						</form:form>
				
				</div>
				</div>
			
   				<div class="container" ng-app="getProduct" ng-controller="productController">
					<div class="form-group">
      				<label for="search">Search</label>
							<input type="text"  ng-model="test" class="form-control input-lg" id="search">
					</div>
 						<br>
    					<legend>Product Details</legend>
        				<table class="table table-hover table-bordered table-striped">
							<tr>
							<th ng-click="orderByMe('productId')">Product Id</th>
							<th ng-click="orderByMe('categoryId')">Category Id</th>
							<th ng-click="orderByMe('productDescription')">Product Description</th>
							<th ng-click="orderByMe('productName')">Product Name</th>
							<th ng-click="orderByMe('productRent')">Product Rent</th>
							<th ng-click="orderByMe('subCategoryId')">Sub category Id</th>
							<th ng-click="orderByMe('supplierId')">Supplier Id</th>
							<th></th>
							
							</tr>
							<tr ng-repeat="p in products | orderBy:myOrderBy | filter:test">
							<td>{{p.productId}}</td>
							<td>{{p.categoryId}}</td>
							<td>{{p.productDescription}}</td>
							<td>{{p.productName}}</td>
							<td>{{p.productRent}}</td>
							<td>{{p.subCategoryId}}</td>
							<td>{{p.supplierId}}</td>
							<td><a href="editProdsuct-{{p.productId}}">Edit</a>|
							<a href="deleteProduct-{{p.productId}}">Delete</a></td>
							</tr>
						</table>
						<script>
							var product = ${stringProduct};
							angular.module('getProduct', []).controller('productController',function($scope)
							{
								$scope.products = product;
								$scope.orderByMe = function(products){
								$scope.myOrderBy = products;
							}
					
							});
						</script>
				</div>
	</body>
</html>