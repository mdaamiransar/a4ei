<%@page import="db.Db"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,admin.* "%>
    <%@page import="bean.Product_bean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update product</title>
<style type="text/css">
h3{font-family: Calibri; font-size: 20pt; font-style: normal; font-weight: bold; color:"#000000";
text-align: center }
table{font-family: Gabriola; color:black; font-size: 13pt; font-style: normal;
text-align:certer; background-color: SlateBlue; border-collapse: collapse; border: 2px solid navy}
table.inner{border: 0px}
</style>
</head>

<body bgcolor="#B0B0B0">

<form action="Delete_Product" method="POST" enctype="multipart/form-data">
<h3>Delete Products</h3>


<% String Product_Id=request.getParameter("pid");
System.out.println("delete Product id is"+Product_Id);
Connection con=Db.Condb();
String sql="DELETE FROM products WHERE PRODUCT_ID=?";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1, Product_Id);
int i=ps.executeUpdate();
if(i==1)
{
	String msg="delete";
	response.sendRedirect("View products.jsp?msg="+msg);
}
else
{
	String msg="delete";
	response.sendRedirect("View products.jsp?msg="+msg);
}%>
</form>
</body>
</html>