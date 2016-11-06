<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="resources/css/MainStyle.css">
<link rel="stylesheet" media="screen and (max-width: 1200px) and (min-width: 601px)" href="resources/css/MainStyle1.css" />
<link rel="stylesheet" media="screen and (max-width: 600px) and (min-width: 351px)" href="resources/css/MainStyle2.css" />
<link rel="stylesheet" media="screen and (max-width: 350px)" href="resources/css/MainStyle3.css" />
<title>login</title>
</head>
<body>

<div id="envelope">
<form name="myForm" method="post" action="perform_login">
<header>
<h2>Login to continue your account</h2>
</header>

<label><h2>Username</h2></label>
<input id="name" name="username" placeholder="username" type="text" maxlength="20" width="100px;">
    <br><span id="Namebox" style="color:red;"></span><br>


<label><h2>Password</h2></label>
<input name="password" placeholder="******" type="password">
<br><span id="Passwordbox" style="color:red;"></span><br>    



<input id="submit" type="submit" value="Login" >
</form>
</div>

<!-- <form method="post" action="perform_login"> -->
<!-- <input type="text" name=username> -->
<!-- <input type="password" name="password"> -->
<!-- <input type="submit" value="Login"> -->
</form>
</body>
</html>