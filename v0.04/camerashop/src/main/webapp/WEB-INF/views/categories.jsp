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

<title>Category</title>
</head>
<body>

<form:form method="POST" action="add/category" modelAttribute="category">
<form:input path="categoryId" hidden="true"/>
<label>Category Name</label>
<form:input path="categoryName"/>
</br>
<label>Category Description</label>
<form:input path="categoryDescription"/>
</br>
<input type="submit" value="Submit"/>
</form:form>
<div ng-app="getCategory" ng-controller="categoryController">
<label>Search</label>
<input type="text"  ng-model="test">
<table> 
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