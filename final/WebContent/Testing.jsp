<%@page import="java.sql.*,db.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="Testing" method="get">
 
<table  >
  <tr>
  <%
  
    String sql="SELECT * FROM products";
  
  Connection con=Db.Condb();
  
  PreparedStatement ps=con.prepareStatement(sql);
  ResultSet rs=ps.executeQuery();     
                         
   while(rs.next())
    {
                         
%>  
  <td  >
                             
  <div style="background: none repeat scroll 0 0 ghostwhite; height: 150px; width: 150px;">
  <img src="displayServlet?id=<%=rs.getInt(1) %>" height="150px" width="150px" alt="Product Image">
  </div>
                      
           <br>
           <font face="Arial" size="1" color="black">
           <b><%=rs.getString("Prod_Name")%></b> 
           </font>
                             
    <br>
    <font face="Arial" size="1" color="red"><%=rs.getString("Price")%></font>
    <br><a  target="_self" rel="nofollow">
    <font face="Arial" size="2"><b>ADD TO CART</b></font>
    </a>
    </td>
                             
  <%
     }
      rs.close(); 
      con.close();
      
  %>
 </tr>
 </table>
 </form>
</body>
</html>