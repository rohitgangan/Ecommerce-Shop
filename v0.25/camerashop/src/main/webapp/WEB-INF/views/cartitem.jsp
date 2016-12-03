<%@include file="header.jsp" %>
  <%@include file="searchbox.jsp" %>
	
	
	<div class="container" style="margin-top:160px">
		
			<table>
			<tr>			
			<th>Product Name</th>
			<th>Product Quantity</th>
			<th>Price</th>
			<th>Product Image</th>
			<th>Checkout</th>
			</tr>
			<tr>
			<td>{{cartItem.productName}}</td>
			<td>{{cartItem.quantity}}</td>
			<td>{{cartItem.price}}</td>
			<td><img src="resources/images/{{cartItem.productId}}.jpg" width="100px" height=100px></td>
			<td><a href="checkout">Checkout</a></td>
			</tr>
			</table>
	</div>
	
	<script>
		var cart = ${cartItemGson};
		angular.module('getAllProductsDisplay', []).controller('allProductDisplayController',function($scope)
				{
					$scope.cartItem = cart;
					
					
				});
	</script>

<%@include file="footer.jsp" %>