<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sending Email</title>
</head>
<body>
<div>
<h4>Send Email</h4>
<form action="Send_Mail" method="post">  
<table>
<tr>
   <td>Recipient Address<br></td>
   <td><input type="text" name="Recipient" width="50px"></td>
</tr>

<tr>
    <td>Subject<br></td>
    <td><input type="text" name="Subject"></td>
</tr>

<tr>
    <td>Content<br></td>
    <td><textarea rows="10" cols="50" name="Content"></textarea><br></td>
</tr>

<tr>
    <td colspan="5" align="center"  >
    <input type="submit"  value="Submit"></td>
    </tr>


</table>
</form>
</div>  
</body>
</html>