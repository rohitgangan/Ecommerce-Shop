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
<title>Sub categories</title>
</head>

<body style="margin-top:100px">
<%@include file="header.jsp" %>
<div class="container">
	<div class="row">
		<legend>Add Sub Category Form</legend>
<form:form class="form-horizontal" method="POST" action="subcategory" modelAttribute="subcategory">
<div  class="col-sm-12 col-md-6 form-group">
<label style="font-size:20px">Category Name</label>
<form:select path="category.categoryName" items="${listCategory}" itemValue="categoryName" itemLabel="categoryName" class="form-control input-lg"/>
</div>
<div  class="col-sm-12 col-md-6 form-group">
<label style="font-size:20px">Sub Category Name</label>
<form:input path="subCategoryName" class="form-control input-lg"/>
<form:errors path="subCategoryName" class="input-lg" style="color: #e32828"/>
</div>
<div  class="col-sm-12 col-md-6 form-group">
<label style="font-size:20px">Sub Category Name</label>
<form:input path="subCategoryDescription" class="form-control input-lg"/>
<form:errors path="subCategoryDescription" class="input-lg" style="color: #e32828"/>
</div>
<div class=container>
<div class="row">
<div class="col-sm-12 col-md-9">
<input type="submit" value="Submit" class="btn btn-success btn-lg"/>
</div>
</div>
</div>
</form:form>
</div>
</div>

<br><br>


<div ng-app="getSubCategory" ng-controller="subCategoryController" class="container">
<div class="row">
<div class="col-sm-12 col-md-6 form-group">
<label for="search" style="font-size:20px">Search</label>
<input type="text" ng-model="test" class="form-control input-lg" id="search">
</div>
</div>
<br>
<legend>Sub Category Details</legend>
<table class="table table-hover table-bordered table-striped">
<tr>
<th ng-click="orderByMe('subCategoryId')">Sub category Id</th>
<th ng-click="orderByMe('categoryId')">Category Id</th>
<th ng-click="orderByMe('subCategoryDescription')">Sub category Descripton</th>
<th ng-click="orderByMe('subCategoryName')">Sub category Name</th>
</tr>
<tr ng-repeat="s in subcategories | orderBy:myOrderBy | filter:test">
<td>{{s.subCategoryId}}</td>
<td>{{s.categoryId}}</td>
<td>{{s.subCategoryDescription}}</td>
<td>{{s.subCategoryName}}</td>
<td><a href="editSubcategory-{{s.subCategoryId}}">edit</a></td>
<td><a href="deleteSubcategory-{{s.subCategoryId}}">Delete</a>
</tr>
</table>
<script>
		var subcategory = ${stringSubCategory};
		angular.module('getSubCategory', []).controller('subCategoryController',function($scope)
				{
					$scope.subcategories = subcategory;
					$scope.orderByMe = function(subcategories){
						$scope.myOrderBy = subcategories;
					}
				});
	</script>

</div>

</body>
</html>