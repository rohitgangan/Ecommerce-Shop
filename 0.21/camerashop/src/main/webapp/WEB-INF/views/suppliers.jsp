<%@include file="header.jsp" %>


	<div class="container" style="margin-top:100px">
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
<div style="padding-top:10px">
<%@include file="footer.jsp" %>
</div>
