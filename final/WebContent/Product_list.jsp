<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,db.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body><%String category_id=request.getParameter("category_id");
String id2=request.getParameter("id2"); %>
<select name="product" onchange="show_productdetails(this.value)">
<option selected="selected">select product</option>
<% 
   String sql="Select PRODUCT_ID,PRODUCT_NAME from products where SUPPLIER_ID=? and BRAND_ID=?";
   Connection con=Db.Condb();
   
   PreparedStatement ps=con.prepareStatement(sql);
   ps.setString(1,category_id);
   ps.setString(2, id2);
   ResultSet rs=ps.executeQuery();
   while(rs.next())
   {
	   String name=rs.getString("PRODUCT_NAME");
	   System.out.println("Product  Name is "+name);%>
	   
	 <option value="<%=rs.getString("PRODUCT_NAME")%>"><%=name%></option> 
<%} %>
</select>

</body>
</html>