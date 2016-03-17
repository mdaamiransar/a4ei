<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="model.*"%>
      <%@page import="bean.*"%>
    <%@page import="java.sql.*,db.*"%>
    <%@page import="java.util.Iterator"%>
     <%@page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<table><tr><th>ORDER_ID</th><th>ADDRESS</th><th>ORDER_AMOUNT</th><th>ORDER_DATE</th><th>PAYMENT_TYPE</th><th>STATUS</th>
 <th>SHIPPING_METHOD</th><th>DISCOUNTS</th><th>Email</th><th>NAME</th><th>SUPPLIER_ID</th></tr>
<tr></table>
<%

try
{
String id=request.getParameter("category_id");
System.out.println("id"+id);
Connection con=Db.Condb();
String sql="select o.ORDER_DETAILS_ID,o.ADDRESS,o.ORDER_AMOUNT,o.ORDER_DATE,o.PAYMENT_TYPE,e.ORDER_STATUS_NAME,o.SHIPPING_METHOD,o.ODER_DISCOUNTS,o.email,c.NAME,c.SUPPLIER_ID from order_details o  inner join order_status e on o.ORDER_STATUS_ID=e.ORDER_STATUS_ID  inner join order_cart c on o.ORDER_DETAILS_ID=c.ORDER_ID where c.SUPPLIER_ID=?";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1, id);
ResultSet rs=ps.executeQuery();

while(rs.next())

{%>
    <table class="table table-bordered table-hover" ><tr>


         <td><%=rs.getInt("ORDER_DETAILS_ID") %></td>
		<td><%=rs.getString("ADDRESS") %></td>
		<td><%=rs.getString("ORDER_AMOUNT") %></td>
		<td><%=rs.getString("ORDER_DATE") %></td>
		<td><%=rs.getString("PAYMENT_TYPE") %></td>
		<td><%=rs.getString("ORDER_STATUS_NAME") %></td>
		<td><%=rs.getString("SHIPPING_METHOD") %></td>
		<td><%=rs.getString("ODER_DISCOUNTS") %></td>
		<td><%=rs.getString("email") %></td>
		<td><%=rs.getString("NAME") %></td>
		<td><%=rs.getString("SUPPLIER_ID") %></td>
		
		</tr>
</table>
<% }

}
catch(Exception ex)
{
	ex.printStackTrace();
}%>




</body>
</html>