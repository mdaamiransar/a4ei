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
   double price=Double.parseDouble(request.getParameter("price"));
   int quantity=Integer.parseInt(request.getParameter("quantity")); 
   int cnt=Integer.parseInt(request.getParameter("cnt"));
   
   /* ArrayList<TotalBean> ar=(ArrayList<TotalBean>)session.getAttribute("cc1"); */
  
   double total_price=price*quantity;
    Shopping_Cart bn=new Shopping_Cart();
   bn.setProduct_id(product_id);
   bn.setQuantity(quantity);
   bn.setPrice(price);
   bn.setEmail(email);
   
   bn.setTotal_price(total_price);
   
   out.println(bn.getTotal_price());
   
   int i=Dao_Cart.Update_Quantity_TotalPrice_buy(bn);
  

%>
</body>
</html>