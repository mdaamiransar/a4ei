<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="Css/Account.css">
</head>
<body>

<div id="account">

<ul>
    <li class="active"><a href="#">My Account</a></li>
    <li><a href="#">My Order</a></li>
    <li><a href="#">Personal Information</a></li>
    <li><a href="Change Password.jsp">Change Password</a></li>
    <li><a href="#">Addresses</a></li>
    <li><a href="#">Profile Settings</a></li>
    <li><a href="#">Update Email/Mobile</a></li>
    <li><a href="#">Deactivate Account</a></li>
    <li><a href="#">Email Preferences</a></li>

</ul>
</div>
<div>
<table width="30%" style="margin-left: 380px; margin-top: -330px;" align="center">
  <caption>
    <h3>Change Password</h3>  
  </caption>
  <tr>
    <td>Old Password</td>
    <td><input type="password" name="PASSWORD"></td>
  </tr>
  <tr>
    <td>New Password</td>
    <td><input type="text" name="PASSWORD"></td></td>
  </tr>
  <tr>
    <td>Confirm Password</td>
    <td><input type="text" name="CONFIRM_PASSWORD"></td></td>
  </tr>
  <tr>
      <td height="31" colspan="2" align="center" >
      <input type="button"  value="Update"></td>
  </tr>
</table>

</div>

 <div class="footer">


</div>
</body>
</html>