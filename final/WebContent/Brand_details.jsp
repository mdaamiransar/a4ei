<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,db.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body><%String CATEGORY_ID=request.getParameter("category_id"); %>
<select name="brand" onchange="retailer_show(this.value,'<%=CATEGORY_ID%>')">
<option selected="selected" >SELECT BRAND</option>
<% 
   String sql="Select BRAND_NAME,BRAND_ID from brand where CATEGORY_ID=?";
   Connection con=Db.Condb();
   
   PreparedStatement ps=con.prepareStatement(sql);
   ps.setString(1,CATEGORY_ID);
   ResultSet rs=ps.executeQuery();
   while(rs.next())
   {
	   String name=rs.getString("BRAND_NAME");%>
	 <option value="<%=rs.getString("BRAND_ID")%>"><%=name%></option> 
<%} %>
</select>

</body>
</html>