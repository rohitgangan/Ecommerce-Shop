<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
   <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<title>Products</title>
</head>
<body>

<form:form method="POST" action="add/product" modelAttribute="product">
<label>Select Category</label>
<form:select path="category.categoryName" items="${listCategory}" itemValue="categoryName" itemLabel="categoryName"/>
<label>Select Sub Category</label>
<form:select path="subcategory.subCategoryName" items="${listSubCategory}" itemValue="subCategoryName" itemLabel="subCategoryName"/>
<label>Select Supplier</label>
<form:select path="supplier.supplierName" items="${listSupplier}" itemValue="supplierName" itemLabel="supplierName"/>

<label>Product Name</label>
<form:input path="productName"/>
<label>Product Description</label>
<form:input path="productDescription"/>
<label>Product Rent</label>
<form:input path="productRent"/>
<input type="Submit" value="Submit"/>
</form:form>

<div>


</div>

<div ng-app="getProduct" ng-controller="productController">
<label>Search</label>
<input type="text"  ng-model="test">
<table>
<tr>
<th ng-click="orderByMe('productId')">Product Id</th>
<th ng-click="orderByMe('categoryId')">Category Id</th>
<th ng-click="orderByMe('productDescription')">Product Description</th>
<th ng-click="orderByMe('productName')">Product Name</th>
<th ng-click="orderByMe('productRent')">Product Rent</th>
<th ng-click="orderByMe('subCategoryId')">Sub category Id</th>
<th ng-click="orderByMe('supplierId')">Supplier Id</th>
</tr>
<tr ng-repeat="p in products | orderBy:myOrderBy | filter:test">
<td>{{p.productId}}</td>
<td>{{p.categoryId}}</td>
<td>{{p.productDescription}}</td>
<td>{{p.productName}}</td>
<td>{{p.productRent}}</td>
<td>{{p.subCategoryId}}</td>
<td>{{p.supplierId}}</td>
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