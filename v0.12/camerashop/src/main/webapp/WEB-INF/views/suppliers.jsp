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
 <link rel="stylesheet" href="resources/css/bootstrap.css">
  <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/navbar.css">
  <link rel="stylesheet" href="resources/css/sidebar.css">
 
  <script src="resources/js/jquery.min.js"></script>
     <script src="resources/js/bootstrap.min.js"></script>
 
  <script src="resources/js/jquery.js"></script>
  <script src="resources/js/sidebar.js"></script>
</head>
<body style="margin-top:100px">
<%@include file="header.jsp" %>
	<div class="container">
	<div class="row">
	<legend>Add Supplier Form</legend>
<form:form class="form-horizontal" method="POST" action="add/supplier" modelAttribute="supplier">
<form:input path="supplierId" hidden="true"/>
<div  class="col-sm-12 col-md-6 form-group">
<label style="font-size:20px">Supplier Name</label>
<form:input path="supplierName" class="form-control input-lg"/>
</div>
<div  class="col-sm-12 col-md-6 form-group">
<label style="font-size:20px">Supplier Address</label>
<form:input path="supplierAddress" class="form-control input-lg"/>
</div>
<div  class="col-sm-12 col-md-6 form-group">
<label style="font-size:20px">Supplier Contact Number</label>
<form:input path="supplierContactNo" class="form-control input-lg"/>
</div>
<div  class="col-sm-12 col-md-6 form-group">
<label style="font-size:20px">Supplier Email Id</label>
<form:input path="supplierEmailId" class="form-control input-lg"/>
</div>
<div class="form-group">
<input type="Submit" value="Submit" class="btn btn-success btn-lg"/>
</div>
</form:form>
</div>
</div>

<div class="container" ng-app="getSupplier" ng-controller="supplierController">
<div class="form-group">
<label>Search</label>
<input type="text"  ng-model="test" class="form-control input-lg" id="search">
</div>
<table class="table table-hover table-bordered table-striped">
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