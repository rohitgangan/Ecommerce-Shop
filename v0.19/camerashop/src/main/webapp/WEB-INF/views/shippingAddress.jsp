	<%@include file="header.jsp"%>
	<div style="margin-top: 100px;background-color:#f1f1f1;">
<form:form modelAttribute="shippingAddress" commandName="shippingAddress">
<form:label path="streetAddress1">Street Address 1</form:label>
<form:input path="streetAddress1"/><br>
<form:label path="streetAddress2">Street Address 2</form:label>
<form:input path="streetAddress2"/><br>
<form:label path="city">City</form:label>
<form:input path="city"/><br>
<form:label path="District">District</form:label>
<form:input path="District"/><br>
<form:label path="pinCode">Pin Code</form:label>
<form:input path="pinCode"/><br>
<form:label path="state">State</form:label>
<form:input path="state"/><br>
<form:label path="landmark">Landmark</form:label>
<form:input path="landmark"/><br>
<input name="_eventId_skip" type="submit" value="Skip" /> 
					<input name="_eventId_submit" type="submit" value="Submit" /><br />
</form:form></div>
<div style="padding-top:10px">
<%@include file="footer.jsp" %>
</div>