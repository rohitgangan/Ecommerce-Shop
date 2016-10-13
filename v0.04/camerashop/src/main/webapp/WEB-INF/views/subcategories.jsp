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

<body >
<form:form method="POST" action="add/subcategory" modelAttribute="subcategory">
<label>Select Category</label>
<form:select path="category.categoryName" items="${listCategory}" itemValue="categoryName" itemLabel="categoryName"/>
<label>Subcategory Name</label>
<form:input path="subCategoryName"/>
<label>Subcategory Description</label>

<form:input path="subCategoryDescription"/>
<input type="Submit" value="Submit"/>
</form:form>

<div ng-app="getSubCategory" ng-controller="subCategoryController">
<label>Search</label>
<input type="text"  ng-model="test">   
<table>
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