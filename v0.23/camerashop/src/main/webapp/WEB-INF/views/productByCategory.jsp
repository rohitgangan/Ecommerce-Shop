<%@include file="header.jsp" %>

<div style="margin-top:120px" ng-app="getProductcategoryView" ng-controller="productcategoryHomeController">
<div class="col-xs-18 col-sm-6 col-md-3" ng-repeat="cp in categoryProducts">

 <h4>{{cp.productName}}</h4>

</div>

<script>
			var categoryProduct = ${cGson};
			angular.module('getProductcategoryView', []).controller('productcategoryHomeController',
					function($scope) {
						$scope.categoryProducts = categoryProduct;
						

					});
		</script>
</div>

<%@include file="footer.jsp" %>