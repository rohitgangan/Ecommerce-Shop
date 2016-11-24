
<%@include file="header.jsp" %>
<%@include file="searchbox.jsp" %>    
  <!-- </div> -->
<!-- </nav>
 -->






  



<div class="container-fluid" style="padding-top:160px;">
	
	
	
	<div class="row">
		<!-- Carousel -->
    	<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
			  	<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
			</ol>
			<!-- Wrapper for slides -->
			<div class="carousel-inner">
			    <div class="item active">
			    	<img src="resources/images/Hero-slider_1200x360_1.jpg" alt="First slide">
                   
			    </div>
			    <div class="item">
			    	<img src="resources/images/Hero-slider_1200x360_2.jpg" alt="Second slide">
			    	
			    </div>
			    <div class="item">
			    	<img src="resources/images/Hero-slider_1200x360_3.jpg" alt="Third slide">
			    	
			    </div>
			    <div class="item">
			    	<img src="resources/images/Hero-slider_1200x360_4.jpg" alt="Third slide">
			    	
			    </div>
			    <div class="item">
			    	<img src="resources/images/Hero-slider_1200x360_5.jpg" alt="Third slide">
			    	
			    </div>
			</div>
			<!-- Controls -->
			<a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
		    	<span class="glyphicon glyphicon-chevron-left"></span>
			</a>
			<a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
		    	<span class="glyphicon glyphicon-chevron-right"></span>
			</a>
		</div><!-- /carousel -->
	</div>
</div>



 <div class="container-fluid" id="tourpackages-carousel" style="padding-top:20px">
      
      <div class="row">
        
        <div class="col-xs-18 col-sm-6 col-md-3" ng-repeat="pr in product">
          <div class="thumbnail">
            <a href="viewproduct--{{pr.productId}}--product"><img src="resources/images/{{pr.productId}}.jpg" alt=""></a>
              <div class="caption">
                <h4>{{pr.productName}}</h4>
                <p>Price: {{pr.productPrice}}</p>
             
                <span class="bottomleft"><a href="#" class="btn btn-info" role="button">Buy Now</a> </span>
                <span class="bottomright"> <a href="viewproduct--{{pr.productId}}--product" class="btn btn-default" role="button">View Product</a></span>
           
            </div>
          </div>
        </div>

        <div class="col-xs-18 col-sm-6 col-md-3">
          <div class="thumbnail">
            <img src="http://placehold.it/500x300" alt="">
              <div class="caption">
                <h4>Thumbnail label</h4>
                <p>Product description here</p>
                <p><a href="#" class="btn btn-info btn-xs" role="button">Buy Now</a> <a href="#" class="btn btn-default btn-xs" role="button">View Product</a></p>
            </div>
          </div>
        </div>

        <div class="col-xs-18 col-sm-6 col-md-3">
          <div class="thumbnail">
            <img src="http://placehold.it/500x300" alt="">
              <div class="caption">
                <h4>Thumbnail label</h4>
                <p>Product description here</p>
                <p><a href="#" class="btn btn-info btn-xs" role="button">Button</a> <a href="#" class="btn btn-default btn-xs" role="button">Button</a></p>
            </div>
          </div>
        </div>

        <div class="col-xs-18 col-sm-6 col-md-3">
          <div class="thumbnail">
            <img src="http://placehold.it/500x300" alt="">
              <div class="caption">
                <h4>Thumbnail label</h4>
                <p>Product description here</p>
                <p><a href="#" class="btn btn-info btn-xs" role="button">Button</a> <a href="#" class="btn btn-default btn-xs" role="button">Button</a></p>
            </div>
          </div>
        </div>
        
      </div><!-- End row -->
      
       <div class="row" style="padding-top:20px">
        
        <div class="col-xs-18 col-sm-6 col-md-3">
          <div class="thumbnail">
            <img src="resources/images/65.jpg" alt="">
              <div class="caption">
                <h4>Thumbnail label</h4>
                <p>Product description here</p>
                <p><a href="#" class="btn btn-info btn-xs" role="button">Button</a> <a href="#" class="btn btn-default btn-xs" role="button">Button</a></p>
            </div>
          </div>
        </div>

        <div class="col-xs-18 col-sm-6 col-md-3">
          <div class="thumbnail">
            <img src="http://placehold.it/500x300" alt="">
              <div class="caption">
                <h4>Thumbnail label</h4>
                <p>Product description here</p>
                <p><a href="#" class="btn btn-info btn-xs" role="button">Button</a> <a href="#" class="btn btn-default btn-xs" role="button">Button</a></p>
            </div>
          </div>
        </div>

        <div class="col-xs-18 col-sm-6 col-md-3">
          <div class="thumbnail">
            <img src="http://placehold.it/500x300" alt="">
              <div class="caption">
                <h4>Thumbnail label</h4>
                <p>Product description here</p>
                <p><a href="#" class="btn btn-info btn-xs" role="button">Button</a> <a href="#" class="btn btn-default btn-xs" role="button">Button</a></p>
            </div>
          </div>
        </div>

        <div class="col-xs-18 col-sm-6 col-md-3">
          <div class="thumbnail">
            <img src="http://placehold.it/500x300" alt="">
              <div class="caption">
                <h4>Thumbnail label</h4>
                <p>Product description here</p>
                <p><a href="#" class="btn btn-info btn-xs" role="button">Button</a> <a href="#" class="btn btn-default btn-xs" role="button">Button</a></p>
            </div>
          </div>
        </div>
        
      </div><!-- End row -->

<script>
			var product = ${stringProductView};
			angular.module('getAllProductsDisplay', []).controller('allProductDisplayController',
					function($scope) {
						$scope.products = product;
						

					});
		</script>
      
    </div><!-- End container -->
<%@include file="footer.jsp" %>
