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
</head>
<body>
<form:form commandName="userDetails">
<form:input path="userId" hidden="true"/>

<label>First Name</label>
<form:input path="firstName"/><br>
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('firstName')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
 <label>Last Name</label> 
<form:input path="lastName"/>
<br>
 					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('lastName')}" var="err"> 
 					  <div><span>${err.text}</span></div> 
 					</c:forEach><br /> 
<label>Username</label>
 <form:input path="username"/>  
 <br>
<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('username')}" var="err">
 					  <div><span>${err.text}</span></div> 
 					</c:forEach><br /> 
 <label>password</label>
 <form:input path="password"/> 
 <br>
  					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('password')}" var="err"> 
 					  <div><span>${err.text}</span></div> 
 					   					</c:forEach><br /> 
<label>Email Id</label>
 <form:input path="emailId"/> 
 <br>
 					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('emailId')}" var="err">
 					  <div><span>${err.text}</span></div> 
 					</c:forEach><br /> 
 <label>Contact No</label> 
 <form:input path="contactNo"/> 
 <br>
 					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('contactNo')}" var="err">
 					  <div><span>${err.text}</span></div> 
 					</c:forEach><br /> 
 <label>Alternate Contact No</label>
 <form:input path="alternateContactNo"/> 
 <br> 

<input name="_eventId_submit" type="submit" value="Submit"/>
</form:form>
</body>
</html>