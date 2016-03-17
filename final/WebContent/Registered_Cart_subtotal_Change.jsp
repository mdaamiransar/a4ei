<%@page import="cart.Dao_Cart"%>
<%@page import="cart.Shopping_Cart"%>
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
   int product_id=Integer.parseInt(request.getParameter("id"));
   double sh_charge=Double.parseDouble(request.getParameter("sh_charge"));
   int cnt=Integer.parseInt(request.getParameter("cnt"));

   double total_price=Dao_Cart.Selct_TotalPrice(email,product_id);
  
    double sub_total=total_price+sh_charge;
    int i=Dao_Cart.Update_Sub_TotalPrice(email, product_id,sub_total);
    
 
   out.println(sub_total);
   
 
  

%>
</body>
</html>