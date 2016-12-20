<%@include file="header.jsp" %>
</nav>
</div>
<div class="container" style="padding-top: 100px;">
    <div class="row">
        <div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
            <div class="row">
                <div class="col-xs-6 col-sm-6 col-md-6">
                    <address>
                        <strong>Primes & Zooms</strong>
                        <br>
                        0430 Andheri, Mumbai
                        <br>
                        Maharashtra, India
                        <br>
                        <abbr title="Phone">P:</abbr> (022) 2464 1300
                    </address>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-6 text-right">
                    <p>
                        <em>Date: 1st December, 2016</em>
                    </p>
                    <p>
                        <em>Receipt #: 34522677W</em>
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="text-center">
                    <h1>Receipt</h1>
                </div>
                </span>
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Product</th>
                            <th>#</th>
                            <th class="text-center">Price</th>
                            <th class="text-center">Total</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr ng-repeat="product in orderdProductLists">
                            <td class="col-md-9"><em>{{product.productName}}</em></h4></td>
                            <td class="col-md-1" style="text-align: center"> {{product.quantity}} </td>
                            <td class="col-md-1 text-center">&#8377;{{product.price}}</td>
                            <td class="col-md-1 text-center">&#8377;{{product.quantity * product.price}}</td>
                        </tr>
                       
                        
                        <tr>
                            <td>   </td>
                            <td>   </td>
                            
                        </tr>
                        <tr>
                            <td>   </td>
                            <td>   </td>
                            <td class="text-right"><h4><strong>Total: </strong></h4></td>
                            <td class="text-center text-danger"><h4><strong>{{getTotal()}}</strong></h4></td>
                        </tr>
                    </tbody>
                </table>
                <a href="home"><button type="button" class="btn btn-success btn-lg btn-block">
                    Continue Shopping  <span class="glyphicon glyphicon-chevron-right"></span>
                </button></a>
            </div>
        </div>
    </div>
    </div>
    
    <script>
		var category = ${orderdProductList};
		angular.module('getAllProductsDisplay', []).controller('allProductDisplayController',function($scope)
				{
					$scope.orderdProductLists = ${orderdProductList};
					$scope.getTotal = function(){
					    var total = 0;
					    for(var i = 0; i < $scope.orderdProductLists.length; i++){
					        var product = $scope.orderdProductLists[i];
					        total += (product.price * product.quantity);
					    }
					    return total;
					}
					
				});
	</script>
	<%@include file="footer.jsp" %>