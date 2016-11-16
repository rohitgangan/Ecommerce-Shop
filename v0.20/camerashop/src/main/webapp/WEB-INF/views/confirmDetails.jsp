<%@include file="header.jsp" %>
<div style="margin-top:100px">
				<div class="row">
    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
				
				<form:form modelAttribute="userDetails">
				<hr class="colorgraph">
			<div class="row">
				<div class="col-xs-6 col-sm-6 col-md-6">
				<div class="form-group">
					<label>First Name:</label>
					</div>
					</div>
					<div class="col-xs-6 col-sm-6 col-md-6">
				<div class="form-group">
					<label>${userDetails.firstName}</label>
					</div></div></div>
					
					<div class="row">
					<div class="col-xs-6 col-sm-6 col-md-6">
				<div class="form-group">
					<label>Last Name:</label>
					</div></div>
					<div class="col-xs-6 col-sm-6 col-md-6">
				<div class="form-group">
					<label>${userDetails.lastName}</label>
					</div></div></div>
					
					<div class="row">
					<div class="col-xs-6 col-sm-6 col-md-6">
				<div class="form-group">
					<label>Username :</label>
					</div></div>
					<div class="col-xs-6 col-sm-6 col-md-6">
				<div class="form-group">
					<label>${userDetails.username}</label>
					</div></div></div>
					
					<div class="row">
					<div class="col-xs-6 col-sm-6 col-md-6">
				<div class="form-group">
					<form:label path="password">Password :</form:label>
					</div></div>
					<div class="col-xs-6 col-sm-6 col-md-6">
				<div class="form-group">
					<label>${userDetails.password}</label>
					</div></div></div>
					
					<div class="row">
					<div class="col-xs-6 col-sm-6 col-md-6">
				<div class="form-group">
					<label>Email :</label>
					</div></div>
					<div class="col-xs-6 col-sm-6 col-md-6">
				<div class="form-group">
					<label>${userDetails.emailId}</label>
					</div></div></div>
					
					<div class="row">
					<div class="col-xs-6 col-sm-6 col-md-6">
				<div class="form-group">
					<label>Contact No :</label>
					</div></div>
					<div class="col-xs-6 col-sm-6 col-md-6">
				<div class="form-group">
					${userDetails.contactNo}
					</div></div></div>
					
					<!-- for triggering webflow events using form submission,
					 the eventId to be triggered is given in "name" attribute as:-->
					<hr class="colorgraph">
			<div class="row">
				<div class="col-xs-6 col-md-6">
					<input name="_eventId_edit" type="submit" value="Edit" /></div> 
					<div class="col-xs-6 col-md-6" class="btn btn-primary btn-block btn-lg">
					<input name="_eventId_submit" type="submit" value="Confirm Details" class="btn btn-success btn-block btn-lg"/></div></div>
				</form:form>
</div></div></div>
<div style="padding-top:10px">
<%@include file="footer.jsp" %>
</div>