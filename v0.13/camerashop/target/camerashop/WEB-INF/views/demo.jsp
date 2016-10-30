<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body ng-app="getcategory" ng-controller="getcategoryController">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<table>

<tr ng-repeat="d in products">
<td>{{d.categoryId}}</td>
<td>{{d.categoryName}}</td>
</tr>
</table>
<script>
		var prod = ${cat};
		angular.module('getcategory', []).controller('getcategoryController',function($scope)
				{
					$scope.products = prod;
					
				});
	</script>
</body>
</html>