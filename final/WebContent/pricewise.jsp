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


<% try
{
String id=request.getParameter("category_id");
String id2=request.getParameter("brand_name");

System.out.println("ssss"+id+"ppp"+id2);


   Connection con=Db.Condb();
    if(id.equals("low to high"))
   {
	/* String sql="select * from products ORDER BY SALES_PRICE ASC";
	 */  
	 String sql="select p.PRODUCT_ID,p.CATEGORY_ID,p.SUBCATEGORY_ID,p.BRAND_ID, "
				+"p.PRODUCT_NAME,p.SHORT_DESCRIPTION,p.DETAILED_DESCRIPTION,p.PRODUCT_KEYWORDS, "
				+"p.SUPPLIER_ID,p.SALES_PRICE,p.MSRP,p.DISCOUNTS,p.WEIGHT,p.PRODUCT_STATUS, "
				+"p.CASH_ON_DELIVERY,p.WARRENTY,p.SHIPPING_COST,p.REPLACEMENT_WARRENTY,p.PRODUCT_UPDATED,b.BRAND_NAME from products p inner join brand b on p.BRAND_ID=b.BRAND_ID  WHERE P.BRAND_ID=? ORDER BY SALES_PRICE ASC ";
		
	  PreparedStatement ps=con.prepareStatement(sql);
	  ps.setString(1,id2);
	  ResultSet rs=ps.executeQuery();
	  
	  int cnt=0;

    while(rs.next())
    {%>
    	<table ><tr><th></th><th>PRODUCT_NAME</th><th>BRAND_NAME</th><th>MSRP</th>
<th>SALES_PRICE</th><th>SUPPLIER_ID</th><th>PRODUCT_STATUS</th><th>SHIPPING_COST</th><th>PRODUCT_UPDATED</th><th>image</th><th>Edit</th><th>Delete</th>
</tr>
    	
    	<tr><td></td>
     <td><%=rs.getString("PRODUCT_NAME") %></td>
     <td><%=rs.getString("BRAND_NAME") %></td>
      <td><%=rs.getString("MSRP") %></td>
     <td><%=rs.getString("SALES_PRICE") %></td>
      <td><%=rs.getString("SUPPLIER_ID") %></td>
     <td><%=rs.getString("PRODUCT_STATUS") %></td>
      <td><%=rs.getString("SHIPPING_COST") %></td>
     <td><%=rs.getString("PRODUCT_UPDATED") %></td>
     
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
     
		<%
		  HttpSession sees1=request.getSession();
		  String name1=(String)sees1.getAttribute("Username");
		  System.out.println("name"+name1);

		  Connection con33=Db.Condb();
		  String sql33="Select USER_NAME from admin_info where USER_NAME=?";
		  PreparedStatement ps33=con33.prepareStatement(sql33);
		  ps33.setString(1,name1);
		  ResultSet rs33=ps33.executeQuery();

		  if(rs33.next())
		  {

		  	String USER_NAME=rs33.getString("USER_NAME");
		  	System.out.println("USER_NAME"+USER_NAME);
		  	
		  	if(USER_NAME.equals(USER_NAME)){%>
		  		<td>
				<a href="Edit1.jsp?pid=<%=rs.getString("PRODUCT_ID")%>" >Edit </a><hr></td>
				<td><a href="Delete.jsp?pid=<%=rs.getString("PRODUCT_ID")%>">Delete</a><hr>
				</td>
			   </tr>
		  <% 	}
		  }%>
		   
		   <% HttpSession sees=request.getSession();
 String name=(String)sees.getAttribute("Username");
 System.out.println("name"+name);
 
 Connection con44=Db.Condb();
 
 
 String sql44="Select Edit,Delete1 from sub_admin_power where USER_NAME=?";
 PreparedStatement ps44=con44.prepareStatement(sql44);
 ps44.setString(1,name);
 ResultSet rs44=ps44.executeQuery();

 if(rs44.next())
 {

 	String edit=rs44.getString("Edit");
 	System.out.println("edit"+edit);
 	String delete=rs44.getString("Delete1");
 	System.out.println("Delete1"+delete);

 	%>

    <%if(edit.equals("yes") && delete.equals("yes")){ %>
    
		<td>
		<a href="S.Edit.jsp?pid=<%=rs.getString("PRODUCT_ID")%>" >Edit </a><hr></td>
		<td><a href="Delete.jsp?pid=<%=rs.getString("PRODUCT_ID")%>">Delete</a><hr>
		</td>
	   </tr><%}%>
    
   <%  if(edit.equals("no") && delete.equals("yes")){%>
    	<td>
		no permission </td>
		<td><a href="Delete.jsp?pid=<%=rs.getString("PRODUCT_ID")%>">Delete</a><hr>
		</td>
	   </tr>
    	
   <%  }%>
    
   <%  if(edit.equals("yes") && delete.equals("no")){%>
	   <td>
		<a href="S.Edit.jsp?pid=<%=rs.getString("PRODUCT_ID")%>" >Edit </a><hr></td>
		<td>no permission
		</td>
	   </tr>
    	
   <%  }%>
    
   <%  if(edit.equals("no") && delete.equals("no")){%>
	   <td>
		no permission</td>
		<td>no permission
		</td>
	   </tr>
		   
	  <%  } %>
    
   <%    }
     
      
	}%>
		   
</table>
   <% }%>
    	
    	
    	
  <% 
    
    if(id.equals("high to low"))
    {
 	/* String sql="select * from products ORDER BY SALES_PRICE ASC";
 	 */  
 	 String sql="select p.PRODUCT_ID,p.CATEGORY_ID,p.SUBCATEGORY_ID,p.BRAND_ID, "
 				+"p.PRODUCT_NAME,p.SHORT_DESCRIPTION,p.DETAILED_DESCRIPTION,p.PRODUCT_KEYWORDS, "
 				+"p.SUPPLIER_ID,p.SALES_PRICE,p.MSRP,p.DISCOUNTS,p.WEIGHT,p.PRODUCT_STATUS, "
 				+"p.CASH_ON_DELIVERY,p.WARRENTY,p.SHIPPING_COST,p.REPLACEMENT_WARRENTY,p.PRODUCT_UPDATED,b.BRAND_NAME from products p inner join brand b on p.BRAND_ID=b.BRAND_ID  WHERE P.BRAND_ID=? ORDER BY SALES_PRICE DESC";
 		
 	  PreparedStatement ps=con.prepareStatement(sql);
 	  ps.setString(1,id2);
 	  ResultSet rs=ps.executeQuery();
 	  
 	  int cnt=0;

     while(rs.next())
     {%>
     	<table ><tr><th></th><th>PRODUCT_NAME</th><th>BRAND_NAME</th><th>MSRP</th>
 <th>SALES_PRICE</th><th>SUPPLIER_ID</th><th>PRODUCT_STATUS</th><th>SHIPPING_COST</th><th>PRODUCT_UPDATED</th><th>image</th><th>Edit</th><th>Delete</th>
 </tr>
     	
     	<tr><td></td>
      <td><%=rs.getString("PRODUCT_NAME") %></td>
      <td><%=rs.getString("BRAND_NAME") %></td>
       <td><%=rs.getString("MSRP") %></td>
      <td><%=rs.getString("SALES_PRICE") %></td>
       <td><%=rs.getString("SUPPLIER_ID") %></td>
      <td><%=rs.getString("PRODUCT_STATUS") %></td>
       <td><%=rs.getString("SHIPPING_COST") %></td>
      <td><%=rs.getString("PRODUCT_UPDATED") %></td>
      
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
      			<%
		  HttpSession sees1=request.getSession();
		  String name1=(String)sees1.getAttribute("Username");
		  System.out.println("name"+name1);

		  Connection con33=Db.Condb();
		  String sql33="Select USER_NAME from admin_info where USER_NAME=?";
		  PreparedStatement ps33=con33.prepareStatement(sql33);
		  ps33.setString(1,name1);
		  ResultSet rs33=ps33.executeQuery();

		  if(rs33.next())
		  {

		  	String USER_NAME=rs33.getString("USER_NAME");
		  	System.out.println("USER_NAME"+USER_NAME);
		  	
		  	if(USER_NAME.equals(USER_NAME)){%>
		  		<td>
				<a href="Edit1.jsp?pid=<%=rs.getString("PRODUCT_ID")%>" >Edit </a><hr></td>
				<td><a href="Delete.jsp?pid=<%=rs.getString("PRODUCT_ID")%>">Delete</a><hr>
				</td>
			   </tr>
		  <% 	}
		  }%>
		   <% HttpSession sees=request.getSession();
 String name=(String)sees.getAttribute("Username");
 System.out.println("name"+name);
 
 Connection con44=Db.Condb();
 
 
 String sql44="Select Edit,Delete1 from sub_admin_power where USER_NAME=?";
 PreparedStatement ps44=con44.prepareStatement(sql44);
 ps44.setString(1,name);
 ResultSet rs44=ps44.executeQuery();

 if(rs44.next())
 {

 	String edit=rs44.getString("Edit");
 	System.out.println("email"+edit);
 	String delete=rs44.getString("Delete1");
 	System.out.println("Delete1n"+delete);

 	%>

    <%if(edit.equals("yes") && delete.equals("yes")){ %>
    
		<td>
		<a href="S.Edit.jsp?pid=<%=rs.getString("PRODUCT_ID")%>" >Edit </a><hr></td>
		<td><a href="Delete.jsp?pid=<%=rs.getString("PRODUCT_ID")%>">Delete</a><hr>
		</td>
	   </tr><%}
      if(edit.equals("no") && delete.equals("yes")){%>
    	<td>
		no permission </td>
		<td><a href="Delete.jsp?pid=<%=rs.getString("PRODUCT_ID")%>">Delete</a><hr>
		</td>
	   </tr>
    	
  <%   }%>
    
    <%  if(edit.equals("yes") && delete.equals("no")){%>
	   <td>
		<a href="S.Edit.jsp?pid=<%=rs.getString("PRODUCT_ID")%>" >Edit </a><hr></td>
		<td>no permission
		</td>
	   </tr>
    	
   <%  }%>
    
   <%  if(edit.equals("no") && delete.equals("no")){%>
	   <td>
		no permission</td>
		<td>no permission
		</td>
	   </tr>
		   
	  <%  } %>
    
   <%    }
     
      
	}%> </table>
    <%  }
     	
     	
     	
    %>
  
    
    

<% }
		catch(Exception ex)
		{
			ex.printStackTrace();
		}%>




</body>
</html>