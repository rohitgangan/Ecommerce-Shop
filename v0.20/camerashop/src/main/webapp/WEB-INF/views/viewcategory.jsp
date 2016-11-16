<%@include file="header.jsp" %>
<div ng-app="getCategoryView" ng-controller="categoryViewController" style="margin-top: 200px;background-color:#f1f1f1;">
<legend><a href="home">Home</a> ></legend>
<div class="container-fluid" ng-repeat="ca in categories">


<a href="">{{ca.categoryName}}</a> 


</div>
<script>
			var category = ${categoryGson};
			angular.module('getCategoryView', []).controller('categoryViewController',
					function($scope) {
						$scope.categories = category;
						

					});
		</script>
		
	<div style="padding-top:10px">

</div>
	</div>	


<%@include file="footer.jsp" %>