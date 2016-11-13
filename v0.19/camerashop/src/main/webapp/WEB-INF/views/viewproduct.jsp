<%@include file="header.jsp" %>
<div ng-app="getProductView" ng-controller="productViewController" style="margin-top: 200px;background-color:#f1f1f1;">
<div class="container-fluid">
<legend><a href="home">Home</a> >
<a href="all_categories">{{products.categoryName}}</a> > 
<a href="">{{products.subCategoryName}}</a> > 
{{products.productName}}</legend>
</div>
<div class="container-fluid">
<div class="row">
<div class="col-sm-12 col-md-5">
<img src="resources/images/{{products.productId}}.jpg">
</div>
<div class="col-sm-12 col-md-5">
{{products.productName}}<br>
{{products.categoryName}}
{{products.supplierCompanayName}}
</div>
</div>
</div>
<script>
			var product = ${pGson};
			angular.module('getProductView', []).controller('productViewController',
					function($scope) {
						$scope.products = product;
						

					});
		</script>
		
	<div style="padding-top:10px">

</div>
	</div>	


<%@include file="footer.jsp" %>