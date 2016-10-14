<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
   <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="resources/js/angular.min.js"></script>
<title>Supplier</title>
</head>
<body>
<form:form method="POST" action="add/supplier" modelAttribute="supplier">
<form:input path="supplierId" hidden="true"/>
<label>Supplier Name</label>
<form:input path="supplierName"/>
</br>
<label>Supplier Address</label>
<form:input path="supplierAddress"/>
</br>
<label>Supplier Contact Number</label>
<form:input path="supplierContactNo"/>
</br>
<label>Supplier Email Id</label>
<form:input path="supplierEmailId"/>
</br>
<input type="submit" value="Submit"/>
</form:form>

<div ng-app="getSupplier" ng-controller="supplierController">
<label>Search</label>
<input type="text"  ng-model="test">
<table>
<tr>
<th ng-click="orderByMe('supplierId')">Product Id</th>
<th ng-click="orderByMe('supplierAddress')">Supplier Address</th>
<th ng-click="orderByMe('supplierContactNo')">Supplier Contact No</th>
<th ng-click="orderByMe('supplierEmailId')">Supplier Email Id</th>
<th ng-click="orderByMe('supplierName')">Supplier Name</th>
</tr>
<tr ng-repeat="s in suppliers | orderBy:myOrderBy | filter:test">
<td>{{s.supplierId}}</td>
<td>{{s.supplierAddress}}</td>
<td>{{s.supplierContactNo}}</td>
<td>{{s.supplierEmailId}}</td>
<td>{{s.supplierName}}</td>
<td><a href="editSupplier-{{s.supplierId}}">edit</a></td>
<td><a href="deleteSupplier-{{s.supplierId}}">Delete</a>
</tr>
</table>
<script>
		var supplier = ${stringSupplier};
		angular.module('getSupplier', []).controller('supplierController',function($scope)
				{
					$scope.suppliers = supplier;
					$scope.orderByMe = function(suppliers){
						$scope.myOrderBy = suppliers;
					}
					
				});
	</script>

</div>
</body>
</html>