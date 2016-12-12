<%@include file="header.jsp" %>
  </nav>
	</div>
<div class="container"style="padding-top:100px;">

<div class="row">
    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">


<form name="myForm" method="post" action="<c:url value='j_spring_security_check'/>">

<h3>Login to continue your account</h3>

<hr class="colorgraph">
<div class="form-group">

<input id="name" name="username" placeholder="username"  class="form-control input-lg" type="text" maxlength="20" width="100px;">

</div>
<div class="form-group">
<input name="password" placeholder="******" type="password" class="form-control input-lg">   
</div>
<c:if test="${not empty error}">
            <span style="color:red"> 
                 Invalid username or password.
            </span>
        </c:if>
<hr class="colorgraph">
			<div class="row">
				<div class="col-xs-6 col-md-12">
				
<input id="submit" type="submit" value="Login" class="btn btn-success btn-block btn-lg" tabindex="3">
</div></div>
</form>
</div></div></div>
<div style="padding-top:10px">
<%@include file="footer.jsp" %>
</div>
