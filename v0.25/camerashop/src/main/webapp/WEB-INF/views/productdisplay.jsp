<%@include file="header.jsp" %>
<%@include file="searchbox.jsp" %>  




 <div class="container-fluid" id="tourpackages-carousel" style="padding-top:170px">
      
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
      
    </div><!-- End container -->
<%@include file="footer.jsp" %>
