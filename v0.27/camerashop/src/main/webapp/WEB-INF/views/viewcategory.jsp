<%@include file="header.jsp" %>
</nav>
	</div>

<div style="margin-top: 200px;background-color:#f1f1f1;">
<legend><a href="home">Home</a> ></legend>
<div class="container-fluid" ng-repeat="ca in categories">


<a href="">{{ca.categoryName}}</a> 


</div>
<script>
			var category = ${categoryGson};
			angular.module('getAllProductsDisplay', []).controller('allProductDisplayController',
					function($scope) {
						$scope.categories = category;
						

					});
		</script>
		
	<div style="padding-top:10px">

</div>
	</div>	


<%@include file="footer.jsp" %>