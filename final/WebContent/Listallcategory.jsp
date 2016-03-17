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
<title>all category</title>
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
	left: 350px;
	top: 150px;
	width: 80%;
	height: 160px;
	
	alignment-adjust: central;
} 
</style>

</head>

<body>

<div class="mainwrapper">

    <div class="header">
        <div class="logo"><a class="dropdown-toggle" data-toggle="dropdown" data-target="#"><a href="Dashboard.jsp"><img src="Images/ad.jpg" alt="ad" width="163" height="42" /></a></a></div>
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
                            
                            Connection con9=Db.Condb();
                            String sql9="Select EMAIL_ID from admin_info where USER_NAME=?";
                            PreparedStatement ps9=con9.prepareStatement(sql9);
                            ps9.setString(1,name);
                            ResultSet rs9=ps9.executeQuery();

                            if(rs9.next())
                            {

                            	String email=rs9.getString("EMAIL_ID");
                            	System.out.println("email"+email);
                            	
                           
		         %>
                        <img src="admin_image?id=<%=email%>" height="70" width="70"></img>
                        <div class="userinfo">
                        
                            <h5> <%=name %> </h5> 
                            <%} %> 
                            <ul>
                                <li><a href="EditProfile.jsp">Edit Profile</a></li>
                               <!--  <li><a href="">Account Settings</a></li> -->
                                <li><a href="Admin_Login.jsp">Sign Out</a></li>
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
                <li><a href="Dashboard.jsp"><span class="iconfa-laptop"></span> Dashboard</a></li>
				 <li class="dropdown"><a href=""><span class="iconfa-th-list"></span> Categories </a>
                	<ul>
                    	<li><a href="Category1.jsp"> Add Category</a></li>
                    	<li><a href="Listallcategory.jsp"> Show Category</a></li>
                        <li><a href="SubCategory1.jsp"> Add Subcategory </a></li>
                        <li><a href="Listallsub_cat.jsp"> Show SubCategory</a></li>
                        <li><a href="Brand1.jsp"> Add Brand </a></li>
                        <li><a href="Listallbrand.jsp"> Show Brand</a></li>
						
                   </ul>
			     </li>
				 <li class="dropdown"><a href=""><span class="iconfa-th-list"></span> Manage Products</a>
                	<ul>
                    	<li><a href="products1.jsp">Add Products</a></li>
                        <li><a href="View products.jsp">View Products</a></li>
                        <li><a href="Low_stock.jsp">Low Stock Products</a></li>
                     </ul>
			     </li>
				 <li class="dropdown"><a href=""><span class="iconfa-th-list"></span> Orders </a>
                	<ul>
                    	<li><a href="all_order.jsp"> List All Orders </a></li>
                        <li><a href="pending_order.jsp"> Pending Orders </a></li>
                        <li><a href="complete_order.jsp"> Complete/Delevered Orders </a></li>
                         <li><a href="Search Orders.jsp"> Search Orders </a></li>
						<li><a href="Return_View.jsp"> Returns </a></li>
                     </ul>
			     </li>
				
               <!--  <li><a href="Buttons.jsp"><span class="iconfa-hand-up"></span> Buttons &amp; Icons</a></li> -->
               
                
                <li class="dropdown active"><a href=""><span class="iconfa-th-list"></span> Manage User</a>
                	<ul>
                    	<li><a href="customer_details.jsp">Customer Details</a></li>
                    	<li><a href="Retailer_details.jsp">Retailer Details</a></li>
                    	<li><a href="show_subadmin.jsp">SubAdmin Details</a></li>
                        
                    </ul>
                </li>

                
               
             <!--    <li><a href="Messages.jsp"><span class="iconfa-envelope"></span> Messages</a></li> -->
                <li><a href="Calender.jsp"><span class="iconfa-calendar"></span> Calendar</a></li>
                <li class="dropdown"><a href=""><span class="iconfa-book"></span> Other Pages</a>
                	<ul>
                    	
                        <li><a href="EditProfile.jsp">Edit Profile</a></li>
                        <li><a href="insert.jsp">Insert</a></li> 
                        
                    </ul>
                </li>
                <li class="dropdown"><a href=""><span class="iconfa-th-list"></span> Reports</a>
                	<ul>
                	    <li ><a href="User Review.jsp">User Review</a> 
                    	<!-- <li class="dropdown"><a href="">Sales Report</a>
                        <ul>
                            <li><a href="">Items Sold</a></li>
                            <li><a href="">Sales Total</a></li> -->
                        </ul>
                     </li>
                      <li class="dropdown"><a href=""><span class="iconfa-th-list"></span> Admin Power</a>
                      <ul>
                    	<li ><a href="Admin x.jsp">Add SubAdmin Power</a>
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
  <div id= "apDiv1" >
  <h6 align="center"  class="widgettitle" style="margin-left:0px; width: 820px">ALL CATEGORY </h6><br>
<table  class="table responsive"  style="margin-left:0px; width: 820px"><tr><th></th><th>category name</th>  <th>edit</th> <th>delete</th></tr></table>
<%Connection con=Db.Condb();
String sql="select CATEGORY_NAME from category ";
PreparedStatement ps=con.prepareStatement(sql);
ResultSet rs=ps.executeQuery();%>

<% while (rs.next()){
	
	
 String cat_name=rs.getString("CATEGORY_NAME");%>
<table class="table table-bordered table-hover" style="margin-left:0px; width: 820px">
<tr>
<td><%=cat_name%></td>
<td ><a href="Edit_cat.jsp?cid=<%=rs.getString("CATEGORY_NAME")%>" >Edit </a></td>
<td><a href="Delete_cat.jsp?cid=<%=rs.getString("CATEGORY_NAME")%>" >Delete </a></td>
</tr></table>
<%}
%>
</div>
</body>
</html>
