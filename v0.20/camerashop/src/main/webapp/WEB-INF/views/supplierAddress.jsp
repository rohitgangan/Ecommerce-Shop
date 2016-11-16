<%@include file="header.jsp" %>

<div class="container" style="padding-top:100px;background-color:#f1f1f1;">

<div class="row">
    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
		<form:form modelAttribute="supplierAddress" commandName="supplierAddress">    	
			<h2>Please Sign Up <small>It's free and always will be.</small></h2>
			<hr class="colorgraph">

<form:input path="supplierAddressId" hidden="true"/>
<div class="form-group">
				<form:input path="supplierCompanyName" id="supplierCompanyName" class="form-control input-lg" placeholder="Supplier company name" tabindex="1"/>
			</div>
			
<div class="form-group">
				<form:input path="comapanyUrl" id="comapanyUrl" class="form-control input-lg" placeholder="Company URL" tabindex="2"/>
			</div>
			
<div class="form-group">
				<form:input path="address1" id="address1" class="form-control input-lg" placeholder="Street Address" tabindex="3"/>
			</div>			

<div class="form-group">
				<form:input path="address2" id="address2" class="form-control input-lg" placeholder="Street Address2" tabindex="4"/>
			</div>			

<div class="form-group">
				<form:input path="city" id="city" class="form-control input-lg" placeholder="City" tabindex="5"/>
			</div>			

<div class="form-group">
				<form:input path="district" id="district" class="form-control input-lg" placeholder="District" tabindex="6"/>
			</div>			

<div class="form-group">
				<form:input path="pinCode" id="pinCode" class="form-control input-lg" placeholder="Pin Code" tabindex="7"/>
			</div>			

<div class="form-group">
				<form:input path="state" id="state" class="form-control input-lg" placeholder="State" tabindex="8"/>
			</div>			

<div class="form-group">
				<form:input path="landmark" id="landmark" class="form-control input-lg" placeholder="Landmark" tabindex="9"/>
			</div>			
<hr class="colorgraph">
			<div class="row">
				<div class="col-xs-6 col-md-6"><input name="_eventId_submit" type="submit" value="Register" class="btn btn-primary btn-block btn-lg" tabindex="7"></div>
				<div class="col-xs-6 col-md-6"><input name="_eventId_cancel" type="submit" value="Cancel" class="btn btn-success btn-block btn-lg"></div>
			</div>

					</form:form>
					</div>
</div>
</div>
<div style="padding-top:10px">
<%@include file="footer.jsp" %>
</div>
