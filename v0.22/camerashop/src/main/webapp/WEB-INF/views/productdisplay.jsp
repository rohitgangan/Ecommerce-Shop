<%@include file="header.jsp" %>

<div ng-app="getAllProductsDisplay" ng-controller="allProductDisplayController">
<nav class="navbar navbar-default" role="navigation" >
  <div class="container-fluid" style="padding-top:100px">
    
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapsible">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
     
    </div>
    
    <div class="navbar-collapse collapse" id="navbar-collapsible">
      
      <ul class="nav navbar-nav navbar-left">
        
      </ul>

      <form class="navbar-form">
        <div class="form-group" style="display:inline;">
          <div class="fill">
            <input class="form-control" ng-model="searchkeyword" type="text">
            <span class="btn btn-sm"><a href="productdisplay?=search{{searchkeyword}}"><i class="glyphicon glyphicon-search white" style="font-size: 20px;"></i></a></span>
          </div>
        </div>
      </form>
      
    </div>
    
  </div>
</nav>



 <div class="container-fluid" id="tourpackages-carousel" style="padding-top:100px">
      
      <div class="row">
        
        <div class="col-xs-18 col-sm-6 col-md-3" ng-repeat="pv in productViewList | filter : searchkeyword ">
          <div class="thumbnail">
            <a href="viewproduct--{{pv.productId}}--product"><img src="resources/images/{{pv.productId}}.jpg" alt=""></a>
              <div class="caption">
                <h4>{{pv.productName}}</h4>
                <p>Price: {{pv.productPrice}}</p>
             
                <span class="bottomleft"><a href="#" class="btn btn-info" role="button">Buy Now</a> </span>
                <span class="bottomright"> <a href="viewproduct--{{pv.productId}}--product" class="btn btn-default" role="button">View Product</a></span>
           
            </div>
          </div>
        </div>
</div>




<script>
angular.module('getAllProductsDisplay',[]).controller('allProductDisplayController',function($scope,$http,$location)
		  {
	  $scope.searchkeyword=location.search.substr(8);
	  
	  $scope.letterlimit=3;
	  $scope.productViewList=${stringProductView};
	  $scope.add=function(searchkeyword){

	       //Now you can set a debugger here and check the data

	}
		  });
			
		</script>
      
    </div><!-- End container --></div>
<%@include file="footer.jsp" %>
