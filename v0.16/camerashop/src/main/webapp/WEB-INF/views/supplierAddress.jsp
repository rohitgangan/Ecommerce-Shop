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
</head>
<body>
<form:form modelAttribute="supplierAddress" commandName="supplierAddress">
<form:label path="supplierCompanyName">Company Name</form:label>
<form:input path="supplierCompanyName"/><br>
<form:label path="comapanyUrl">Company URL</form:label>
<form:input path="comapanyUrl"/><br>
<form:label path="address1">Street Address 1</form:label>
<form:input path="address1"/><br>
<form:label path="address2">Street Address 2</form:label>
<form:input path="address2"/><br>
<form:label path="city">City</form:label>
<form:input path="city"/><br>
<form:label path="district">District</form:label>
<form:input path="district"/><br>
<form:label path="pinCode">Pin Code</form:label>
<form:input path="pinCode"/><br>
<form:label path="state">State</form:label>
<form:input path="state"/><br>
<form:label path="landmark">Landmark</form:label>
<form:input path="landmark"/><br>
					<input name="_eventId_submit" type="submit" value="Submit" /><br />
					</form:form>
</body>
</html>