<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,db.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<select name="brand" onchange="product_show(this.value)">

<option selected="selected">select brand</option>
<% String subcategory_id=request.getParameter("q");
   String sql="Select BRAND_ID,BRAND_NAME from brand where SUBCATEGORY_ID=?";
   Connection con=Db.Condb();
   
   PreparedStatement ps=con.prepareStatement(sql);
   ps.setString(1,subcategory_id);
   ResultSet rs=ps.executeQuery();
   while(rs.next())
   {
	   String name=rs.getString("BRAND_NAME");%>
	 <option value="<%=rs.getString("BRAND_ID")%>"><%=name%></option> 
<%} %>
</select>

</body>
</html>