<%@include file="header.jsp" %>
<%@include file="searchbox.jsp" %>

<div class="container"style="margin-top: 180px;">
<div class="row">
<div class="col-sm-12 col-md-6 form-group">
      				<label for="search">Search</label>
<input type="text" ng-model="test" class="form-control input-lg" id="search">
</div>
</div>
<br>

        			<div  class="col-sx-12 col-sm-12 col-md-12">
        				<table class="table table-hover table-bordered table-striped"> 
<tr> 
 <th>Product Name</th> 
<th>Product Price</th> 
<th>Product Image</th>
</tr>
<tr ng-repeat="list in userwishlist | orderBy:myOrderBy | filter:test">
<td>{{list.productName}}</td> 
 <td>{{list.price}}</td> 
<td><img src="resources/images/{{list.productId}}.jpg" width="100px" height=100px></td> 
<td><a href="buy_now-{{list.productId}}?userId=1">Buy Now</a></td>
<td><a href="buy_now-{{list.productId}}">Delete</a> 
 <td><a href="deleteCartItem-{{list.wishListId}}"><span class="glyphicon glyphicon-trash"></span></a> </td>
 </tr>
</table> 
</div>
</div>

<script>
		var wishList = ${wishListGSon};
		angular.module('getAllProductsDisplay', []).controller('allProductDisplayController',function($scope)
				{
					$scope.userwishlist = wishList;
					$scope.orderByMe = function(userwishlist){
						$scope.myOrderBy = userwishlist;
					}
					
				});
	</script>


<%@include file="footer.jsp" %>