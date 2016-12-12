<%@include file="header.jsp" %>
<%@include file="searchbox.jsp" %>



<div style="margin-top: 160px;background-color:#f1f1f1;">
<div class="container-fluid" style="padding-top:20px">
<legend><a href="home">Home</a> >
<a href="productdisplay?search={{products.categoryName}}">{{products.categoryName}}</a> > 
<a href="productdisplay?search={{products.subCategoryName}}">{{products.subCategoryName}}</a> > 
{{products.productName}}</legend>
</div>

		
	</div>	

	<div class="container">
		<div class="card">
			<div class="container-fliud">
				<div class="wrapper row">
					<div class="preview col-md-6">
						
						<div class="preview-pic tab-content">
						  <div class="tab-pane active" id="pic-1"><img src="resources/images/{{products.productId}}.jpg" class="imgpreview"/></div>
						  <div class="tab-pane" id="pic-2"><img src="http://placekitten.com/400/252" /></div>
						  <div class="tab-pane" id="pic-3"><img src="http://placekitten.com/400/252" /></div>
						  <div class="tab-pane" id="pic-4"><img src="http://placekitten.com/400/252" /></div>
						  <div class="tab-pane" id="pic-5"><img src="http://placekitten.com/400/252" /></div>
						</div>
						<ul class="preview-thumbnail nav nav-tabs">
						  <li class="active"><a data-target="#pic-1" data-toggle="tab"><img src="resources/images/{{products.productId}}.jpg" /></a></li>
						  <li><a data-target="#pic-2" data-toggle="tab"><img src="http://placekitten.com/200/126" /></a></li>
						  <li><a data-target="#pic-3" data-toggle="tab"><img src="http://placekitten.com/200/126" /></a></li>
						  <li><a data-target="#pic-4" data-toggle="tab"><img src="http://placekitten.com/200/126" /></a></li>
						  <li><a data-target="#pic-5" data-toggle="tab"><img src="http://placekitten.com/200/126" /></a></li>
						</ul>
						
					</div>
					<div class="details col-md-6">
						<h3 class="product-title">{{products.productName}}</h3>
						<div class="rating">
							<div class="stars">
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star checked"></span>
								<span class="fa fa-star"></span>
								<span class="fa fa-star"></span>
							</div>
							<span class="review-no">41 reviews</span>
						</div>
						
						<p class="product-description">{{products.productDescription}}</p>
						<p class="product-description">{{products.iso}} {{products.length}} {{products.megapixel}} {{products.sensor}}</p>
						<h4 class="price">current price: <span>&#8377;{{products.productPrice}}</span></h4>
						<p class="vote"><strong>Supplier: {{products.supplierCompanyName}}</strong></p>
						<h5 class="sizes">Type: {{products.categoryName}}</h5>
						<h5 class="colors">
							
							<a href="wish_list-{{products.productId}}"><button class="like btn btn-default" type="button"><span class="fa fa-heart"></span></button></a>
						</h5>
						
						<div ng-if="products.quantity == 0">
						<button class="add-to-cart btn btn-default" type="button">Out of Stock</button>
						</div>
						<div class="action" ng-if="products.quantity != 0">
							<a href="buy_now-{{products.productId}}?userId=1"><button class="add-to-cart btn btn-default" type="button">Buy Now</button></a>
							<a href="addToCart-{{products.productId}}"><button class="add-to-cart btn btn-default" type="button">add to cart</button></a>
							
						</div>
						
					</div>
				</div>
			</div>
		</div>
	</div>

<script>
			var product = ${pGson};
			angular.module('getAllProductsDisplay', []).controller('allProductDisplayController',
					function($scope) {
						$scope.products = product;
						

					});
		</script>

<%@include file="footer.jsp" %>