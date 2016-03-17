
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
     Double price=Double.parseDouble(request.getParameter("price"));
     int Qty=Integer.parseInt(request.getParameter("quantity"));
     System.out.println(Product_Id+" "+Count+" "+price+" "+Qty);
     
     double total_price=Qty*price;
     out.println(total_price);   
     
     ArrayList<Shopping_Cart> arr1=(ArrayList<Shopping_Cart>)session.getAttribute("cart_list"); 
    Shopping_Cart b=null;
     for(int i=0;i<arr1.size();i++) {  
  	   b=(Shopping_Cart)arr1.get(i);
  	   if(Product_Id==b.getProduct_id())
  	   {
  		   b.setQuantity(Qty);
  		   b.setTotal_price(total_price);
  		   arr1.set(i,b);
  		  
  	   }
  	   
  	   
     }  
    
     
%>

</body>
</html>