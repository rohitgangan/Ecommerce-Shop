<%@include file="header.jsp" %>

</nav>
	</div>



<div class="container"style="padding-top:100px;">

<div class="row">
    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
<form:form modelAttribute="billingAddress" commandName="billingAddress">
<h2>Please Sign Up <small>It's free and always will be.</small></h2>
			<hr class="colorgraph">
			<form:input path="billingAddressId" hidden="true"/>
			<div class="form-group">
			<form:input path="streetAddress1" id="street_address1" class="form-control input-lg" placeholder="Sreet Address" tabindex="1"/>
				</div>
<div class="form-group">
<form:input path="streetAddress2" id="street_address2" class="form-control input-lg" placeholder="Sreet Address2" tabindex="2"/><br>
</div>
<div class="form-group">
<form:input path="city" id="city" class="form-control input-lg" placeholder="City" tabindex="3"/>
</div>

<div class="form-group">
<form:input path="District" id="District" class="form-control input-lg" placeholder="District" tabindex="4"/>
</div>
<div class="form-group">
<form:input path="pinCode" id="pincode" class="form-control input-lg" placeholder="Pin Code" tabindex="5"/>
</div>
<div class="form-group">
<form:input path="state" id="state" class="form-control input-lg" placeholder="State" tabindex="6"/>
</div>
<div class="form-group">
<form:input path="landmark" id="landmark" class="form-control input-lg" placeholder="Landmark" tabindex="7"/>
</div>

<hr class="colorgraph">
			<div class="row">
				<div class="col-xs-4 col-md-4"><input name="_eventId_skip" type="submit" value="Skip" class="btn btn-primary btn-block btn-lg" tabindex="8"/></div> 
				<div class="col-xs-4 col-md-4">	<input name="_eventId_submit" type="submit" value="Submit" class="btn btn-success btn-block btn-lg"/></div>
				<div class="col-xs-4 col-md-4"><input name="_eventId_cancel" type="submit" value="Cancel" class="btn btn-success btn-block btn-lg"></div>
			</div>
</form:form>
</div></div></div>

<div style="padding-top:10px">
<%@include file="footer.jsp" %>
</div>
