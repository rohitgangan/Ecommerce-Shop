<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>Home</title>


 <link rel="stylesheet" href="resources/css/bootstrap.css">
  <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/navbar.css">
  <link rel="stylesheet" href="resources/css/sidebar.css">
 
  <script src="resources/js/jquery.min.js"></script>
     <script src="resources/js/bootstrap.min.js"></script>
 <script src="resources/js/kendo.all.min.js"></script>
  <script src="resources/js/jquery.js"></script>
  <script src="resources/js/sidebar.js"></script>
<script type="text/javascript" src="resources/cssslider_files/csss_engine1/ie.js"></script>
</head>

<body >
<%@include file="header.jsp" %>
  
<aside >
  <nav class="navbar navbar-inverse sidebar navbar-fixed-top" role="navigation">
      <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">

<div class="nav-side-menu" style="margin-top:85px;">
    <i class="fa fa-bars fa-2x toggle-btn" data-toggle="collapse" data-target="#menu-content"></i>
  
        <div class="menu-list">
  
            <ul id="menu-content" class="menu-content collapse out">
                <li>
                  <a href="#">
                  <i class="fa fa-dashboard fa-lg"></i> Dashboard
                  </a>
                </li>

                <li  data-toggle="collapse" data-target="#products" class="collapsed active">
                  <a href="#"><i class="fa fa-gift fa-lg"></i> UI Elements  <i class="fa fa-gift fa-lg btn pull-right" style="margin-top:5px"></i></a>
                </li>
                <ul class="sub-menu collapse" id="products">
                    <li class="active"><a href="#">CSS3 Animation</a></li>
                    <li><a href="#">General</a></li>
                    <li><a href="#">Buttons</a></li>
                    <li><a href="#">Tabs & Accordions</a></li>
                    <li><a href="#">Typography</a></li>
                    <li><a href="#">FontAwesome</a></li>
                    <li><a href="#">Slider</a></li>
                    <li><a href="#">Panels</a></li>
                    <li><a href="#">Widgets</a></li>
                    <li><a href="#">Bootstrap Model</a></li>
                </ul>


                <li data-toggle="collapse" data-target="#service" class="collapsed">
                  <a href="#"><i class="fa fa-globe fa-lg"></i> Services <span class="arrow"></span></a>
                </li>  
                <ul class="sub-menu collapse" id="service">
                  <li>New Service 1</li>
                  <li>New Service 2</li>
                  <li>New Service 3</li>
                </ul>


                <li data-toggle="collapse" data-target="#new" class="collapsed">
                  <a href="#"><i class="fa fa-car fa-lg"></i> New <span class="arrow"></span></a>
                </li>
                <ul class="sub-menu collapse" id="new">
                  <li>New New 1</li>
                  <li>New New 2</li>
                  <li>New New 3</li>
                </ul>


                 <li>
                  <a href="#">
                  <i class="fa fa-user fa-lg"></i> Profile
                  </a>
                  </li>

                 <li>
                  <a href="#">
                  <i class="fa fa-users fa-lg"></i> Users
                  </a>
                </li>
            </ul>
     </div>
</div>
  </nav>
  
</aside>
<div class="container-fluid" style="margin-top:85px">
	<div class="row">
		<div class="col-sm-12 col-md-12">
			<div id="myCarousel" class="carousel slide">
   			 <ol class="carousel-indicators">
      		     <li data-target="#myCarousel" data-slide-to="0" class="" contenteditable="false"></li>
       			 <li data-target="#myCarousel" data-slide-to="1" class="active" contenteditable="false"></li>
        		<li data-target="#myCarousel" data-slide-to="2" class="" contenteditable="false"></li>
    		</ol>
    		<div class="carousel-inner">
        		<div class="item" style="">
            	<img src="resources/images/slider-1.jpeg" alt="" class="">
            	<div class="carousel-caption">
                	<h4 class="">First Slide Title</h4>
                	<p class="">
                   		Description for First Slide, this First Slide.
                	</p>
            	</div>
        		</div>
        		<div class="item active">
            	<img src="resources/images/slider-2.jpeg" alt="" class="">
            	<div class="carousel-caption">
                	<h4 class="">Second Slide Title</h4>

                	<p class="">
                  		 Description for Second Slide, this is Second Slide.
                	</p>
            	</div>
        		</div>
        		<div class="item" style="">
            	<img src="//placehold.it/1024x600/3333bb&text=Third+Slide" alt="" class="">
            	<div class="carousel-caption">
                <h4 class="">Third Slide Title</h4>
				<p class="">
                   Description for Third Slide, this is Third Slide.
                </p>
            	</div>
        	</div>
    	</div>    

    	<a class="left carousel-control" href="#myCarousel" data-slide="prev">
        	<span class="glyphicon glyphicon-chevron-left"></span>
    	</a>

    	<a class="right carousel-control" href="#myCarousel" data-slide="next">
        	<span class="glyphicon glyphicon-chevron-right"></span>
    	</a>
	</div>
</div>
</div>
</div>
<script>
 $('#myCarousel').carousel();
    var winWidth = $(window).innerWidth();
    $(window).resize(function () {

        if ($(window).innerWidth() < winWidth) {
            $('.carousel-inner>.item>img').css({
                'min-width': winWidth, 'width': winWidth
            });
        }
        else {
            winWidth = $(window).innerWidth();
            $('.carousel-inner>.item>img').css({
                'min-width': '', 'width': ''
            });
        }
    });

</script>

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
