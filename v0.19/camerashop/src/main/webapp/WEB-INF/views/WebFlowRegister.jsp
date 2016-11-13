
<%@include file="header.jsp" %>
<div class="container" style="padding-top:100px;background-color:#f1f1f1;">

<div class="row">

    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
    	<form:form role="form" method="POST" commandName="userDetails">
			<h2>Please Sign Up <small>It's free and always will be.</small></h2>
			<hr class="colorgraph">
			<div class="row">
				<div class="col-xs-6 col-sm-6 col-md-6">
					<form:input path="userId" hidden="true"/>
					<div class="form-group">
                        <form:input path="firstName" id="first_name" class="form-control input-lg" placeholder="First Name" tabindex="1"/>
						<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('firstName')}" var="err">
					  <div><span style="color: #e32828 ">${err.text}</span></div>
					</c:forEach><br />
					</div>
				</div>
				<div class="col-xs-6 col-sm-6 col-md-6">
					<div class="form-group">
						<form:input  path="lastName" id="last_name" class="form-control input-lg" placeholder="Last Name" tabindex="2"/>
						<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('lastName')}" var="err"> 
 					  <div><span style="color: #e32828 ">${err.text}</span></div> 
 					</c:forEach><br />
					</div>
				</div>
			</div>
			<div class="form-group">
				<form:input path="username" id="display_name" class="form-control input-lg" placeholder="Username" tabindex="3"/>
				<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('username')}" var="err"> 
 					  <div><span style="color: #e32828 ">${err.text}</span></div> 
 					</c:forEach><br />
			</div>
			<div class="form-group">
				<form:input path="password" type="password" id="password" class="form-control input-lg" placeholder="Password" tabindex="4"/>
				<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('password')}" var="err"> 
 					  <div style="color: #e32828 "><span>${err.text}</span></div> 
 					   					</c:forEach><br />
			</div>
			
					<div class="form-group">
						<form:input path="emailId" name="emailId" id="emailId" class="form-control input-lg" placeholder="Email" tabindex="5"/>
						<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('emailId')}" var="err">
 					  <div><span style="color: #e32828 ">${err.text}</span></div> 
 					</c:forEach>
					</div>
				
					<div class="form-group">
						<form:input path="contactNo" name="congtactNo" id="contactNo" class="form-control input-lg" placeholder="Contact No" tabindex="6"/>
						<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('contactNo')}" var="err">
 					  <div><span style="color: #e32828 ">${err.text}</span></div> 
 					</c:forEach><br />
					</div>
					
					<div class="form-group">
						<form:input path="alternateContactNo" name="congtactNo" id="contactNo" class="form-control input-lg" placeholder="Contact No" tabindex="7"/>
					</div>
				
			
			<hr class="colorgraph">
			<div class="row">
				<div class="col-xs-6 col-md-6"><input name="_eventId_submit" type="submit" value="Submit" class="btn btn-primary btn-block btn-lg" tabindex="8"></div>
				<div class="col-xs-6 col-md-6"><a href="#" class="btn btn-success btn-block btn-lg">Sign In</a></div>
			</div>
		</form:form>
	</div>
</div>
</div>
<div style="padding-top:10px">
<%@include file="footer.jsp" %>
</div>