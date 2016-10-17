<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page isELIgnored="false" %>
   <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>newsuppliers</title>
</head>
<body>
<form:form method="POST" action="newsupplier" modelAttribute="newsupplier">
<form:input path="userId" hidden="true"/>

<label>First Name</label>
<form:input path="firstName"/>
<br>
<label>Last Name</label>
<form:input path="lastName"/> 
<br>
<label>Username</label>
<form:input path="username"/> 
<br>
<label>password</label>
<form:input path="password"/> 
<br>
<label>Email Id</label>
<form:input path="emailId"/> 
<br>
<label>Contact No</label>
<form:input path="contactNo"/>
<br>
<label>Alternate Contact No</label>
<form:input path="alternateContactNo"/> 
<br>
<label>Billing Details:</label><br> 
 <label>Street address1</label>
<form:input path="shippingAddress.streetAddress1"/> 
<<br>
<label>Street address1</label>
<form:input path="billingAddress.streetAddress1"/>
<br>
<input type="submit" value="Submit"/>
</form:form>
</body>
</body>
</html>