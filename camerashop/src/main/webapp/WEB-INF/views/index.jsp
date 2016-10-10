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
<style type="text/css">
   body{
   margin-top:70px;
   }
    
    
</style>

 <link rel="stylesheet" href="resources/css/bootstrap.css">
  <link rel="stylesheet" href="resources/css/bootstrap.min.css">
 <link rel="stylesheet" href="resources/css/kendo.common.min.css">
 <link rel="stylesheet" href="resources/css/kendo.common.min.css">
  <link rel="stylesheet" href="resources/css/sidebar.css">
 <link rel="stylesheet" href="resources/cssslider_files/csss_engine1/style.css">
<link rel="stylesheet" href="resources/cssslider_files/csss_engine1/ie.css">
 
  <script src="resources/js/jquery.min.js"></script>
     <script src="resources/js/bootstrap.min.js"></script>
 <script src="resources/js/kendo.all.min.js"></script>
  <script src="resources/js/jquery.js"></script>
<script type="text/javascript" src="resources/cssslider_files/csss_engine1/ie.js"></script>
</head>

<body onload="openNav()">
<!-- bootstrap navigation bar -->
<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Brand</a>
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li>
        <li><a href="#">Link</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Dropdown <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li class="divider"></li>
            <li><a href="#">Separated link</a></li>
            <li class="divider"></li>
            <li><a href="#">One more separated link</a></li>
          </ul>
        </li>
      </ul>
      <form class="navbar-form navbar-left" role="search">
        <div class="form-group">
          <input class="form-control" placeholder="Search" type="text">
        </div>
        <button type="submit" class="btn btn-default">Submit</button>
      </form>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">Link</a></li>
      </ul>
    </div>
  </div>
</nav>

<div id="mySidenav" class="sidenav" style="margin-top:50px;">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="#">About</a>
  <a href="#">Services</a>
  <a href="#">Clients</a>
  <a href="#">Contact</a>
</div>

<!-- Use any element to open the sidenav -->
<span onclick="openNav()">open</span>

<!-- Add all page content inside this div if you want the side nav to push page content to the right (not used if you only want the sidenav to sit on top of the page -->
<div id="main">

<div class="container-fluid">
<div class="row">

<div class="col-lg-3">


</div>

<div class="col-lg-6">

<div class="csslider1 autoplay " style="margin-top:70px">
		<input name="cs_anchor1" id="cs_slide1_0" type="radio" class="cs_anchor slide">
		<input name="cs_anchor1" id="cs_slide1_1" type="radio" class="cs_anchor slide">
		<input name="cs_anchor1" id="cs_slide1_2" type="radio" class="cs_anchor slide">
		<input name="cs_anchor1" id="cs_play1" type="radio" class="cs_anchor" checked="">
		<input name="cs_anchor1" id="cs_pause1_0" type="radio" class="cs_anchor pause">
		<input name="cs_anchor1" id="cs_pause1_1" type="radio" class="cs_anchor pause">
		<input name="cs_anchor1" id="cs_pause1_2" type="radio" class="cs_anchor pause">
		<ul>
			<li class="cs_skeleton"><img src="resources/cssslider_files/csss_images1/f1.jpg" style="width: 100%;"></li>
			<li class="num0 img slide"> <img src="resources/cssslider_files/csss_images1/f1.jpg" alt="f1" title="f1"></li>
			<li class="num1 img slide"> <img src="resources/cssslider_files/csss_images1/f2.jpg" alt="f2" title="f2"></li>
			<li class="num2 img slide"> <img src="resources/cssslider_files/csss_images1/f3.jpg" alt="f3" title="f3"></li>
		</ul>
		<div class="cs_description">
			<label class="num0"><span class="cs_title"><span class="cs_wrapper">f1</span></span></label>
			<label class="num1"><span class="cs_title"><span class="cs_wrapper">f2</span></span></label>
			<label class="num2"><span class="cs_title"><span class="cs_wrapper">f3</span></span></label>
		</div>
		<div class="cs_play_pause">
			<label class="cs_play" for="cs_play1"><span><i></i><b></b></span></label>
			<label class="cs_pause num0" for="cs_pause1_0"><span><i></i><b></b></span></label>
			<label class="cs_pause num1" for="cs_pause1_1"><span><i></i><b></b></span></label>
			<label class="cs_pause num2" for="cs_pause1_2"><span><i></i><b></b></span></label>
			</div>
		<div class="cs_arrowprev">
			<label class="num0" for="cs_slide1_0"><span><i></i><b></b></span></label>
			<label class="num1" for="cs_slide1_1"><span><i></i><b></b></span></label>
			<label class="num2" for="cs_slide1_2"><span><i></i><b></b></span></label>
		</div>
		<div class="cs_arrownext">
			<label class="num0" for="cs_slide1_0"><span><i></i><b></b></span></label>
			<label class="num1" for="cs_slide1_1"><span><i></i><b></b></span></label>
			<label class="num2" for="cs_slide1_2"><span><i></i><b></b></span></label>
		</div>
		<div class="cs_bullets">
			<label class="num0" for="cs_slide1_0"> <span class="cs_point"></span>
				<span class="cs_thumb"><img src="cssslider_files/csss_tooltips1/f1.jpg" alt="f1" title="f1"></span></label>
			<label class="num1" for="cs_slide1_1"> <span class="cs_point"></span>
				<span class="cs_thumb"><img src="cssslider_files/csss_tooltips1/f2.jpg" alt="f2" title="f2"></span></label>
			<label class="num2" for="cs_slide1_2"> <span class="cs_point"></span>
				<span class="cs_thumb"><img src="cssslider_files/csss_tooltips1/f3.jpg" alt="f3" title="f3"></span></label>
		</div>
		</div>

</div>

<div class="col-lg-3">
row 1 col 3
</div>
</div>
</div>
</div>

<script>

     var _gaq = _gaq || [];
      _gaq.push(['_setAccount', 'UA-23019901-1']);
      _gaq.push(['_setDomainName', "bootswatch.com"]);
        _gaq.push(['_setAllowLinker', true]);
      _gaq.push(['_trackPageview']);

     (function() {
       var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
       ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
       var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
     })();
     
     /* Set the width of the side navigation to 250px and the left margin of the page content to 250px and add a black background color to body */
     function openNav() {
         document.getElementById("mySidenav").style.width = "250px";
         document.getElementById("main").style.marginLeft = "250px";
         
     }

     /* Set the width of the side navigation to 0 and the left margin of the page content to 0, and the background color of body to white */
     function closeNav() {
         document.getElementById("mySidenav").style.width = "0";
         document.getElementById("main").style.marginLeft = "0";
         document.body.style.backgroundColor = "white";
     }
  
</script>
</body>
</html>
