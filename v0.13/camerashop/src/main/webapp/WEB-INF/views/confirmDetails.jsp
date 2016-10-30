<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page isELIgnored="false" %>
   <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confirm Details</title>
</head>
<body>

				//confirm details page
				<form:form modelAttribute="userDetails">
					<form:label path="firstName">First Name:</form:label>${userDetails.firstName}
					<br /><br />
					<form:label path="lastName">Last Name:</form:label>${userDetails.lastName}
					<br /><br />
					<form:label path="username">Username :</form:label>${userDetails.username}
					<br /><br />
					<form:label path="password">Password :</form:label>${userDetails.password}
					<br /><br />
					<form:label path="emailId">Email :</form:label>${userDetails.emailId}
					<br /><br />
					<form:label path="contactNo">Contact No :</form:label>${userDetails.contactNo}
					<br /><br />
					<!-- for triggering webflow events using form submission,
					 the eventId to be triggered is given in "name" attribute as:
					-->
					<input name="_eventId_edit" type="submit" value="Edit" /> 
					<input name="_eventId_submit" type="submit" value="Confirm Details" /><br />
				</form:form>

</body>
</html>