	<%@include file="header.jsp"%>
	</nav>
	</div>
	
	
	<div class="container" style="margin-top: 100px;background-color:#f1f1f1;">
		<div class="row">

			<legend>Add Product Form</legend>
			<form:form class="form-horizontal" method="POST" action="product"
				modelAttribute="product" enctype="multipart/form-data">
				<div class="col-sm-12 col-md-6 form-group">
					<label style="font-size: 20px">Select Category:</label>

					<form:select path="category.categoryName" items="${listCategory}"
						itemValue="categoryName" itemLabel="categoryName"
						class="form-control input-lg" id="category" />
				</div>
				<div class="col-sm-12 col-md-6 form-group">
					<label style="font-size: 20px;" for="subcategory">Select
						Sub categories:</label>
					<form:select path="subcategory.subCategoryName"
						items="${listSubCategory}" itemValue="subCategoryName"
						itemLabel="subCategoryName" class="form-control input-lg"
						id="subcategory" />
				</div>
				<div class="col-sm-12 col-md-6 form-group">
					<label style="font-size: 20px" for="supplier">Supplier</label>
					<c:if test="${pageContext.request.userPrincipal.name != null}">
							<sec:authorize access="isAuthenticated()">
							<sec:authentication
										property="principal.username" />
							</sec:authorize>
				</c:if>
				</div>
				<form:input path="productId" hidden="true" />
				<div class="col-sm-12 col-md-6 form-group">
					<label for="pname" style="font-size: 20px">Product Name</label>
					<form:input path="productName" class="form-control input-lg"
						id="pname" />
					<form:errors path="productName" class="input-lg"
						style="color: #e32828 " />
				</div>
				<div class="col-sm-12 col-md-6 form-group">
					<label for="pquantity" style="font-size: 20px">Product Quantity</label>
					<form:input path="quantity" class="form-control input-lg"
						id="pquantity" />
					<form:errors path="quantity" class="input-lg"
						style="color: #e32828 " />
				</div>
				<div class="col-sm-6 col-md-6 form-group">
					<label for="pdesc" style="font-size: 20px">Product
						Description</label>
					<form:input path="productDescription" class="form-control input-lg"
						id="pdesc" />
					<form:errors path="productDescription" class="input-lg" />
				</div>
				<div class="col-sm-6 col-md-6 form-group">
					<label for="price" style="font-size: 20px">Price</label>
					<form:input path="productPrice" class="form-control input-lg"
						id="price" />
					<form:errors path="productPrice" class="input-lg" />
				</div>
				<div class="col-sm-6 col-md-6 form-group">
					<label for="resolution" style="font-size: 20px">Resolution</label>
					<form:input path="megapixel" class="form-control input-lg"
						id="resolution" />
				</div>
				<div class="col-sm-6 col-md-6 form-group">
					<label for="warrenty" style="font-size: 20px">Warranty</label>
					<form:input path="warrenty" class="form-control input-lg"
						id="warrenty" />
				</div>
				<div class="col-sm-6 col-md-6 form-group">
					<label for="iso" style="font-size: 20px">ISO</label>
					<form:input path="iso" class="form-control input-lg"
						id="iso" />
				</div>
				<div class="col-sm-6 col-md-6 form-group">
					<label for="sensor" style="font-size: 20px">Sensor</label>
					<form:input path="sensor" class="form-control input-lg"
						id="sensor" />
				</div>
				<div class="col-sm-6 col-md-6 form-group">
					<label for="size" style="font-size: 20px">Screen Size</label>
					<form:input path="screenSize" class="form-control input-lg"
						id="size" />
				</div>
				<div class="col-sm-6 col-md-6 form-group">
					<label for="screen" style="font-size: 20px">Touch Screen</label>
					<form:input path="touchScreen" class="form-control input-lg"
						id="screen" />
				</div>
				<div class="col-sm-6 col-md-6 form-group">
					<label for="recording" style="font-size: 20px">Recording</label>
					<form:input path="recording" class="form-control input-lg"
						id="recording" />
				</div>
				<div class="col-sm-6 col-md-6 form-group">
					<label for="shutterSpeed" style="font-size: 20px">Shutter Speed</label>
					<form:input path="shutterSpeed" class="form-control input-lg"
						id="shutterSpeed" />
				</div>
				<div class="col-sm-6 col-md-6 form-group">
					<label for="length" style="font-size: 20px">Lens Length</label>
					<form:input path="length" class="form-control input-lg"
						id="length" />
				</div>
				<div class="col-sm-6 col-md-6 form-group">
					<label for="aparture" style="font-size: 20px">Aparture</label>
					<form:input path="aparture" class="form-control input-lg"
						id="aparture" />
				</div>
				<div class="col-sm-6 col-md-6 form-group">
					<label for="prent" style="font-size: 20px">Select Image</label>
					<form:input type="file" class="form-control input-lg" id="prent"
						path="image" />

				</div>
				<div class="col-sm-12 col-md-12 form-group">
					<input type="Submit" value="Submit" class="btn btn-success btn-lg" />
				</div>
			</form:form>

		</div>
	</div>

	<div class="container">
		<div class="form-group">
			<label for="search">Search</label> <input type="text" ng-model="test"
				class="form-control input-lg" id="search">
		</div>
		<br>
		<legend>Product Details</legend>
		<table class="table table-hover">
			<tr>
				<th ng-click="orderByMe('categoryId')">Category Id</th>
				<th ng-click="orderByMe('productDescription')">Product
					Description</th>
				<th ng-click="orderByMe('productName')">Product Name</th>
				<th ng-click="orderByMe('productPrice')">Price</th>
				<th ng-click="orderByMe('quantity')">Quantity</th>
				<th ng-click="orderByMe('quantity')">Total</th>
				<th ng-click="orderByMe('subCategoryId')">Sub category Id</th>
				<th>Product Image</th>
				<th>Edit</th>
				<th>View</th>

			</tr>
			<tr ng-repeat="p in resultValue=(products | orderBy:myOrderBy | filter:test)">
				<td>{{p.categoryId}}</td>
				<td>{{p.productDescription}}</td>
				<td>{{p.productName}}</td>
				<td>{{p.productPrice}}</td>
				<td>{{p.quantity}}</td>
				<td>{{p.productPrice * p.quantity}}</td>
				<td>{{p.subCategoryId}}</td>
				<td><img src="resources/images/{{p.productId}}.jpg" width="100px" height=100px></td>
				<td><a href="editProduct-{{p.productId}}">Edit</a>| <a
					href="deleteProduct-{{p.productId}}">Delete</a></td>
					<td><a href="viewproduct--{{p.productId}}--product">View Product</a></td>
			</tr>
		</table></div>
		<div class="container">
<h3>Grand Total:{{resultValue | grandTotal:'quantity':'productPrice'}}</h3></div>

		<script>
			var product = ${supplierProduct};
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
			}).controller('allProductDisplayController',
					function($scope) {
						$scope.products = product;
						$scope.orderByMe = function(products) {
							$scope.myOrderBy = products;
						}

					});
		</script>
	
<div style="padding-top:10px">
<%@include file="footer.jsp" %>
</div>