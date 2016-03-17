<%@page import="db.Db"%>
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
String user_name=request.getParameter("ver");
/* System.out.println("category "+category_name); */
  String sql1="Select * from customer_info where USER_NAME=?";
  Connection con=Db.Condb();

PreparedStatement ps1=con.prepareStatement(sql1);
ps1.setString(1,user_name);
ResultSet rs=ps1.executeQuery();
if(rs.next())
                    {   %>
                        <font color=red>
                         <input type="hidden" id="actual" name="actual" value="taken">
                        <!-- <input type="submit" value="submit"> -->
                        Username already exist
                       
                        </font>

                   <% }else {%>
                        <font color=green>
                        <input type="hidden" id="actual" name="actual" value="available">
                       <!--   <input type="submit" value="submit"> -->
                      Username Available
                        </font>
                       
                       
                       
                       
                   <% }%>
                    
     <%               
rs.close();
ps1.close();
con.close();  
%>

</body>
</html>