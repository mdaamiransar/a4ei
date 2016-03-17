<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,db.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<select name="products" onchange="product_details(this.value)" >
<option selected="selected">SELECT COMPANY</option>
<% String COMPANY_NAME=request.getParameter("category_id");
   String sql="Select SUPPLIER_ID from products where BRAND_ID=?";
   Connection con=Db.Condb();
   
   PreparedStatement ps=con.prepareStatement(sql);
   ps.setString(1,COMPANY_NAME);
   ResultSet rs=ps.executeQuery();
   if(rs.next())
   {
	   String name=rs.getString("SUPPLIER_ID");%>
	 <option value="<%=rs.getString("SUPPLIER_ID")%>"><%=name%></option> 
<%} %>
</select>

</body>
</html>