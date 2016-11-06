<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page isELIgnored="false" %>
   <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New user registration</title>
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
     <script src="resources/js/bootstrap.min.js"></script>
  <script src="resources/js/jquery.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
</head>
<body style="padding-top:100px;background-color:#f1f1f1;">
<%@include file="header.jsp" %>
<div class="container">

<div class="row">
    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
    	<form:form role="form" method="POST" commandName="userDetails">
			<h2>Please Sign Up <small>It's free and always will be.</small></h2>
			<hr class="colorgraph">
			<form:input path="userId" hidden="true"/>
			<div class="row">
				<div class="col-xs-6 col-sm-6 col-md-6">
					<form:input path="userId" hidden="true"/>
					<div class="form-group">
                        <form:input path="firstName" id="first_name" class="form-control input-lg" placeholder="First Name" tabindex="1"/>
						<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('firstName')}" var="err">
					  <div><span style="color: #e32828 ">${err.text}</span></div>
					</c:forEach><br />
					</div>
				</div>
				<div class="col-xs-6 col-sm-6 col-md-6">
					<div class="form-group">
						<form:input  path="lastName" id="last_name" class="form-control input-lg" placeholder="Last Name" tabindex="2"/>
						<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('lastName')}" var="err"> 
 					  <div><span style="color: #e32828 ">${err.text}</span></div> 
 					</c:forEach><br />
					</div>
				</div>
			</div>
			<div class="form-group">
				<form:input path="username" id="display_name" class="form-control input-lg" placeholder="Username" tabindex="3"/>
				<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('username')}" var="err"> 
 					  <div><span style="color: #e32828 ">${err.text}</span></div> 
 					</c:forEach><br />
			</div>
			<div class="form-group">
				<form:input path="password" type="password" id="password" class="form-control input-lg" placeholder="Password" tabindex="4"/>
				<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('password')}" var="err"> 
 					  <div style="color: #e32828 "><span>${err.text}</span></div> 
 					   					</c:forEach><br />
			</div>
			
					<div class="form-group">
						<form:input path="emailId" name="emailId" id="emailId" class="form-control input-lg" placeholder="Email" tabindex="5"/>
						<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('emailId')}" var="err">
 					  <div><span style="color: #e32828 ">${err.text}</span></div> 
 					</c:forEach>
					</div>
				
					<div class="form-group">
						<form:input path="contactNo" name="congtactNo" id="contactNo" class="form-control input-lg" placeholder="Contact No" tabindex="6"/>
						<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('contactNo')}" var="err">
 					  <div><span style="color: #e32828 ">${err.text}</span></div> 
 					</c:forEach><br />
					</div>
					
					<div class="form-group">
						<form:input path="alternateContactNo" name="congtactNo" id="contactNo" class="form-control input-lg" placeholder="Contact No" tabindex="7"/>
					</div>
				
			
			<hr class="colorgraph">
			<div class="row">
				<div class="col-xs-6 col-md-6"><input name="_eventId_submit" type="submit" value="Submit" class="btn btn-primary btn-block btn-lg" tabindex="7"></div>
				<div class="col-xs-6 col-md-6"><a href="#" class="btn btn-success btn-block btn-lg">Sign In</a></div>
			</div>
		</form:form>
	</div>
</div>
</div>
<div style="padding-top:10px">
<%@include file="footer.jsp" %>
</div>



</body>
</html>