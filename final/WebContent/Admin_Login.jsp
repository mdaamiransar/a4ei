<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>Admin</title>
  <link rel="stylesheet" href="Css/AdminLogin.css" type="text/css" media="screen">
  <script type="text/javascript" src="js/AdminLogin.js"></script>
  <script type="text/javascript">
  function status()
{
	
if("${param.Message}")
	{
	alert("${param.Message}");
	}
}
</script>  
</head>
<body onload="status()">

  <form action="Admin_Login" method="post">
  <h2><span class="entypo-login"></span>Login</h2>
  <button class="submit"><span class="entypo-lock"></span></button>
  <span class="entypo-user inputUserIcon"></span>
  <input type="text" name="USER_NAME" class="user" placeholder="username" />
  <span class="entypo-key inputPassIcon"></span>
  <input type="password"  name="PASSWORD" class="pass" placeholder="password" />
  
</form>
  
  </body>
</html>