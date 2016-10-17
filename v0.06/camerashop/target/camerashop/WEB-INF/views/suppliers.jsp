<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
   <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form:form method="POST" action="add/supplier" modelAttribute="supplier">
<label>Supplier Name</label>
<form:input path="supplierName"/>
</br>
<label>Supplier Address</label>
<form:input path="supplierAddress"/>
</br>
<label>Supplier Contact Number</label>
<form:input path="supplierContactNo"/>
</br>
<label>Supplier Email Id</label>
<form:input path="supplierEmailId"/>
</br>
<input type="submit" value="Submit"/>
</form:form>
</body>
</html>