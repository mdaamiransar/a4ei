<%@page import="java.sql.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,db.*,admin.*"%>
    <%@page import="bean.search_order_bean"%>
    <%@page import="model.search_order_modeldb"%>
    <%@page import="java.util.Iterator"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="Css/style.default.css" type="text/css" />
<link rel="stylesheet" href="Css/responsive-tables.css">
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="js/jquery-migrate-1.1.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.9.2.min.js"></script>
<script type="text/javascript" src="js/modernizr.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.cookie.js"></script>
<script type="text/javascript" src="js/jquery.uniform.min.js"></script>
<script type="text/javascript" src="js/flot/jquery.flot.min.js"></script>
<script type="text/javascript" src="js/flot/jquery.flot.resize.min.js"></script>
<script type="text/javascript" src="js/responsive-tables.js"></script>
<script type="text/javascript" src="js/custom.js"></script>
<style type="text/css">

table, th, td {
    border: 2px solid black;
    width: 60%;
    font-size: 15px;
}

#apDiv1 {
	position: absolute;
	left: 262px;
	top: 115px;
	width: 80%;
	height: 160px;
	z-index: 1;
	alignment-adjust: central;
} 
</style>

</head>

<body>

<div class="mainwrapper">

    <div class="header">
        <div class="logo"><a class="dropdown-toggle" data-toggle="dropdown" data-target="#"><a href="Dashboard.jsp"><img src="Images/Sub-Admin (2).png" alt="ad" width="163" height="42" /></a></a></div>
        <div class="headerinner">
            <ul class="headmenu">
                <li class="odd">
                    <!-- <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <span class="count">4</span>
                        <span class="head-icon head-message"></span>
                        <span class="headmenu-label">Messages</span>                    </a>
                    <ul class="dropdown-menu">
                        <li class="nav-header">Messages</li>
                        <li><a href=""><span class="icon-envelope"></span> New message from <strong>Jack</strong> <small class="muted"> - 19 hours ago</small></a></li>
                        <li><a href=""><span class="icon-envelope"></span> New message from <strong>Daniel</strong> <small class="muted"> - 2 days ago</small></a></li>
                        <li><a href=""><span class="icon-envelope"></span> New message from <strong>Jane</strong> <small class="muted"> - 3 days ago</small></a></li>
                        <li><a href=""><span class="icon-envelope"></span> New message from <strong>Tanya</strong> <small class="muted"> - 1 week ago</small></a></li>
                        <li><a href=""><span class="icon-envelope"></span> New message from <strong>Lee</strong> <small class="muted"> - 1 week ago</small></a></li>
                        <li class="viewmore"><a href="Messages.jsp">View More Message</a></li>
                    </ul>
                </li>
                <li>
                    <a class="dropdown-toggle" data-toggle="dropdown" data-target="#">
                    <span class="count">10</span>
                    <span class="head-icon head-users"></span>
                    <span class="headmenu-label">New Users</span>                    </a>
                    <ul class="dropdown-menu newusers">
                        <li class="nav-header">New Users</li>
                        <li>
                            <a href="">
                                <img src="images/photos/thumb1.png" alt="" class="userthumb" />
                                <strong>Draniem Daamul</strong>
                                <small>April 20, 2013</small>                            </a>                        </li>
                        <li>
                            <a href="">
                                <img src="images/photos/thumb2.png" alt="" class="userthumb" />
                                <strong>Shamcey Sindilmaca</strong>
                                <small>April 19, 2013</small>                            </a>                        </li>
                        <li>
                            <a href="">
                                <img src="images/photos/thumb3.png" alt="" class="userthumb" />
                                <strong>Nusja Paul Nawancali</strong>
                                <small>April 19, 2013</small>                            </a>                        </li>
                        <li>
                            <a href="">
                                <img src="images/photos/thumb4.png" alt="" class="userthumb" />
                                <strong>Rose Cerona</strong>
                                <small>April 18, 2013</small>                            </a>                        </li>
                        <li>
                            <a href="">
                                <img src="images/photos/thumb5.png" alt="" class="userthumb" />
                                <strong>John Doe</strong>
                                <small>April 16, 2013</small>                            </a>                        </li>
                    </ul>
                </li>
                <li class="odd">
                    <a class="dropdown-toggle" data-toggle="dropdown" data-target="#">
                    <span class="count">1</span>
                    <span class="head-icon head-bar"></span>
                    <span class="headmenu-label">Statistics</span>                    </a>
                    <ul class="dropdown-menu">
                        <li class="nav-header">Statistics</li>
                        <li><a href=""><span class="icon-align-left"></span> New Reports from <strong>Products</strong> <small class="muted"> - 19 hours ago</small></a></li>
                        <li><a href=""><span class="icon-align-left"></span> New Statistics from <strong>Users</strong> <small class="muted"> - 2 days ago</small></a></li>
                        <li><a href=""><span class="icon-align-left"></span> New Statistics from <strong>Comments</strong> <small class="muted"> - 3 days ago</small></a></li>
                        <li><a href=""><span class="icon-align-left"></span> Most Popular in <strong>Products</strong> <small class="muted"> - 1 week ago</small></a></li>
                        <li><a href=""><span class="icon-align-left"></span> Most Viewed in <strong>Blog</strong> <small class="muted"> - 1 week ago</small></a></li>
                        <li class="viewmore"><a href="charts.html">View More Statistics</a></li>
                    </ul>
     -->
                <li class="right">
                    <div class="userloggedinfo">
                     <%
			                HttpSession sees=request.getSession();
                            String name=(String)sees.getAttribute("Username");
                            
                            Connection con=Db.Condb();
                            String sql="Select EMAIL_ID from sub_admin_info where USER_NAME=?";
                            PreparedStatement ps=con.prepareStatement(sql);
                            ps.setString(1,name);
                            ResultSet rs=ps.executeQuery();

                            if(rs.next())
                            {

                            	String email=rs.getString("EMAIL_ID");
                            	System.out.println("email"+email);
                            	
                           
		         %><%-- 
                        <img src="subadmin_image?id=<%=email%>" height="70" width="70"></img>
                         --%><div class="userinfo">
                        
                            <h5> <%=name %> </h5> 
                            <%} %>
                            <ul>
                                <li><a href="S.Edit Profile.jsp">Edit Profile</a></li>
                               <!--  <li><a href="">Account Settings</a></li> -->
                                <li><a href="SubAdmin_Login.jsp">Sign Out</a></li>
                            </ul>
                        </div>
                    </div>
                </li>
            </ul>
            <!--headmenu-->
      </div>
    </div>
    
    <div class="leftpanel">
        
        <div class="leftmenu">        
            <ul class="nav nav-tabs nav-stacked">
            	<li class="nav-header">Navigation</li>
                <li><a href="Sub_Admin.jsp"><span class="iconfa-laptop"></span> Dashboard</a></li>
				 <li class="dropdown"><a href=""><span class="iconfa-th-list"></span> Categories </a>
                	<ul>
                    	<li><a href="S.Add categoty.jsp"> Add Category</a></li>
						<li><a href="S.Add Sub Category.jsp"> Add Subcategory </a></li>
						<li><a href="S.Add Brand.jsp"> Add Brand </a></li>
                     </ul>
			     </li>
				 <li class="dropdown"><a href=""><span class="iconfa-th-list"></span> Manage Products</a>
                	<ul>
                    	<li><a href="S.Products.jsp">Add Products</a></li>
                        <li><a href="S.View Products.jsp">View Products</a></li>
                        <li><a href="S.low_stock_product.jsp">Low Stock Products</a></li>
                     </ul>
			     </li>
				 <li class="dropdown"><a href=""><span class="iconfa-th-list"></span> Orders </a>
                	<ul>
                    	<li><a href="S.All Order.jsp"> List All Orders </a></li>
                        <li><a href="S.pending_order.jsp"> Pending Orders </a></li>
                        <li><a href="S.complete_order.jsp"> Complete/Delevered Orders </a></li>
                         <li><a href="S.Search Orders.jsp"> Search Orders </a></li>
						<li><a href="S.Return_View.jsp"> Returns </a></li>
                     </ul>
			     </li>
				
               <!--  <li><a href="Buttons.jsp"><span class="iconfa-hand-up"></span> Buttons &amp; Icons</a></li> -->
               
                
              <!--   <li class="dropdown active"><a href=""><span class="iconfa-th-list"></span> Manage User</a>
                	<ul>
                    	<li><a href="customer_details.jsp">Customer Details</a></li>
                    	<li><a href="Retailer_details.jsp">Retailer Details</a></li>
                        
                    </ul>
                </li> -->

                
               
             <!--    <li><a href="Messages.jsp"><span class="iconfa-envelope"></span> Messages</a></li> -->
                <li><a href="S.Calender.jsp"><span class="iconfa-calendar"></span> Calendar</a></li>
                <li class="dropdown"><a href=""><span class="iconfa-book"></span> Other Pages</a>
                	<ul>
                    	
                        <li><a href="S.Edit Profile.jsp">Edit Profile</a></li>
                       <!--  <li><a href="insert.jsp">Insert</a></li> --> 
                        
                    </ul>
                </li>
                <li class="dropdown"><a href=""><span class="iconfa-th-list"></span> Reports</a>
                	<ul>
                	    <li ><a href="S.User Review.jsp">User Review</a> 
                    	<!-- <li class="dropdown"><a href="">Sales Report</a>
                        <ul>
                            <li><a href="">Items Sold</a></li>
                            <li><a href="">Sales Total</a></li> -->
                        </ul>
                     </li>
                    </ul>
                </li>
            </ul>
        </div><!--leftmenu-->
        
    </div><!-- leftpanel -->
    
    <div class="rightpanel">
        
        <ul class="breadcrumbs">
            <li><a href="Dashboard.jsp"><i class="iconfa-home"></i></a> <span class="separator"></span></li>
            <li>Dashboard</li>
        </ul>
        
        <!--pageheader-->
        <!--maincontentinner-->
    </div>
    <!--maincontent-->
        
    </div ><!--rightpanel-->
  <div id= "apDiv1" style="margin-left:40px ; margin-top: 50px ">
  <h6 align="center"  class="widgettitle" style="margin-left:-20px; width: 1060px">ALL ORDER </h6><br>
   <%try
{
ArrayList<search_order_bean> ar=search_order_modeldb.showorderdetails();
if(ar!=null)
{%><div><table class="table responsive" style="margin-left: -20px;"><tr><th></th><th>ORDER_ID</th><th>ADDRESS</th><th>ORDER_AMOUNT</th><th>ORDER_DATE</th><th>PAYMENT_TYPE</th><th>ORDER_STATUS</th>
 <th>SHIPPING_METHOD</th><th>ODER_DISCOUNTS</th><th>Email</th><th>name</th><th>Supplier_id</th>
  </tr>
	<% Iterator<search_order_bean> it=ar.iterator();
	
	while(it.hasNext())
	{
		search_order_bean ob=it.next();
		
		%>
		<tr>
		<td></td>
		<td><%=ob.getORDER_DETAILS_ID()%></td>
		<td><%=ob.getADDRESS()%></td>
		<td><%=ob.getORDER_AMOUNT()%></td>
		<td><%=ob.getORDER_DATE()%></td>
		<td><%=ob.getPAYMENT_TYPE_ID()%></td>
		<td><%=ob.getORDER_STATUS_ID()%></td>
		<td><%=ob.getSHIPPING_METHOD()%></td>
		<td><%=ob.getODER_DISCOUNTS()%></td>
		<td><%=ob.getEmail()%></td>
		<td><%=ob.getName()%></td>
		<td><%=ob.getSupplier_id()%></td>
		
		</tr>
		
		

<% }
		}
}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}%>
		</table></div> </div>
</body>
   
   
</div><!--mainwrapper-->

</body>
</html>
