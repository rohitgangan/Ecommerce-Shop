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
        				<table class="table table-hover"> 
<tr> 
 <th>Product Name</th> 
<th>Product Price</th> 
<th>Quantity</th>
<th>Total</th>
<th>Product Image</th>
<th>Remove</th>
</tr>
<tr ng-repeat="list in resultValue=(usercartlist | orderBy:myOrderBy | filter:test)">
<td>{{list.productName}}</td> 
 <td> &#8377;{{list.price}}</td>
 <td>{{list.quantity}}</td>
 <td> &#8377;{{list.price * list.quantity}}   </td> 
<td><img src="resources/images/{{list.productId}}.jpg" width="100px" height=100px></td> 

<td><a href="deleteCartItem-{{list.cartItemId}}"><span class="glyphicon glyphicon-trash"></span></a> </td>
 </tr>
</table> 

</div>
</div>
<div class="container">
<div class="row">
<div class="col-sm-6 col-md-9">
<h3>Grand Total:{{resultValue | grandTotal:'quantity':'price'}}</h3>
</div>
<div class="col-sm-6 col-md-3">
<a href="checkout" class="btn btn-default" role="button">Checkout</a>
</div>
</div>
</div>
<script>
		var cartList = ${cartListGson};
		angular.module('getAllProductsDisplay', []).filter('grandTotal', function () {
		    return function (data, key1, key2) {        
		        if (angular.isUndefined(data) && angular.isUndefined(key1)  && angular.isUndefined(key2)) 
		            return 0;        
		        var total = 0;
		        angular.forEach(data,function(value){
		            total = total + (parseInt(value[key1]) * parseInt(value[key2]));
		        });
		        return total;
		    }
		}).controller('allProductDisplayController',function($scope)
				{
					$scope.usercartlist = cartList;
					$scope.orderByMe = function(usercartlist){
						$scope.myOrderBy = usercartlist;
					}
					
					
				});
	</script>

<div style="padding-top:10px;">
<%@include file="footer.jsp" %>
</div>