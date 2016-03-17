<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="cart.Shopping_Cart"%>    
<%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
//out.println("hello");
     int Product_Id=Integer.parseInt(request.getParameter("id"));
     int Count=Integer.parseInt(request.getParameter("cnt"));
     Double sh_charge=Double.parseDouble(request.getParameter("sh_charge")); 
      
     
     ArrayList<Shopping_Cart> arr1=(ArrayList<Shopping_Cart>)session.getAttribute("cart_list"); 
    Shopping_Cart b=null;
    double subtotal=0;
     for(int i=0;i<arr1.size();i++) {  
  	   b=(Shopping_Cart)arr1.get(i);
  	   if(Product_Id==b.getProduct_id())
  	   {
  		 subtotal=b.getTotal_price()+sh_charge;
  		  b.setSubtotal(subtotal);
  		  arr1.set(i,b);
  	   }
  	   
  	   
     } 
     out.println(subtotal);
    
     
%>
</body>
</html>