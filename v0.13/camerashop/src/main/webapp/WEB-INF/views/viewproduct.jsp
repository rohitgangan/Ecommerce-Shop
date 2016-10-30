<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<title>view product</title>
</head>
<body ng-app="getProduct" ng-controller="productController" style="margin-top: 100px">
<%@include file="header.jsp"%>
<div class="container-fluid">
<legend>{{products.productName}}</legend>
<img src="resources/images/{{products.productId}}.jpg">
</div>
<script>
			var product = ${pGson};
			angular.module('getProduct', []).controller('productController',
					function($scope) {
						$scope.products = product;
						$scope.orderByMe = function(products) {
							$scope.myOrderBy = products;
						}

					});
		</script>
</body>
</html>