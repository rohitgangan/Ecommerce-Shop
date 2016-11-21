<%@include file="header.jsp"%>

<div class="container" ng-app="getSupplierActivate" ng-controller="SupplierActivationController">
		<div class="form-group">
			<label for="search">Search</label> <input type="text" ng-model="test"
				class="form-control input-lg" id="search">
		</div>
		<br>
		<legend>Product Details</legend>
		<table class="table table-hover table-bordered table-striped">
			<tr>
				<th ng-click="orderByMe('userId')">userId</th>
				<th ng-click="orderByMe('username')">username</th>
				<!-- <th ng-click="orderByMe('productDescription')">Product
					Description</th>
				<th ng-click="orderByMe('productName')">Product Name</th>
				<th ng-click="orderByMe('productRent')">Product Rent</th>
				<th ng-click="orderByMe('subCategoryId')">Sub category Id</th>
				<th ng-click="orderByMe('supplierId')">Supplier Id</th> -->
				<th></th>

			</tr>
			<tr ng-repeat="su in supplierActivates | orderBy:myOrderBy | filter:test">
				<td>{{su.userId}}</td>
				<td>{{su.username}}</td>
				<!-- <td>{{p.productDescription}}</td>
				<td>{{p.productName}}</td>
				<td>{{p.productRent}}</td>
				<td>{{p.subCategoryId}}</td>
				<td>{{p.supplierId}}</td>
				<td><img src="resources/images/{{p.productId}}.jpg" width="100px" height=100px></td> -->
				<td><a href="ActivateSupplier-{{su.userId}}">Enable</a>| <!-- <a
					href="deleteProduct-{{p.productId}}">Delete</a></td>
					<td><a href="viewproduct--{{p.productId}}--product">View Product</a> --></td>
			</tr>
		</table>
		



<script>
			var supplierActivation = ${supplierActivate};
			angular.module('getSupplierActivate', []).controller('SupplierActivationController',
					function($scope) {
						$scope.supplierActivates = supplierActivation;
						$scope.orderByMe = function(supplierActivates) {
							$scope.myOrderBy = supplierActivates;
						}

					});
		</script>
		</div>
<div style="padding-top:10px">
<%@include file="footer.jsp" %>
</div>