<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,db.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<select name="color">
<option selected="selected">select color</option>
<% String PRODUCT_ID=request.getParameter("q");
   String sql1="Select COLOR_ID,COLOR from color where PRODUCT_ID=?";
   Connection con=Db.Condb();
   
   PreparedStatement ps1=con.prepareStatement(sql1);
   ps1.setString(1,PRODUCT_ID);
   ResultSet rs1=ps1.executeQuery();
   while(rs1.next())
   {
	   String name=rs1.getString("COLOR");%>
	 <option value="<%=rs1.getString("COLOR_ID")%>"><%=name%></option>  
<%} %>
</select>
</body>
</html>