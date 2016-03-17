<%@page import="db.Db"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,admin.* "%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Profile</title>

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
</head>
<body>

<div class="mainwrapper">
    
    <div class="header">
        <div class="logo">
            <a href="Dashboard.jsp"><img src="Images/ad.jpg" alt="" /></a>
        </div>
        <div class="headerinner">
            <ul class="headmenu">
                <li class="odd">
                    <!-- <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <span class="count">4</span>
                        <span class="head-icon head-message"></span>
                        <span class="headmenu-label">Messages</span>
                    </a>
                    <ul class="dropdown-menu">
                        <li class="nav-header">Messages</li>
                        <li><a href=""><span class="icon-envelope"></span> New message from <strong>Jack</strong> <small class="muted"> - 19 hours ago</small></a></li>
                        <li><a href=""><span class="icon-envelope"></span> New message from <strong>Daniel</strong> <small class="muted"> - 2 days ago</small></a></li>
                        <li><a href=""><span class="icon-envelope"></span> New message from <strong>Jane</strong> <small class="muted"> - 3 days ago</small></a></li>
                        <li><a href=""><span class="icon-envelope"></span> New message from <strong>Tanya</strong> <small class="muted"> - 1 week ago</small></a></li>
                        <li><a href=""><span class="icon-envelope"></span> New message from <strong>Lee</strong> <small class="muted"> - 1 week ago</small></a></li>
                        <li class="viewmore"><a href="Messages.jsp">View More Messages</a></li>
                    </ul>
                </li>
                <li>
                    <a class="dropdown-toggle" data-toggle="dropdown" data-target="#">
                    <span class="count">10</span>
                    <span class="head-icon head-users"></span>
                    <span class="headmenu-label">New Users</span>
                    </a>
                    <ul class="dropdown-menu newusers">
                        <li class="nav-header">New Users</li>
                        <li>
                            <a href="">
                                <img src="images/photos/thumb1.png" alt="" class="userthumb" />
                                <strong>Draniem Daamul</strong>
                                <small>April 20, 2013</small>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="images/photos/thumb2.png" alt="" class="userthumb" />
                                <strong>Shamcey Sindilmaca</strong>
                                <small>April 19, 2013</small>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="images/photos/thumb3.png" alt="" class="userthumb" />
                                <strong>Nusja Paul Nawancali</strong>
                                <small>April 19, 2013</small>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="images/photos/thumb4.png" alt="" class="userthumb" />
                                <strong>Rose Cerona</strong>
                                <small>April 18, 2013</small>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="images/photos/thumb5.png" alt="" class="userthumb" />
                                <strong>John Doe</strong>
                                <small>April 16, 2013</small>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="odd">
                    <a class="dropdown-toggle" data-toggle="dropdown" data-target="#">
                    <span class="count">1</span>
                    <span class="head-icon head-bar"></span>
                    <span class="headmenu-label">Statistics</span>
                    </a>
                    <ul class="dropdown-menu">
                        <li class="nav-header">Statistics</li>
                        <li><a href=""><span class="icon-align-left"></span> New Reports from <strong>Products</strong> <small class="muted"> - 19 hours ago</small></a></li>
                        <li><a href=""><span class="icon-align-left"></span> New Statistics from <strong>Users</strong> <small class="muted"> - 2 days ago</small></a></li>
                        <li><a href=""><span class="icon-align-left"></span> New Statistics from <strong>Comments</strong> <small class="muted"> - 3 days ago</small></a></li>
                        <li><a href=""><span class="icon-align-left"></span> Most Popular in <strong>Products</strong> <small class="muted"> - 1 week ago</small></a></li>
                        <li><a href=""><span class="icon-align-left"></span> Most Viewed in <strong>Blog</strong> <small class="muted"> - 1 week ago</small></a></li>
                        <li class="viewmore"><a href="charts.html">View More Statistics</a></li>
                    </ul>
                </li>
 -->                <li class="right">
                    <div class="userloggedinfo">
                    
                      <%
			                HttpSession sees=request.getSession();
                            String name=(String)sees.getAttribute("Username");
                            
                            Connection con=Db.Condb();
                            String sql="Select EMAIL_ID from admin_info where USER_NAME=?";
                            PreparedStatement ps=con.prepareStatement(sql);
                            ps.setString(1,name);
                            ResultSet rs=ps.executeQuery();

                            if(rs.next())
                            {

                            	String email=rs.getString("EMAIL_ID");
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
            </ul><!--headmenu-->
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
                
              
                <li class="dropdown"><a href=""><span class="iconfa-th-list"></span> Manage User</a>
                	<ul>
                    	<li><a href="customer_details.jsp">Customer Details</a></li>
                    	<li><a href="Retailer_details.jsp">Retailer Details</a></li>
                    		<li><a href="show_subadmin.jsp">SubAdmin Details</a></li>
                        
                    </ul>
                </li>

                
              <!--   <li><a href="Messages.jsp"><span class="iconfa-envelope"></span> Messages</a></li> -->
                <li><a href="Calender.jsp"><span class="iconfa-calendar"></span> Calendar</a></li>
                <li class="dropdown active"><a href=""><span class="iconfa-book"></span> Other Pages</a>
                	<ul>
                        <li class="active"><a href="EditProfile.jsp">Edit Profile</a></li>
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
            <li>Edit Profile</li>
        </ul>
        
        <div class="pageheader">
            <!-- <form action="results.html" method="post" class="searchbar">
                <input type="text" name="keyword" placeholder="To search type and hit enter..." />
            </form> -->
            <div class="pageicon"><span class="iconfa-laptop"></span></div>
            <div class="pagetitle">
                <h5>Sample Text Here</h5>
                <h1>Edit Profile</h1>
            </div>
        </div><!--pageheader-->
        
        <%

 HttpSession sees1=request.getSession();
 String name1=(String)sees1.getAttribute("Username");
 
Connection con11=Db.Condb();
String sql11="Select EMAIL_ID from admin_info where USER_NAME=?";
PreparedStatement ps11=con.prepareStatement(sql11);
ps11.setString(1,name1);
ResultSet rs11=ps11.executeQuery();

if(rs11.next())
{

	String email=rs11.getString("EMAIL_ID");
	System.out.println("email"+email);
	
	String sql1="Select FIRST_NAME,LAST_NAME,USER_NAME,EMAIL_ID,PASSWORD from admin_info where EMAIL_ID=?";
	PreparedStatement ps1=con.prepareStatement(sql1);
	ps1.setString(1, email);
	ResultSet rs1=ps1.executeQuery();
	if(rs1.next())
	
	{
		
	
%> 
        
        <div class="maincontent">
            <div class="maincontentinner">
                <div class="row-fluid">
                    	<div class="span4 profile-left">
                        
                        <div class="widgetbox profile-photo">
                            <div class="headtitle">
                                
                               
                                <h4 class="widgettitle">Profile Photo</h4>
                                 <span class="profilethumb"><img src="admin_image?id=<%=email%>" height="200" width="150"></img></span>
                            </div>
                            
                        </div>
                            
                            
                        </div><!--span4-->
                        <div class="span8">
                            <form action="Admin_info_update" method="post">
                                
                                <div class="widgetbox login-information">
                                    <h4 class="widgettitle">Login Information</h4>
                                    <div class="widgetcontent">
                                  
 
                                    
                                         <p>
                                            <label>Username:</label>
                                            <input type="text" name="USER_NAME" value="<%=rs1.getString("USER_NAME")%>" class="input-xlarge"  />
                                        </p>
                                        <p>
                                            <label>Email:</label>
                                            <input type="text" name="EMAIL_ID" value="<%=email%>" readonly="readonly" class="input-xlarge"  />
                                        </p>
                                        <p>
                                            <label style="padding:0">Password</label>
                                            <input type="text" name="password" value="<%=rs1.getString("PASSWORD")%>"  class="input-xlarge"  />
                                        </p>
                                    </div>
                                </div>
                                
                                
                                <div class="widgetbox personal-information">
                                    <h4 class="widgettitle">Personal Information</h4>
                                    <div class="widgetcontent">
                                        <p>
                                            <label>Firstname:</label>
                                            <input type="text" name="FIRST_NAME" value="<%=rs1.getString("FIRST_NAME")%>" class="input-xlarge"  />
                                        </p>
                                        <p>
                                            <label>Lastname:</label>
                                            <input type="text" name="LAST_NAME" value="<%=rs1.getString("LAST_NAME")%>" class="input-xlarge"  />
                                        </p>
                                       <!--  <p>
                                            <label>Location:</label>
                                            <input type="text" name="location" class="input-xlarge"  />
                                        </p>
                                        <p>
                                            <label>mob no:</label>
                                            <input type="text" name="mob_no" class="input-xlarge"  />
                                        </p>
                                        --> 
                                       <!--  <p>
                                            <label>Your Website:</label>
                                            <input type="text" name="website" class="input-xlarge"  />
                                        </p>
                                        -->               </div>
                                </div>
                                
                                <!-- <div class="widgetbox profile-notifications">
                                    <h4 class="widgettitle">Notifications</h4>
                                    <div class="widgetcontent">
                                        <p>
                                            <input type="checkbox" /> Email me when someone mentions me... <br />
                                            <input type="checkbox" /> Email me when someone follows me...
                                        </p>
                                    </div>
                                </div>
                                 -->
                               <%   }
                                 }%>
                                <p>
                                	<button type="submit" class="btn btn-primary">Update Profile</button> &nbsp; <a href="">Deactivate your account</a>
                                </p>
                                
                            </form>
                        </div><!--span8-->
              </div><!--row-fluid-->
                    
                    <div class="footer">
                        <div class="footer-left">
                            <span>&copy; 2015. Sherish Softech Pvt Ltd. All Rights Reserved.</span>
                        </div>
                        
                    </div><!--footer-->
                
            </div><!--maincontentinner-->
        </div><!--maincontent-->
        
    </div><!--rightpanel-->
    
</div><!--mainwrapper-->

</body>
</html>