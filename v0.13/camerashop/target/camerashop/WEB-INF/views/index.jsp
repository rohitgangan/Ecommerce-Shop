<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>Home</title>

<link rel="stylesheet" href="resources/css/slider.css">

<!--     <link rel="stylesheet" href="resources/css/navbar.css"> -->
 
  <script src="resources/js/jquery.min.js"></script>
     <script src="resources/js/bootstrap.min.js"></script>
  <script src="resources/js/jquery.js"></script>
</head>

<body style="padding-top:100px">
<%@include file="header.jsp" %>

<div class="container">
	<div class="row">
		<!-- Carousel -->
    	<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
			  	<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
			</ol>
			<!-- Wrapper for slides -->
			<div class="carousel-inner">
			    <div class="item active">
			    	<img src="http://unsplash.s3.amazonaws.com/batch%209/barcelona-boardwalk.jpg" alt="First slide">
                    <!-- Static Header -->
                    <div class="header-text hidden-xs">
                        <div class="col-md-12 text-center">
                            <h2>
                            	<span>Welcome to <strong>Online Camerashop</strong></span>
                            </h2>
                            <br>
                            <h3>
                            	<span>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span>
                            </h3>
                            <br>
                            <div class="">
                                <a class="btn btn-theme btn-sm btn-min-block" href="#">Login</a><a class="btn btn-theme btn-sm btn-min-block" href="#">Register</a></div>
                        </div>
                    </div><!-- /header-text -->
			    </div>
			    <div class="item">
			    	<img src="http://unsplash.s3.amazonaws.com/batch%209/barcelona-boardwalk.jpg" alt="Second slide">
			    	<!-- Static Header -->
                    <div class="header-text hidden-xs">
                        <div class="col-md-12 text-center">
                            <h2>
                                <span>Welcome to LOREM IPSUM</span>
                            </h2>
                            <br>
                            <h3>
                            	<span>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span>
                            </h3>
                            <br>
                            <div class="">
                                <a class="btn btn-theme btn-sm btn-min-block" href="#">Login</a><a class="btn btn-theme btn-sm btn-min-block" href="#">Register</a></div>
                        </div>
                    </div><!-- /header-text -->
			    </div>
			    <div class="item">
			    	<img src="http://unsplash.s3.amazonaws.com/batch%209/barcelona-boardwalk.jpg" alt="Third slide">
			    	<!-- Static Header -->
                    <div class="header-text hidden-xs">
                        <div class="col-md-12 text-center">
                            <h2>
                                <span>Welcome to LOREM IPSUM</span>
                            </h2>
                            <br>
                            <h3>
                            	<span>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span>
                            </h3>
                            <br>
                            <div class="">
                                <a class="btn btn-theme btn-sm btn-min-block" href="#">Login</a><a class="btn btn-theme btn-sm btn-min-block" href="#">Register</a></div>
                        </div>
                    </div><!-- /header-text -->
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

<div class="container-fluid" style="margin-top:10px;">
<div class = "row">
   <legend style="padding-top:10px;">Canon Dslr</legend>
   <div class = "col-sm-6 col-md-3">
      <div class = "thumbnail">
         <img src = "resources/images/slider-1.jpeg" alt = "Generic placeholder thumbnail">
      </div>
      
      <div class = "caption">
         <h3>Thumbnail label</h3>
         <p>Some sample text. Some sample text.</p>
         
         <p>
            <a href = "#" class = "btn btn-primary" role = "button">
               Button
            </a> 
            
            <a href = "#" class = "btn btn-default" role = "button">
               Button
            </a>
         </p>
         
      </div>
   </div>
   
   <div class = "col-sm-6 col-md-3">
      <div class = "thumbnail">
         <img src = "resources/images/Slider-4.jpg" alt = "Generic placeholder thumbnail">
      </div>
      
      <div class = "caption">
         <h3>Thumbnail label</h3>
         <p>Some sample text. Some sample text.</p>
         
         <p>
            <a href = "#" class = "btn btn-primary" role = "button">
               Button
            </a> 
            
            <a href = "#" class = "btn btn-default" role = "button">
               Button
            </a>
         </p>
         
      </div>
   </div>
   
   <div class = "col-sm-6 col-md-3">
      <div class = "thumbnail">
         <img src = "resources/images/slider-5.jpg" alt = "Generic placeholder thumbnail">
      </div>
      
      <div class = "caption">
         <h3>Thumbnail label</h3>
         <p>Some sample text. Some sample text.</p>
         
         <p>
            <a href = "#" class = "btn btn-primary" role = "button">
               Button
            </a> 
            
            <a href = "#" class = "btn btn-default" role =" button">
               Button
            </a>
         </p>
         
      </div>
   </div>
   
   <div class = "col-sm-6 col-md-3">
      <div class = "thumbnail">
         <img src = "resources/images/slider-1.jpeg" alt = "Generic placeholder thumbnail">
      </div>
      
      <div class = "caption">
         <h3>Thumbnail label</h3>
         <p>Some sample text. Some sample text.</p>
         
         <p>
            <a href = "#" class = "btn btn-primary" role = "button">
               Button
            </a> 
            
            <a href = "#" class = "btn btn-default" role = "button">
               Button
            </a>
         </p>
         
      </div>
   </div>
   
</div>
</div>

<div class="container-fluid" style="margin-top:10px;">
<div class = "row">
   
   <div class = "col-sm-6 col-md-3">
      <div class = "thumbnail">
         <img src = "resources/images/slider-1.jpeg" alt = "Generic placeholder thumbnail">
      </div>
      
      <div class = "caption">
         <h3>Thumbnail label</h3>
         <p>Some sample text. Some sample text.</p>
         
         <p>
            <a href = "#" class = "btn btn-primary" role = "button">
               Button
            </a> 
            
            <a href = "#" class = "btn btn-default" role = "button">
               Button
            </a>
         </p>
         
      </div>
   </div>
   
   <div class = "col-sm-6 col-md-3">
      <div class = "thumbnail">
         <img src = "resources/images/slider-1.jpeg" alt = "Generic placeholder thumbnail">
      </div>
      
      <div class = "caption">
         <h3>Thumbnail label</h3>
         <p>Some sample text. Some sample text.</p>
         
         <p>
            <a href = "#" class = "btn btn-primary" role = "button">
               Button
            </a> 
            
            <a href = "#" class = "btn btn-default" role = "button">
               Button
            </a>
         </p>
         
      </div>
   </div>
   
   <div class = "col-sm-6 col-md-3">
      <legend>Add Category Form</legend>
      <div class = "thumbnail">
         <img src = "resources/images/slider-1.jpeg" alt = "Generic placeholder thumbnail">
      </div>
      
      <div class = "caption">
         <h3>Thumbnail label</h3>
         <p>Some sample text. Some sample text.</p>
         
         <p>
            <a href = "#" class = "btn btn-primary" role = "button">
               Button
            </a> 
            
            <a href = "#" class = "btn btn-default" role =" button">
               Button
            </a>
         </p>
         
      </div>
   </div>
   
   <div class = "col-sm-6 col-md-3">
      <div class = "thumbnail">
         <img src = "resources/images/slider-1.jpeg" alt = "Generic placeholder thumbnail">
      </div>
      
      <div class = "caption">
         <h3>Thumbnail label</h3>
         <p>Some sample text. Some sample text.</p>
         
         <p>
            <a href = "#" class = "btn btn-primary" role = "button">
               Button
            </a> 
            
            <a href = "#" class = "btn btn-default" role = "button">
               Button
            </a>
         </p>
         
      </div>
   </div>
   
</div>
</div>

</body>
</html>
