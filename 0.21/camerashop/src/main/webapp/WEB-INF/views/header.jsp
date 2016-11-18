<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" href="resources/css/bootstrap.css">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/font-awesome.min.css">

 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css"> 
<link rel="stylesheet" href="resources/css/megamenu.css">
<link rel="stylesheet" href="resources/css/slider.css">
<link rel="stylesheet" href="resources/css/Main.css">
<link rel="stylesheet" type="text/css" href="resources/css/MainStyle.css">

<link rel="stylesheet" media="screen and (max-width: 1200px) and (min-width: 601px)" href="resources/css/MainStyle1.css" />
<link rel="stylesheet" media="screen and (max-width: 600px) and (min-width: 351px)" href="resources/css/MainStyle2.css" />
<link rel="stylesheet" media="screen and (max-width: 350px)" href="resources/css/MainStyle3.css" />
<link rel="stylesheet" href="resources/css/footer.css">
<style type="text/css">
.colorgraph {
  height: 5px;
  border-top: 0;
  background: #c4e17f;
  border-radius: 5px;
  background-image: -webkit-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: -moz-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: -o-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: linear-gradient(to right, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
}
</style>

<script src="resources/js/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<script src="resources/js/megamenu.js"></script>

</head>
<body style="background-color:#f1f1f1;">
	<!-- bootstrap navigation bar -->

	<div class="container-fluid">
		<nav class="navbar navbar-default navbar-fixed-top">
		<div class="navbar-header">
			<button class="navbar-toggle" type="button" data-toggle="collapse"
				data-target=".js-navbar-collapse">
				<span class="sr-only">Toggle navigation</span> 
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span> 
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" rel="home" href="home" title="Buy Sell all products related to photography">
        <img style="max-width:200px; margin-top: -10px;"
             src="resources/images/my_logo(8).png">
    </a>
		</div>

		<div class="collapse navbar-collapse js-navbar-collapse">
			<ul class="nav navbar-nav">


				<li><a href="#">About Us</a></li>
				<li><a href="#">Contact Us</a></li>
				
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><c:if
						test="${pageContext.request.userPrincipal.name != null}">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"
							role="button" aria-expanded="false">My account <span
							class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">

							<sec:authorize access="hasRole('ROLE_ADMIN')">
								<li><a href="categories">Category</a></li>
								<li><a href="subcategories">Subcategory</a></li>
								<li><a href="products">Products</a></li>	
								<li class="divider"></li>
								<li><a href="#">My Profile</a></li>
							</sec:authorize>
							
							<sec:authorize access="hasRole('ROLE_SUPPLIER')">
								<li><a href="products">Products</a></li>
								<li class="divider"></li>
								<li><a href="#">My Profile</a></li>
							</sec:authorize>
							
							<sec:authorize access="hasRole('ROLE_USER')">
							<li><a href="#">My Orders</a></li>
							<li><a href="#">My Profile</a></li>
							</sec:authorize>
						</ul>
					</c:if></li>
					<sec:authorize access="hasRole('ROLE_USER')">
					<li><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i> My cart (0)</a> 
				</li></sec:authorize>
				
			</ul>
			<ul class="nav navbar-nav navbar-right">

				<c:if test="${pageContext.request.userPrincipal.name != null}">
					<li><a href="#" style="space-top: 10px; color: #fff;">Welcome,
							<sec:authorize access="isAuthenticated()">
								<strong><sec:authentication
										property="principal.username" /></strong>
							</sec:authorize>
					</a></li>
				</c:if>

				<c:if test="${pageContext.request.userPrincipal.name != null}">	
					<li><a href="perform_logout"><span class="glyphicon glyphicon-user"></span>Logout</a></li>
						
				</c:if>

				<c:if test="${pageContext.request.userPrincipal.name == null}">
					<li><a href="newsuppliers">Sell on Primes & Zooms</a></li>
					<li><a href="/camerashop/login"><span
							class="glyphicon glyphicon-log-in"></span> Login</a></li>
					<li><a href="users"><span class="glyphicon glyphicon-user"></span>
							Sign Up</a></li>
				</c:if>
			</ul>
		</div>
		<!-- /.nav-collapse -->



	<!-- 	<div class="navbar-header">
			<button class="navbar-toggle" type="button" data-toggle="collapse"
				data-target=".js-navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>

		</div>
 -->
		<div class="collapse navbar-collapse js-navbar-collapse">
			<ul class="nav navbar-nav">
				<!-- Start c:ForEach here -->
				<c:forEach items="${listCategory}" var="category">
					<li class="dropdown mega-dropdown"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown">${category.categoryName}<span
							class="caret"></span></a>

						<ul class="dropdown-menu mega-dropdown-menu">
							<c:forEach items="${category.subCategory}" var="subCategory">
								<li class="col-sm-3">
									<ul>
										<li class="dropdown-header">${subCategory.subCategoryName}</li>
										<c:forEach items="${subCategory.product}" var="product">
											<li><a href="viewproduct--${product.productId}--product">${product.productName}</a></li>

										</c:forEach>
										<li class="divider"></li>
									</ul>

								</li>
							</c:forEach>



							<li class="col-sm-3 " style="right: 0px;">
								<ul>
									<li class="dropdown-header">Top Collection</li>
									<div id="womenCollection" class="carousel slide" data-ride="carousel">
										<div class="carousel-inner">
											<div class="item active">
												<a href="#"><img
													src="http://placehold.it/254x150/3498db/f5f5f5/&text=New+Collection"
													class="img-responsive" alt="product 1"></a>
												<h4>
													<small>Summer dress floral prints</small>
												</h4>
												<button class="btn btn-primary" type="button">49,99
												</button>
												<button href="#" class="btn btn-default" type="button">
													<span class="glyphicon glyphicon-heart"></span> Add to
													Wishlist
												</button>
											</div>
											<!-- End Item -->
											<div class="item">
												<a href="#"><img
													src="http://placehold.it/254x150/ff3546/f5f5f5/&text=New+Collection"
													class="img-responsive" alt="product 2"></a>
												<h4>
													<small>Gold sandals with shiny touch</small>
												</h4>
												<button class="btn btn-primary" type="button">9,99
												</button>
												<button href="#" class="btn btn-default" type="button">
													<span class="glyphicon glyphicon-heart"></span> Add to
													Wishlist
												</button>
											</div>
											<!-- End Item -->
											<div class="item">
												<a href="#"><img
													src="http://placehold.it/254x150/2ecc71/f5f5f5/&text=New+Collection"
													class="img-responsive" alt="product 3"></a>
												<h4>
													<small>Denin jacket stamped</small>
												</h4>
												<button class="btn btn-primary" type="button">49,99
												</button>
												<button href="#" class="btn btn-default" type="button">
													<span class="glyphicon glyphicon-heart"></span> Add to
													Wishlist
												</button>
											</div>
											<!-- End Item -->
										</div>
										<!-- End Carousel Inner -->
										<!-- Controls -->

									</div>
									<!-- /.carousel -->
									<li class="divider"></li>
									<li><a href="#">View all Collection <span
											class="glyphicon glyphicon-chevron-right pull-right"></span></a></li>
								</ul>
							</li>
						</ul></li>
				</c:forEach>
				<!-- Finish C:Foreach here -->
			</ul>

		</div>
		<!-- /.nav-collapse --> </nav>
	</div>



