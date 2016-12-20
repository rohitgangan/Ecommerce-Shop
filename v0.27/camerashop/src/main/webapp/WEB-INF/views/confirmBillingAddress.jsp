<%@include file="header.jsp" %>
</nav>
	</div>

<div style="margin-top:100px">
				<div class="row">
    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
				
				<form:form modelAttribute="billingAddress">
				<h3>Confirm Billing Address</h3>
				<hr class="colorgraph">
			<div class="row">
				<div class="col-xs-6 col-sm-6 col-md-6">
				<div class="form-group">
					<label>Flat No/Building/Society:</label>
					</div>
					</div>
					<div class="col-xs-6 col-sm-6 col-md-6">
				<div class="form-group">
					<label>${billingAddress.streetAddress1}</label>
					</div></div></div>
					
					<div class="row">
					<div class="col-xs-6 col-sm-6 col-md-6">
				<div class="form-group">
					<label>Street Address:</label>
					</div></div>
					<div class="col-xs-6 col-sm-6 col-md-6">
				<div class="form-group">
					<label>${billingAddress.streetAddress2}</label>
					</div></div></div>
					
					<div class="row">
					<div class="col-xs-6 col-sm-6 col-md-6">
				<div class="form-group">
					<label>City :</label>
					</div></div>
					<div class="col-xs-6 col-sm-6 col-md-6">
				<div class="form-group">
					<label>${billingAddress.city}</label>
					</div></div></div>
					
					<div class="row">
					<div class="col-xs-6 col-sm-6 col-md-6">
				<div class="form-group">
					<label>District :</label>
					</div></div>
					<div class="col-xs-6 col-sm-6 col-md-6">
				<div class="form-group">
					<label>${billingAddress.district}</label>
					</div></div></div>
					
					<div class="row">
					<div class="col-xs-6 col-sm-6 col-md-6">
				<div class="form-group">
					<label>Pin Code:</label>
					</div></div>
					<div class="col-xs-6 col-sm-6 col-md-6">
				<div class="form-group">
					<label>${billingAddress.pinCode}</label>
					</div></div></div>
					
					<div class="row">
					<div class="col-xs-6 col-sm-6 col-md-6">
				<div class="form-group">
					<label>Landmark :</label>
					</div></div>
					<div class="col-xs-6 col-sm-6 col-md-6">
				<div class="form-group">
					${billingAddress.landmark}
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