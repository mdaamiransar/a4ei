<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="model.*"%>
      <%@page import="bean.*"%>
    <%@page import="java.sql.*,db.*"%>
    <%@page import="java.util.Iterator"%>
     <%@page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <%try
{
 	String category_id=request.getParameter("category_id");
 	System.out.println("Category page product name issss"+category_id);
 	
 	Connection con=Db.Condb();
 	String sql="select p.PRODUCT_ID,p.CATEGORY_ID,p.SUBCATEGORY_ID,p.BRAND_ID, "
			+"p.PRODUCT_NAME,p.SHORT_DESCRIPTION,p.DETAILED_DESCRIPTION,p.PRODUCT_KEYWORDS, "
			+"p.SUPPLIER_ID,p.SALES_PRICE,p.MSRP,p.DISCOUNTS,p.WEIGHT,p.PRODUCT_STATUS, "
			+"p.CASH_ON_DELIVERY,p.WARRENTY,p.SHIPPING_COST,p.REPLACEMENT_WARRENTY,p.PRODUCT_UPDATED,b.BRAND_NAME from products p inner join brand b on p.BRAND_ID=b.BRAND_ID where p.BRAND_ID=?";
			
 	PreparedStatement ps=con.prepareStatement(sql);
 	ps.setString(1,category_id);
 	ResultSet rs=ps.executeQuery();
 	int cnt=0;
 	while(rs.next())
 	{
     %>
     <table ><tr><th>PRODUCT_NAME</th><th>BRAND_NAME</th><th>MSRP</th>
<th>SALES_PRICE</th><th>SUPPLIER_ID</th><th>PRODUCT_STATUS</th><th>SHIPPING_COST</th><th>PRODUCT_UPDATED</th><th>image</th><th>Edit</th><th>Delete</th>
</tr>
<%cnt++;
System.out.println("product_name CAT"+rs.getString("PRODUCT_NAME"));
System.out.println("brand_name CAT "+rs.getString("BRAND_NAME"));
%>
     <tr>
     <td><%=rs.getString("PRODUCT_NAME") %></td>
     <td><%=rs.getString("BRAND_NAME") %></td>
      <td><%=rs.getString("MSRP") %></td>
     <td><%=rs.getString("SALES_PRICE") %></td>
      <td><%=rs.getString("SUPPLIER_ID") %></td>
     <td><%=rs.getString("PRODUCT_STATUS") %></td>
      <td><%=rs.getString("SHIPPING_COST") %></td>
     <td><%=rs.getString("PRODUCT_UPDATED") %></td>
     <%-- <td><div id="image<%=cnt%>"><img src="Product_Image?product_id=<%=rs.getString("PRODUCT_ID")%>&image_id=<%=rs.getInt("IMAGE_ID")%>" height="70" width="70"></img>
		</div>
		<% int count=Product_Modeldb.CountImageByProductId(rs.getString("PRODUCT_ID"));
		 int p=1;
		 Connection con1=Db.Condb();
		 String sql1="Select IMAGE_ID from image where  PRODUCT_ID=? and IMAGE_ID!=?";
		 PreparedStatement ps1=con1.prepareStatement(sql1);
		 ps1.setString(1,rs.getString("PRODUCT_ID"));
		 ps1.setInt(2,rs.getInt("IMAGE_ID"));
		 ResultSet rs1=ps1.executeQuery();
		 while(rs1.next())
		 {
		  int IMAGE_ID=rs1.getInt("IMAGE_ID");
		  %><a href="#" onclick="change_image('<%=rs.getString("PRODUCT_ID")%>','<%=IMAGE_ID%>',<%=cnt%>)"><%=p%></a>
		  <% p++; }%>
		  <a href="#" onclick="change_image('<%=rs.getString("PRODUCT_ID")%>','<%=rs.getInt("IMAGE_ID")%>',<%=cnt%>)"><%=p%></a>
		  </td>
		 --%>
		 <% Connection con1=Db.Condb();
		 String sql1="Select IMAGE_ID from image where  PRODUCT_ID=? ";
		 PreparedStatement ps1=con1.prepareStatement(sql1);
		 ps1.setString(1,rs.getString("PRODUCT_ID"));
		 ResultSet rs1=ps1.executeQuery();
		 if(rs1.next()){ int image_id=rs1.getInt(1);
		  System.out.println("in main page 1st "+image_id);%>
		 <td><div id="image<%=cnt%>"><img src="Product_Image?product_id=<%=rs.getString("PRODUCT_ID")%>&image_id=<%=image_id%>" height="70" width="70"></img>
		</div>
		<% int count=Product_Modeldb.CountImageByProductId(rs.getInt("PRODUCT_ID"));
		 int p=1;
		
		 String sql2="Select IMAGE_ID from image where  PRODUCT_ID=? and IMAGE_ID!=?";
		 PreparedStatement ps2=con1.prepareStatement(sql2);
		 ps2.setInt(1,rs.getInt("PRODUCT_ID"));
		 ps2.setInt(2,image_id);
		 ResultSet rs2=ps2.executeQuery();
		 while(rs2.next())
		 {
		  int image_id1=rs2.getInt(1);
		  System.out.println("in main page other"+image_id1);
		  %><a href="#" onclick="change_image(<%=rs.getString("PRODUCT_ID")%>,<%=image_id1%>,<%=cnt%>)"><%=p%></a>
		  <% p++; }%>
		  <a href="#" onclick="change_image(<%=rs.getString("PRODUCT_ID")%>,<%=image_id%>,<%=cnt%>)"><%=p%></a>
		  </td><%} %>
     
		<td>
		<a href="Edit1.jsp?pid=<%=rs.getString("PRODUCT_ID")%>" >Edit</a><hr></td>
		<td><a href="Delete.jsp?pid=<%=rs.getString("PRODUCT_ID")%>">Delete</a><hr>
		</td>
	   </tr>
    
     
     
     <% 
	}
}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}%>
		</table> 

</body>
</html>