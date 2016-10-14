<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
   <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Products</title>
</head>
<body>

<form:form method="POST" action="add/product" modelAttribute="product">
<label>Select Category</label>
<form:select path="category.categoryName" items="${listCategory}" itemValue="categoryName" itemLabel="categoryName"/>
<label>Select Sub Category</label>
<form:select path="subcategory.subCategoryName" items="${listSubCategory}" itemValue="subCategoryName" itemLabel="subCategoryName"/>
<label>Select Supplier</label>
<form:select path="supplier.supplierName" items="${listSupplier}" itemValue="supplierName" itemLabel="supplierName"/>

<label>Product Name</label>
<form:input path="productName"/>
<label>Product Description</label>
<form:input path="productDescription"/>
<label>Product Rent</label>
<form:input path="productRent"/>
<input type="Submit" value="Submit"/>
</form:form>

</body>
</html>