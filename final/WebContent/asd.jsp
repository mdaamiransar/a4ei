<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,db.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<% String COMPANY_NAME=request.getParameter("category_id");
   String sql="Select PRODUCT_NAME,SUPPLIER_ID,SALES_PRICE from products where SUPPLIER_ID=?";
   Connection con=Db.Condb();
   
   PreparedStatement ps=con.prepareStatement(sql);
   ps.setString(1,COMPANY_NAME);
   ResultSet rs=ps.executeQuery();
   while(rs.next())
   {%>
	 <table border="0">  
	<tr>
	<th> Product Name: </th>
	<th> Company Name: </th>
	<th> Sales Price: </th>
	</tr>
	<tr>
	<td> <%=rs.getString("PRODUCT_NAME")%></td>
	<td> <%=rs.getString("SUPPLIER_ID")%></td>
	<td> <%=rs.getString("SALES_PRICE")%></td>
	</tr>
	 
	 </table>
	 <%  } %>



</body>
</html>