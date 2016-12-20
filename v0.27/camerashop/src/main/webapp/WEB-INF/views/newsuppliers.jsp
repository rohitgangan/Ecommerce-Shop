
<%@include file="header.jsp" %>
</nav>
	</div>


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
<%@include file="footer.jsp" %>