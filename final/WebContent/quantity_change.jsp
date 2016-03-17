<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="db.*"%>
     <%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
 int Product_Id=Integer.parseInt(request.getParameter("Product_Id"));
int quantity=Integer.parseInt(request.getParameter("quantity")); 
// int Product_Id=1;
//int quantity=5;
 System.out.println("Product_Id "+Product_Id);
  String sql1="Select QUANTITY from color where PRODUCT_ID=?";
  Connection con=Db.Condb();

PreparedStatement ps1=con.prepareStatement(sql1);
ps1.setInt(1,Product_Id);
ResultSet rs=ps1.executeQuery();
if(rs.next())
                    {   int quantity_db=rs.getInt(1);
                    System.out.println("quantity_db "+quantity_db);
                    if(quantity_db<quantity){
                    //String str="You can select maximum"+quantity_db;%>
                        <font color=red>
                         <input type="hidden" id="actual" name="actual" value="no" />
                         no
                        <!-- <input type="submit" value="submit"> -->
                        </font>

                   <% }else{%>
                	    <font color=red>
                         <input type="hidden" id="actual" name="actual" value="yes" />
                        <!-- <input type="submit" value="submit"> -->
                        yes
                        
                        </font>
                	   
                   <% }}

rs.close();
ps1.close();
con.close();  
%>
</body>
</html>