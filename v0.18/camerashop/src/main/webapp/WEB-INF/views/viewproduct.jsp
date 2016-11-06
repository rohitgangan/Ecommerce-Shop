<%@include file="header.jsp" %>
<div ng-app="getProduct1" ng-controller="productController1" style="margin-top: 100px;background-color:#f1f1f1;">

<div class="container-fluid">
<legend>{{products.productName}}</legend>
<img src="resources/images/{{products.productId}}.jpg">
</div>
<script>
			var product = ${productView};
			angular.module('getProduct1', []).controller('productController1',
					function($scope) {
						$scope.products = product;
						

					});
		</script>
		
	<div style="padding-top:10px">

</div>
	</div>	


<%@include file="footer.jsp" %>