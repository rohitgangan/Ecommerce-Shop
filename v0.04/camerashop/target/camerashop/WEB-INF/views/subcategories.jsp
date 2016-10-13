<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page isELIgnored="false" %>
   <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sub categories</title>
</head>

<body >
<form:form method="POST" action="add/subcategory" modelAttribute="subcategory">
<label>Select Category</label>
<form:select path="category.categoryName" items="${listCategory}" itemValue="categoryName" itemLabel="categoryName"/>
<label>Subcategory Name</label>
<form:input path="subCategoryName"/>
<label>Subcategory Description</label>

<form:input path="subCategoryDescription"/>
<input type="Submit" value="Submit"/>
</form:form>
</body>
</html>