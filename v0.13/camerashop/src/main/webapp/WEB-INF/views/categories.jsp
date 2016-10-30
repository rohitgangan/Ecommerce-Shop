<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
   <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="resources/css/bootstrap.css">
		<link rel="stylesheet" href="resources/css/bootstrap.min.css">
		 <link rel="stylesheet" href="resources/css/navbar.css">
		<script src="resources/js/jquery.min.js"></script>
		<script src="resources/js/bootstrap.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>

<title>Category</title>
</head>
<body style="margin-top:100px">
<%@include file="header.jsp" %>
<div class="container">
	<div class="row">
		<legend>Add Category Form</legend>
<form:form class="form-horizontal" method="POST" action="category" modelAttribute="category">

<form:input path="categoryId" hidden="true"/>
<div  class="col-sm-12 col-md-6 form-group">
<label style="font-size:20px">Category Name</label>
<form:input path="categoryName" class="form-control input-lg"/>
<form:errors path="categoryName" class="input-lg" style="color: #e32828"/>
</div>
<div  class="col-sm-12 col-md-6 form-group">
<label style="font-size:20px">Category Description</label>
<form:input path="categoryDescription" class="form-control input-lg"/>
 <form:errors path="categoryDescription" class="input-lg" style="color: #e32828"/> 
</div>
<div class="form-group">
<input type="submit" value="Submit" class="btn btn-success btn-lg"/>
</div>
</form:form>
</div>
</div>

<div ng-app="getCategory" ng-controller="categoryController" class="container">
<div class="row">
<div class="col-sm-12 col-md-6 form-group">
      				<label for="search">Search</label>
<input type="text" ng-model="test" class="form-control input-lg" id="search">
</div>
</div>
<br>
<legend>Employee Details</legend>
        				<table class="table table-hover table-bordered table-striped"> 
<tr> 
 <th ng-click="orderByMe('categoryId')">Category Id</th> 
<th ng-click="orderByMe('categoryDescription')">Category Description</th> 
<th ng-click="orderByMe('categoryName')">Category Name</th>
</tr>
<tr ng-repeat="d in categories | orderBy:myOrderBy | filter:test">
<td>{{d.categoryId}}</td> 
 <td>{{d.categoryDescription}}</td> 
<td>{{d.categoryName}}</td> 
<td><a href="editCategory-{{d.categoryId}}">edit</a></td>
<td><a href="deleteCategory-{{d.categoryId}}">Delete</a> 
 </tr>
</table> 



<script>
		var category = ${categoryString};
		angular.module('getCategory', []).controller('categoryController',function($scope)
				{
					$scope.categories = category;
					$scope.orderByMe = function(categories){
						$scope.myOrderBy = categories;
					}
					
				});
	</script>
</div>
</body>
</html>