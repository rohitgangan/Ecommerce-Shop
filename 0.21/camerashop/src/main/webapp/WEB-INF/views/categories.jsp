
<%@include file="header.jsp" %>
<div class="container" style="margin-top:100px">
	<div class="row">
		<legend>Add Category Form</legend>
<form:form class="form-horizontal" method="POST" action="category" modelAttribute="category">

<form:input path="categoryId" hidden="true"/>
<div  class="col-sm-12 col-md-6 form-group">
<label style="font-size:20px">Category Name</label>
<form:input path="categoryName" class="form-control input-lg"/>
<form:errors path="categoryName" class="input-lg" style="color: #e32828"/>
</div>
<div  class="col-sm-12 col-md-6 form-group">
<label style="font-size:20px">Category Description</label>
<form:input path="categoryDescription" class="form-control input-lg"/>
 <form:errors path="categoryDescription" class="input-lg" style="color: #e32828"/> 
</div>
<div class="form-group">
<input type="submit" value="Submit" class="btn btn-success btn-lg"/>
</div>
</form:form>
</div>
</div>

<div ng-app="getCategory" ng-controller="categoryController" class="container">
<div class="row">
<div class="col-sm-12 col-md-6 form-group">
      				<label for="search">Search</label>
<input type="text" ng-model="test" class="form-control input-lg" id="search">
</div>
</div>
<br>
<legend>Employee Details</legend>
        				<table class="table table-hover table-bordered table-striped"> 
<tr> 
 <th ng-click="orderByMe('categoryId')">Category Id</th> 
<th ng-click="orderByMe('categoryDescription')">Category Description</th> 
<th ng-click="orderByMe('categoryName')">Category Name</th>
</tr>
<tr ng-repeat="d in categories | orderBy:myOrderBy | filter:test">
<td>{{d.categoryId}}</td> 
 <td>{{d.categoryDescription}}</td> 
<td>{{d.categoryName}}</td> 
<td><a href="editCategory-{{d.categoryId}}">edit</a></td>
<td><a href="deleteCategory-{{d.categoryId}}">Delete</a> 
 </tr>
</table> 



<script>
		var category = ${categoryString};
		angular.module('getCategory', []).controller('categoryController',function($scope)
				{
					$scope.categories = category;
					$scope.orderByMe = function(categories){
						$scope.myOrderBy = categories;
					}
					
				});
	</script>
</div>
<%@include file="footer.jsp" %>