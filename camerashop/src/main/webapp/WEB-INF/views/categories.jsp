<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page isELIgnored="false" %>
   <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring Form</title>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>



</head>
<body ng-app="gCategory" ng-controller="gController">
<form:form method="POST" action="add/category" modelAttribute="category">
<label>category Name</label>
<form:input path="categoryName"/>
</br>
<labe>category Description<label>
<form:input path="categoryDescription"/>
<input type="submit" value="Submit"/>
</form:form>

<table>
<c:forEach items="${listCategory}" var="listCategory">     


<tr> <td>  <c:out value="${listCategory.categoryId}"/></td>
   <td><c:out value="${listCategory.categoryName}"/></td>
   </tr>

</c:forEach>
</table>


<div ng-app="gCategory" ng-controller="gController">
<tr ng-repeat="d in products">
<td>{{d.categoryId}}</td>
<td>{{d.categoryName}}</td>
</tr>
</div>
<script>
		var prod = ${cat};
		angular.module('getcategory', []).controller('getcategoryController',function($scope)
				{
					$scope.products = prod;
					
				});
	</script>
</body>
</html>