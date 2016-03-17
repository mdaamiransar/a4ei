<%@page import="java.sql.*,db.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Add Products</title>
<link rel="stylesheet" href="Css/style.default.css" type="text/css" />
<link rel="stylesheet" href="Css/responsive-tables.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-latest.js"></script>

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
<script type="text/javascript" src="js/product.js"></script>

<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/excanvas.min.js"></script><![endif]-->
 <style type="text/css">
 
#clockbox{
 font-size:20px;
 color:#00aaff;
 text-shadow: blue;
 /* border:2px groove blue; */
 background-color:;
 width:400px;
 height:40px;
 text-align:center;
 margin:auto;
 position:right;
 padding:2px;
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
.myButton {
	-moz-box-shadow: 3px 4px 0px 0px #1564ad;
	-webkit-box-shadow: 3px 4px 0px 0px #1564ad;
	box-shadow: 3px 4px 0px 0px #1564ad;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #79bbff), color-stop(1, #378de5));
	background:-moz-linear-gradient(top, #79bbff 5%, #378de5 100%);
	background:-webkit-linear-gradient(top, #79bbff 5%, #378de5 100%);
	background:-o-linear-gradient(top, #79bbff 5%, #378de5 100%);
	background:-ms-linear-gradient(top, #79bbff 5%, #378de5 100%);
	background:linear-gradient(to bottom, #79bbff 5%, #378de5 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#79bbff', endColorstr='#378de5',GradientType=0);
	background-color:#79bbff;
	-moz-border-radius:5px;
	-webkit-border-radius:5px;
	border-radius:5px;
	border:1px solid #0b6ed1;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:17px;
	font-weight:bold;
	padding:10px 34px;
	text-decoration:none;
	text-shadow:0px 1px 0px #528ecc;
}
.myButton:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #378de5), color-stop(1, #79bbff));
	background:-moz-linear-gradient(top, #378de5 5%, #79bbff 100%);
	background:-webkit-linear-gradient(top, #378de5 5%, #79bbff 100%);
	background:-o-linear-gradient(top, #378de5 5%, #79bbff 100%);
	background:-ms-linear-gradient(top, #378de5 5%, #79bbff 100%);
	background:linear-gradient(to bottom, #378de5 5%, #79bbff 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#378de5', endColorstr='#79bbff',GradientType=0);
	background-color:#378de5;
}
.myButton:active {
	position:relative;
	top:1px;
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
                   <!--  <a class="dropdown-toggle" data-toggle="dropdown" href="#">
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
                                <img src="Images/photos/thumb1.png" alt="" class="userthumb" />
                                <strong>Draniem Daamul</strong>
                                <small>April 20, 2013</small>                            </a>                        </li>
                        <li>
                            <a href="">
                                <img src="Images/photos/thumb2.png" alt="" class="userthumb" />
                                <strong>Shamcey Sindilmaca</strong>
                                <small>April 19, 2013</small>                            </a>                        </li>
                        <li>
                            <a href="">
                                <img src="Images/photos/thumb3.png" alt="" class="userthumb" />
                                <strong>Nusja Paul Nawancali</strong>
                                <small>April 19, 2013</small>                            </a>                        </li>
                        <li>
                            <a href="">
                                <img src="Images/photos/thumb4.png" alt="" class="userthumb" />
                                <strong>Rose Cerona</strong>
                                <small>April 18, 2013</small>                            </a>                        </li>
                        <li>
                            <a href="">
                                <img src="Images/photos/thumb5.png" alt="" class="userthumb" />
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
                </li> -->
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
                <li class="active"><a href="Dashboard.jsp"><span class="iconfa-laptop"></span> Dashboard</a></li>
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
                    	<li><a href="Product.jsp">Add Products</a></li>
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
				
                <!-- <li><a href="Buttons.jsp"><span class="iconfa-hand-up"></span> Buttons &amp; Icons</a></li> -->
               
                
                <li class="dropdown"><a href=""><span class="iconfa-th-list"></span> Manage User</a>
                	<ul>
                    	<li><a href="customer_details.jsp">Customer Details</a></li>
                    	<li><a href="Retailer_details.jsp">Retailer Details</a></li>
                    	<li><a href="show_subadmin.jsp">SubAdmin Details</a></li>
                        
                    </ul>
                </li>
                
               <!--  <li><a href="Messages.jsp"><span class="iconfa-envelope"></span> Messages</a></li> -->
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
        </ul><span id="clockbox" style="float: right;"></span>
      </div>  
 <div id="apDiv1" style="width:1158px;">
<form action="Product" method="post">
<table id="product_table"   style="width:550px;height:635px; margin-top:45px; margin-left:15px; ">
          <tr>
<td colspan="2" style="text-align: center">Product Details</td>
</tr>

<tr>
<td>Category</td>
<td><select name="category" onchange="show_Subcategory(this.value)">
<option selected="selected">select category</option>
<% String sql="Select CATEGORY_ID,CATEGORY_NAME from category";
   Connection con=Db.Condb();
   
   PreparedStatement ps=con.prepareStatement(sql);
   ResultSet rs=ps.executeQuery();
   while(rs.next())
   {
	   String name1=rs.getString("CATEGORY_NAME");%>
		 <option value="<%=rs.getString("CATEGORY_ID")%>"><%=name1%></option>
<%} %>
</select></td></tr>

<tr>
<td>Subcategory Name</td>
<td id="sub_cat"><select name="subcategory" >
<option selected="selected">select subcategory</option></select></td>
</tr>

<tr>
<td>Brand Name</td>
<td id="brand_cat"><select name="brand">
<option selected="selected">select brand</option></select></td>
</tr>



<!----- PRODUCT NAME ---------------------------------------------------------->
 <tr>
<td>Product Name</td>
<td><input type="text" name="PRODUCT_NAME">
</td>
</tr>
 
 <!-- <tr><td>product Name</td>
<td id="product_cat"><select name="PRODUCT_NAME" >
<option selected="selected">select product</option></select></td></tr> -->
<!----- SHORT PRODUCT DESCRIPTION ---------------------------------------------------------->
<tr>
<td >Short Description</td>
<td><textarea cols="30" rows="5" name="SHORT_DESCRIPTION"></textarea></td>
</tr>

<!----- Detailed PRODUCT DESCRIPTION ---------------------------------------------------------->
<tr>
<td >Detailed Description</td>
<td><textarea cols="30" rows="5" name="DETAILED_DESCRIPTION"></textarea></td>
</tr>

<!----- PRODUCT KEYWORDS ---------------------------------------------------------->
<tr>
<td>Keywords</td>
<td><input type="text" name="PRODUCT_KEYWORDS">
</td>
</tr>

<!----- Company Name ---------------------------------------------------------->
<tr>
<td>SUPPLIER_ID</td>
<td>
<select name="SUPPLIER_ID" >
<option selected="selected"> Your Company Name</option>

   <% String sql1="Select COMPANY_NAME from retailer_information";
   Connection con1=Db.Condb();
   
   PreparedStatement ps1=con.prepareStatement(sql1);
   ResultSet rs1=ps1.executeQuery();
   while(rs1.next())
   {
	  
	   
	  
	   %>

 <% String company_name=rs1.getString("COMPANY_NAME");%>
<option value="<%=company_name%>"><%=company_name%></option>
		  

<%} %>
</select></td></tr>
<!----- Sales Price ---------------------------------------------------------->
<tr>
<td>Sales Price</td>
<td><input type="text" name="SALES_PRICE">
</td>

<!----- MSRP ---------------------------------------------------------->
<tr>
<td>Msrp</td>
<td><input type="text" name="MSRP">
</td>


<!----- Discount ---------------------------------------------------------->
<tr>
<td>Discount</td>
<td>
<select name="DISCOUNTS">
<option value="Select">Select</option>
  <option value="0-5 %">0-5 %</option>
  <option value="5-10 %">5-10 %</option>
  <option value="10-15 %">10-15 %</option>
  <option value="15-20 %">15-20 %</option>
</select>
</td>
</tr>

<!----- Weight ---------------------------------------------------------->
<tr>
<td>Weight(Per Item)</td>
<td><input type="text" name="WEIGHT">
</td>



<!-----PRODUCT STATUS ---------------------------------------------------------->
<tr>
<td>Product Status</td>
<td>
<select name="PRODUCT_STATUS">
  <option value="IN STOCK">IN STOCK</option>
  <option value="OUT OF STOCK">OUT OF STOCK</option>
</select>
</td>
</tr>

<tr>
<td>Cash On Delivery</td>
<td>
<select name="CASH_ON_DELIVERY">
  <option value="AVAILABLE">AVAILABLE</option>
  <option value="NOT AVAILABLE">NOT AVAILABLE</option>
</select>
</td>
</tr>
<tr>
<td >Warrenty</td>
<td><textarea name="WARRENTY"></textarea></td></tr>

<tr>
<td >Replacement Warrenty</td>
<td><textarea name="REPLACEMENT_WARRENTY"></textarea></td></tr>

<tr>
<td>Shipping Cost</td>
<td><input type="text" name="SHIPPING_COST">
</td>
</tr>

<!----- Product Updated ---------------------------------------------------------->
<tr>
<td>Product Updated</td>
<td><input type="text" name="PRODUCT_UPDATED" value="<%=new Date()%>">
</td>
</tr>

<tr>
<td colspan="2" align="center">
<input type="submit" value="Submit" class="myButton"  >
</td>
</tr>
</table>
</form>
<form action="Color" method="POST">
<div id="color_table"  style="width:580px; height:300px; margin-left:545px; margin-top:-920px; ">

<table  align="center" class="order-list">
    <thead>
        <tr><td colspan="2" style="text-align: center;">color and quantity</td></tr>
    </thead>
    

    <tbody>
  <tr>
<td style="text-align: left;">Product Name</td>
<td><select name="product" >
<option selected="selected">select product </option>
<% String sql11="Select PRODUCT_ID,PRODUCT_NAME from products";
   Connection con11=Db.Condb();
   
   PreparedStatement ps11=con11.prepareStatement(sql11);
   ResultSet rs11=ps11.executeQuery();
   while(rs11.next())
   {
	   String name2=rs11.getString("PRODUCT_NAME");%>
		 <option value="<%=rs11.getInt("PRODUCT_ID")%>"><%=name2%></option>
<%} %>
</select></td></tr>

<tr>
    
        <tr>
        <% int counter=0; %>
            <td style="text-align: center;"><input type="text" id="col" name="color1" placeholder="color"/></td>
            <!-- <td>&nbsp;</td> -->
            <td style="text-align: center;"><input type="text" id="qq" name="quantity1" placeholder="quantity"/></td>
            
            <td colspan="5" style="text-align: center;">
                <input type="button" class="btn-info" id="addrow" value="Add More" />
            </td>
            <!-- <td><a class="remove_field"> Remove </a></td> -->
        </tr>
    </tbody>

    <tfoot>
        
        <tr>
            <td colspan="5">
               Total:<span id="grandtotal"></span>
            </td>
        </tr>
         <tr>
<td colspan="2" align="center">
<input type="submit" value="Submit"  class="myButton"  >
</td>
</tr>
    </tfoot>
 
</table>

 </div>
 </form>
<form action="Image" method="POST" enctype="multipart/form-data">
<table id="image_table"  style="width:580px; height:300px;  margin-left:545px; margin-top:10px;">

<tr>
<td colspan="2" style="text-align: center;">Images</td>
</tr>

 <tr>
<td style="text-align: center;">Product Name</td>
<td><select name="product" onchange="show_color(this.value)">
<option selected="selected">select product</option>
<% String sql2="Select PRODUCT_ID,PRODUCT_NAME from products";
   Connection con2=Db.Condb();
   
   PreparedStatement ps2=con2.prepareStatement(sql2);
   ResultSet rs2=ps2.executeQuery();
   while(rs2.next())
   {
	   String name3=rs2.getString("PRODUCT_NAME");%>
		 <option value="<%=rs2.getInt("PRODUCT_ID")%>"><%=name3%></option>
<%} %>
</select></td></tr>

<tr>
<td style="text-align: center;">Color</td>
<td id="color_cat"><select name="color" >
<option selected="selected">select color</option></select></td>
</tr>

<tr><td style="text-align: center;"><input type="file" name="IMAGE1" >

<td style="text-align: center;"><input type="file" name="IMAGE2" >
</tr>
<tr><td style="text-align: center;"><input type="file" name="IMAGE3" >

<td style="text-align: center;"><input type="file" name="IMAGE4" >
</tr>

<tr>
<td align="right">
<input type="submit" class="myButton" value="Submit" >
</td>
</tr>

</table>
</form>
</div>
</div>


<script type="text/javascript">
    jQuery(document).ready(function() {
        
      // simple chart
		var flash = [[0, 11], [1, 9], [2,12], [3, 8], [4, 7], [5, 3], [6, 1]];
		var html5 = [[0, 5], [1, 4], [2,4], [3, 1], [4, 9], [5, 10], [6, 13]];
      var css3 = [[0, 6], [1, 1], [2,9], [3, 12], [4, 10], [5, 12], [6, 11]];
			
		function showTooltip(x, y, contents) {
			jQuery('<div id="tooltip" class="tooltipflot">' + contents + '</div>').css( {
				position: 'absolute',
				display: 'none',
				top: y + 5,
				left: x + 5
			}).appendTo("body").fadeIn(200);
		}
	
			
		var plot = jQuery.plot(jQuery("#chartplace"),
			   [ { data: flash, label: "Flash(x)", color: "#6fad04"},
              { data: html5, label: "HTML5(x)", color: "#06c"},
              { data: css3, label: "CSS3", color: "#666"} ], {
				   series: {
					   lines: { show: true, fill: true, fillColor: { colors: [ { opacity: 0.05 }, { opacity: 0.15 } ] } },
					   points: { show: true }
				   },
				   legend: { position: 'nw'},
				   grid: { hoverable: true, clickable: true, borderColor: '#666', borderWidth: 2, labelMargin: 10 },
				   yaxis: { min: 0, max: 15 }
				 });
		
		var previousPoint = null;
		jQuery("#chartplace").bind("plothover", function (event, pos, item) {
			jQuery("#x").text(pos.x.toFixed(2));
			jQuery("#y").text(pos.y.toFixed(2));
			
			if(item) {
				if (previousPoint != item.dataIndex) {
					previousPoint = item.dataIndex;
						
					jQuery("#tooltip").remove();
					var x = item.datapoint[0].toFixed(2),
					y = item.datapoint[1].toFixed(2);
						
					showTooltip(item.pageX, item.pageY,
									item.series.label + " of " + x + " = " + y);
				}
			
			} else {
			   jQuery("#tooltip").remove();
			   previousPoint = null;            
			}
		
		});
		
		jQuery("#chartplace").bind("plotclick", function (event, pos, item) {
			if (item) {
				jQuery("#clickdata").text("You clicked point " + item.dataIndex + " in " + item.series.label + ".");
				plot.highlight(item.series, item.datapoint);
			}
		});
    
        
        //datepicker
        jQuery('#datepicker').datepicker();
        
        // tabbed widget
        jQuery('.tabbedwidget').tabs();
        
        
    
    });
</script>
</body>
</html>
 