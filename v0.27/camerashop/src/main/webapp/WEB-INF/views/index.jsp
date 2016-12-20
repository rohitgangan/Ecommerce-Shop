
<%@include file="header.jsp" %>
<%@include file="searchbox.jsp" %>    
  <!-- </div> -->
<!-- </nav>
 -->






  



 <!-- Carousel
================================================== -->
<div id="myCarousel" class="carousel slide" style="margin-top:160px">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="item active">
      <img src="resources/images/Hero-slider_1200x360_1.jpg" class="img-responsive">
     
    </div>
    <div class="item">
      <img src="resources/images/Hero-slider_1200x360_2.jpg" class="img-responsive">
      
    </div>
    <div class="item">
      <img src="resources/images/Hero-slider_1200x360_3.jpg">
     
    </div>
  </div>
  <!-- Controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="icon-prev"></span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="icon-next"></span>
  </a>  
</div>
<!-- /.carousel -->

      
       
<div class="container">
    <div class="row">
        <div class="col-md-4" ng-repeat="pv in productViewLists">
            <div class="product-item">
              <div class="pi-img-wrapper">
                <img src="resources/images/{{pv.productId}}.jpg" class="img-responsive thumbnailimg" alt="Berry Lace Dress">
                <div>
                  <a href="buy_now-{{pv.productId}}?userId=1" class="btn">Buy Now</a>
                  <a href="viewproduct--{{pv.productId}}--product" class="btn">View</a>
                </div>
              </div>
              <h3><a href="shop-item.html">{{pv.productName}}</a></h3>
              <div class="pi-price"><span class="bottomleft">&#8377; {{pv.productPrice}} <a href="wish_list-{{pv.productId}}"><span class="glyphicon glyphicon-heart wishlist"></span></a></span></div>
              <span class="bottomright" ng-if="pv.quantity == 0"><a href="addToCart-{{pv.productId}}" class="btn add2cart">Out of Stock <span class="glyphicon glyphicon-shopping-cart"></span></a></span>
              <span class="bottomright" ng-if="pv.quantity != 0"><a href="addToCart-{{pv.productId}}" class="btn add2cart">Add to cart <span class="glyphicon glyphicon-shopping-cart"></span></a></span>
              <div class="sticker sticker-new"></div>
            </div>
        </div>
        
       
    </div>
</div>


        
   

<script>
			var products = ${stringProductView};
			angular.module('getAllProductsDisplay', []).controller('allProductDisplayController',
					function($scope) {
						$scope.productViewLists = products;
						

					});
		</script>
      
    <!-- End container -->
    <div style="padding-top:10px;">
<%@include file="footer.jsp" %>
</div>