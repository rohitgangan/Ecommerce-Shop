<%@include file="header.jsp" %>
<%@include file="searchbox.jsp" %>  




<div id="wrapper" >
    <div id="sidebar-wrapper" >
        <ul class="sidebar-nav" style="padding-top:220px">
            <div ng-repeat="list in subCategoryList | filter:searchkeyword" >
<div ng-click="myNewFilter(list.subCategoryName)">
<input type="checkbox" id="fancy-checkbox-info"  /> {{list.subCategoryName}}

</div>
</div>
        </ul>
    </div>
    <div id="page-content-wrapper">
        <div class="page-content">
            <div class="container" style="padding-top:180px">
                <div class="row">
                    <div class="col-md-12">
                        <!-- content of page -->
                         <span>Filters:</span>
						 <span ng-click="sort('productPrice')" style="margin-left:100px"><button class="btn btn-default">Product Price 
							<span class="glyphicon sort-icon" ng-show="sortkey=='productPrice'" ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
						</button>	
						</span>


						<span ng-click="sort('productId')" style="margin-left:50px"><button class="btn btn-default">Latest Products 
						<span class="glyphicon sort-icon" ng-show="sortkey=='productId'" ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
						</button>	</span>

						<span ng-click="sort('subCategoryName')" style="margin-left:50px"><button class="btn btn-default">Brand 
					<span class="glyphicon sort-icon" ng-show="sortkey=='subCategoryName'" ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
					</button>	</span>

					<span ng-click="sort('categoryName')" style="margin-left:50px"><button class="btn btn-default">Categories 
				<span class="glyphicon sort-icon" ng-show="sortkey=='categoryName'" ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
				</button>	</span>
                  </div>
                </div>
                <div class="row row-no-padding" style="margin-top:20px">
                		 <div class="col-xs-18 col-sm-6 col-md-4" ng-repeat="pv in productViewList | filter : searchkeyword | orderBy:sortkey:reverse | filter:nextFilter">
          
          <div class="container_thumbnail">
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
            </div>
        </div>
    </div>
</div>


<div class="container-fluid"  style="padding-top:20px">
<div class="row">
 <div class="col-xs-18 col-sm-6 col-md-3"  >

</div>
   
       
</div>




<script>
angular.module('getAllProductsDisplay',[]).controller('allProductDisplayController',function($scope,$http,$location)
		  {
	  $scope.searchkeyword=location.search.substr(8).toLowerCase();
	  $scope.letterlimit=3;
	  $scope.productViewList=${stringProductView};
	  $scope.subCategoryList=${stingSubCategory};
	  
	  $scope.sort=function(keyname){
	       //Now you can set a debugger here and check the data
			$scope.sortkey=keyname;
	       	$scope.reverse=!$scope.reverse;
	}
	  
	  $scope.myFilter = [];
	    
	    $scope.myNewFilter = function(subCategoryName) {
	        var i = $.inArray(subCategoryName, $scope.myFilter);
	        if (i > -1) {
	            $scope.myFilter.splice(i, 1);
	        } else {
	            $scope.myFilter.push(subCategoryName);
	        }
	    }
	    
	    $scope.nextFilter = function(subCategoryList) {
	        if ($scope.myFilter.length > 0) {
	            if ($.inArray(subCategoryList.subCategoryName, $scope.myFilter) < 0)
	                return;
	        }
	        
	        return subCategoryList;
	    }
		  });
			
		</script>
      
    </div><!-- End container -->
<%@include file="footer.jsp" %>
