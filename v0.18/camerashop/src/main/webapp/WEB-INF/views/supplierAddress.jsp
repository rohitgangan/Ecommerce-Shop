<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page isELIgnored="false" %>
   <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Supllier details form</title>
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
		<form:form modelAttribute="supplierAddress" commandName="supplierAddress">    	
			<h2>Please Sign Up <small>It's free and always will be.</small></h2>
			<hr class="colorgraph">

<form:input path="supplierAddressId" hidden="true"/>
<div class="form-group">
				<form:input path="supplierCompanyName" id="supplierCompanyName" class="form-control input-lg" placeholder="Supplier company name" tabindex="1"/>
			</div>
			
<div class="form-group">
				<form:input path="comapanyUrl" id="comapanyUrl" class="form-control input-lg" placeholder="Company URL" tabindex="2"/>
			</div>
			
<div class="form-group">
				<form:input path="address1" id="address1" class="form-control input-lg" placeholder="Street Address" tabindex="3"/>
			</div>			

<div class="form-group">
				<form:input path="address2" id="address2" class="form-control input-lg" placeholder="Street Address2" tabindex="4"/>
			</div>			

<div class="form-group">
				<form:input path="city" id="city" class="form-control input-lg" placeholder="City" tabindex="5"/>
			</div>			

<div class="form-group">
				<form:input path="district" id="district" class="form-control input-lg" placeholder="District" tabindex="6"/>
			</div>			

<div class="form-group">
				<form:input path="pinCode" id="pinCode" class="form-control input-lg" placeholder="Pin Code" tabindex="7"/>
			</div>			

<div class="form-group">
				<form:input path="state" id="state" class="form-control input-lg" placeholder="State" tabindex="8"/>
			</div>			

<div class="form-group">
				<form:input path="landmark" id="landmark" class="form-control input-lg" placeholder="Landmark" tabindex="9"/>
			</div>			
<hr class="colorgraph">
			<div class="row">
				<div class="col-xs-6 col-md-6"><input name="_eventId_submit" type="submit" value="Register" class="btn btn-primary btn-block btn-lg" tabindex="7"></div>
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