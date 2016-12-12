
<%@include file="header.jsp" %>
  </nav>
	</div>
<div class="container" style="margin-top:100px">
<form:form class="form-inline" method="POST" action="category" modelAttribute="category">
	<div class="row">
		<legend>Add Category Form</legend>

<form:input path="categoryId" hidden="true"/>
<div  class="col-sm-12 col-md-4 form-group">
<form:input path="categoryName" class="form-control input-md" placeholder="Category Name"/>
<form:errors path="categoryName" class="input-md" style="color: #e32828"/>
<div class="alert alert-info"> ${message}</div>
</div>
<div  class="col-sm-12 col-md-4 form-group">
<form:input path="categoryDescription" class="form-control input-md" placeholder="Category Description"/>
  <form:errors path="categoryDescription" class="input-md" style="color: #e32828"/>
</div>
<div class=" col-sm-12 col-md-4 form-group" >
<button type="submit" value="submit" class="btn btn-primary btn-md">Submit</button>
</div>
</div>
<div class="row">

</div>
</form:form>
</div>





<div class="container">
<div class="row">
<legend>Subcategory Details</legend>
</div>
<div class="row">
<div class="col-sm-12 col-md-1 form-group">
      				<label for="search"></label>
      				</div>
      				<div class="col-sm-12 col-md-6 form-group">
<input type="text" ng-model="test" class="form-control input-lg" id="search" placeholder="Search">
</div>
</div>

<br>

        			<div  class="col-sx-12 col-sm-12 col-md-12">
        				<table class="table table-hover table-bordered table-striped"> 
<tr> 
 <th ng-click="orderByMe('categoryId')">Category Id</th> 
<th ng-click="orderByMe('categoryDescription')">Category Description</th> 
<th ng-click="orderByMe('categoryName')">Category Name</th>
<th>Options</th>

</tr>
<tr ng-repeat="d in categories | orderBy:myOrderBy | filter:test">
<td>{{d.categoryId}}</td> 
 <td>{{d.categoryDescription}}</td> 
<td>{{d.categoryName}}</td> 
<td><a href="editCategory-{{d.categoryId}}" class="btn btn-warning">edit</a> <a href="deleteCategory-{{d.categoryId}}" class="btn btn-danger" role="button">Delete</a> 
 </tr>
</table> 
</div>
</div>

<script>
		var category = ${categoryString};
		angular.module('getAllProductsDisplay', []).controller('allProductDisplayController',function($scope)
				{
					$scope.categories = category;
					$scope.orderByMe = function(categories){
						$scope.myOrderBy = categories;
					}
					
				});
	</script>
<%@include file="footer.jsp" %>