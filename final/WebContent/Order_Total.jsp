
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
<% ArrayList<Shopping_Cart> arr1=(ArrayList<Shopping_Cart>)session.getAttribute("cart_list"); 
 double total_price=0.0;

 Iterator<Shopping_Cart> it=arr1.iterator();
 while(it.hasNext())
{
	 Shopping_Cart bn=it.next();
	 total_price+=bn.getSubtotal();
}  
 /* double total_price=0;
     for(int i=0;i<arr1.size();i++) {  
    	 Cart_Shopping  b=(Cart_Shopping)arr1.get(i);
    	 total_price+=b.getTotal_Price();
  	 
     } */%>
 <%=total_price%>
</body>
</html>