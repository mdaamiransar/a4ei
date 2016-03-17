<%@page import="cart.Dao_Cart"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,db.*" import="java.util.*" import="java.util.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%  Connection con = Db.Condb(); 
String payment_type=request.getParameter("p"); 

 
%>
</br></br>

  <input type="hidden" name="payment_type" value="<%=payment_type%>"/>
 
<input type="submit" Value="confirm"/>



</body>
</html>