<%@page import="cart.Dao_Cart"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
   String email=request.getParameter("email");
   int product_id=Integer.parseInt(request.getParameter("product_id"));
 

   double SUB_TOTAL=Dao_Cart.Selct_SUBTotalPrice_buy(email, product_id);
  
   out.println(SUB_TOTAL);

%>
</body>
</html>