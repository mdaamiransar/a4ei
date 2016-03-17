<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,db.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body><% String id=request.getParameter("category_id"); 
         String id2=request.getParameter("id2");
          System.out.println("12345"+id2);%>
<select name="retailer" onchange="product_show(this.value,'<%=id%>')">
<option selected="selected">select Retailer</option>
<%
   String sql12="select SUPPLIER_ID from products where BRAND_ID=? and CATEGORY_ID=?";
   Connection con12=Db.Condb();
   PreparedStatement ps12=con12.prepareStatement(sql12);
   ps12.setString(1,id);
   ps12.setString(2,id2);
   
   ResultSet rs12=ps12.executeQuery();
 while(rs12.next())
    {%>
	 <% String name12=rs12.getString("SUPPLIER_ID");%>
	 <option value="<%=name12%>"><%=name12%></option> 
<% 
}
%>
 </select>

</body>
</html>