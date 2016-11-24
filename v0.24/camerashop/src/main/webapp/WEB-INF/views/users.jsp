<%@include file="header.jsp" %>
</nav>
	</div>


<div class="container" style="margin-top:100px">

<div class="row">
    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
    	<form:form role="form" method="POST" action="user" modelAttribute="user">
			<h2>Please Sign Up <small>It's free and always will be.</small></h2>
			<hr class="colorgraph">
			<div class="row">
				<div class="col-xs-6 col-sm-6 col-md-6">
					<form:input path="userId" hidden="true"/>
					<div class="form-group">
                        <form:input path="firstName" id="first_name" class="form-control input-lg" placeholder="First Name" tabindex="1"/>
					</div>
				</div>
				<div class="col-xs-6 col-sm-6 col-md-6">
					<div class="form-group">
						<form:input  path="lastName" id="last_name" class="form-control input-lg" placeholder="Last Name" tabindex="2"/>
					</div>
				</div>
			</div>
			<div class="form-group">
				<form:input path="username" id="display_name" class="form-control input-lg" placeholder="Display Name" tabindex="3"/>
			</div>
			<div class="form-group">
				<form:input path="password" type="password" id="password" class="form-control input-lg" placeholder="Email Address" tabindex="4"/>
			</div>
			<div class="row">
				<div class="col-xs-6 col-sm-6 col-md-6">
					<div class="form-group">
						<input type="password" name="password" id="password" class="form-control input-lg" placeholder="Password" tabindex="5">
					</div>
				</div>
				<div class="col-xs-6 col-sm-6 col-md-6">
					<div class="form-group">
						<input type="password" name="password_confirmation" id="password_confirmation" class="form-control input-lg" placeholder="Confirm Password" tabindex="6">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-3 col-sm-3 col-md-3">
					<span class="button-checkbox">
						<button type="button" class="btn" data-color="info" tabindex="7">I Agree</button>
                        <input type="checkbox" name="t_and_c" id="t_and_c" class="hidden" value="1">
					</span>
				</div>
				<div class="col-xs-9 col-sm-9 col-md-9">
					 By clicking <strong class="label label-primary">Register</strong>, you agree to the <a href="#" data-toggle="modal" data-target="#t_and_c_m">Terms and Conditions</a> set out by this site, including our Cookie Use.
				</div>
			</div>
			
			<hr class="colorgraph">
			<div class="row">
				<div class="col-xs-6 col-md-6"><input type="submit" value="Register" class="btn btn-primary btn-block btn-lg" tabindex="7"></div>
				<div class="col-xs-6 col-md-6"><a href="#" class="btn btn-success btn-block btn-lg">Sign In</a></div>
			</div>
		</form:form>
	</div>
</div>
</div>







<form:form method="POST" action="user" modelAttribute="user">
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
<div style="padding-top:10px">
<%@include file="footer.jsp" %>
</div>