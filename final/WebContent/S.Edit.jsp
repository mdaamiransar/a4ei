<%@page import="db.Db"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,admin.* "%>
    <%@page import="bean.Product_bean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>edit</title>
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

</style>
<script type="text/javascript">
tday=new Array("Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday");
tmonth=new Array("January","February","March","April","May","June","July","August","September","October","November","December");

function GetClock(){
var d=new Date();
var nday=d.getDay(),nmonth=d.getMonth(),ndate=d.getDate(),nyear=d.getYear();
if(nyear<1000) nyear+=1900;
var nhour=d.getHours(),nmin=d.getMinutes(),nsec=d.getSeconds(),ap;

if(nhour==0){ap=" AM";nhour=12;}
else if(nhour<12){ap=" AM";}
else if(nhour==12){ap=" PM";}
else if(nhour>12){ap=" PM";nhour-=12;}

if(nmin<=9) nmin="0"+nmin;
if(nsec<=9) nsec="0"+nsec;

document.getElementById('clockbox').innerHTML=""+tday[nday]+", "+tmonth[nmonth]+" "+ndate+", "+nyear+" "+nhour+":"+nmin+":"+nsec+ap+"";
}

window.onload=function(){
GetClock();
setInterval(GetClock,1000);
}
</script>


</head>

<body>

<div class="mainwrapper">

    <div class="header">
        <div class="logo"><a class="dropdown-toggle" data-toggle="dropdown" data-target="#"><a href="Dashboard.jsp"><img src="Images/Sub-Admin (2).png" alt="ad" width="163" height="42" /></a></a></div>
        <div class="headerinner">
            <ul class="headmenu">
               <!--  <li class="odd">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
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
                </li> -->
              <!--   <li class="odd">
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
                            
                            Connection con22=Db.Condb();
                            String sql22="Select EMAIL_ID from sub_admin_info where USER_NAME=?";
                            PreparedStatement ps22=con22.prepareStatement(sql22);
                            ps22.setString(1,name);
                            ResultSet rs22=ps22.executeQuery();

                            if(rs22.next())
                            {

                            	String email=rs22.getString("EMAIL_ID");
                            	System.out.println("email"+email);
                            	
                           
		         %>
                        <%-- <img src="subadmin_image?id=<%=email%>" height="70" width="70"></img>
                         --%><div class="userinfo">
                        
                            <h5> <%=name %> </h5> 
                            <%} %>
                            <ul>
                                <li><a href="S.Edit Profile.jsp">Edit Profile</a></li>
                                <li><a href="">Account Settings</a></li>
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
                <li><a href="Sub_Admin.jsp"><span class="iconfa-laptop"></span> Dashboard</a></li>
				 <li class="dropdown"><a href=""><span class="iconfa-th-list"></span> Categories </a>
                	<ul>
                    	<li><a href="S.Add categoty.jsp"> Add Category</a></li>
						<li><a href="S.Add Sub Category.jsp"> Add Subcategory </a></li>
						<li><a href="S.Add Brand.jsp">  Add Brand </a></li>
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
               
               <!--  </li>
                <li class="dropdown active"><a href=""><span class="iconfa-th-list"></span> Manage User</a>
                	<ul style="display:block;">
                    	<li class="active"><a href="Table-Static.jsp">User details</a></li>
                        
                    </ul>
                </li> -->

                
               
               <!--  <li><a href="Messages.jsp"><span class="iconfa-envelope"></span> Messages</a></li> -->
                <li><a href="S.Calender.jsp"><span class="iconfa-calendar"></span> Calendar</a></li>
                <li class="dropdown"><a href=""><span class="iconfa-book"></span> Other Pages</a>
                	<ul>
                    	
                        <li><a href="S.Edit Profile.jsp">Edit Profile</a></li>
                       <!--  <li><a href="Invoice.jsp">Invoice Page</a></li> -->
                        
                    </ul>
                </li>
                <li class="dropdown"><a href=""><span class="iconfa-th-list"></span> Reports</a>
                	<ul>
                	    <li ><a href="S.User Review.jsp">User Review</a>
                    	<!-- <li class="dropdown"><a href="">Sales Report</a> -->
                        <!-- <ul>
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
            <li><a href="Dashboard.jsp"><i class="iconfa-home"></i></a> <span class="separator"></span></li></ul>
          <span id="clockbox" style="float: right;"></span>  
       </div>
    <!--mainwrapper-->
   <div id="apDiv1" style="width:1000px;">
<form action="Update_Product" method="POST" >
<table id="product_table"  style="width:500px;height:635px;  margin-top:-300px; margin-left:310px; ">
        <tr>
<td colspan="2" style="text-align: center;">Product Details</td>
</tr>

<% int Product_Id=Integer.parseInt(request.getParameter("pid"));
System.out.println("Product id is in edit.jsp"+Product_Id);
Connection con=Db.Condb();
String sql="Select * from products where PRODUCT_ID=?";
PreparedStatement ps=con.prepareStatement(sql);
ps.setInt(1,Product_Id);
ResultSet rs=ps.executeQuery();

if(rs.next())
{
%>

<tr><td>PRODUCT_ID</td>
<td><input type="text" name="PRODUCT_ID" value="<%=Product_Id%>" size=20  readonly="readonly"></td>
</tr>
<tr><td>CATEGORY_ID</td>
<td><input type="text" name="CATEGORY_ID" value="<%=rs.getString("CATEGORY_ID") %>" size=20 readonly="readonly"></td>
</tr>

<tr><td>SUBCATEGORY_ID</td>
<td><input type="text" name="SUBCATEGORY_ID" value="<%=rs.getString("SUBCATEGORY_ID")%>" size=20 readonly="readonly"></td>
</tr>
<tr><td>BRAND_ID</td>
<td><input type="text" name="BRAND_ID" value="<%=rs.getString("BRAND_ID") %>" size=20 readonly="readonly"></td>
</tr>
<tr><td>PRODUCT_NAME</td>
<td><input type="text" name="PRODUCT_NAME" value="<%=rs.getString("PRODUCT_NAME") %>" size=20 readonly="readonly"></td>
</tr>
<tr><td>SHORT_DESCRIPTION</td>
<td><input type="text" name="SHORT_DESCRIPTION" value="<%=rs.getString("SHORT_DESCRIPTION") %>" size=20 ></td>
</tr>
<tr><td>DETAILED_DESCRIPTION</td>
<td><input type="text" name="DETAILED_DESCRIPTION" value="<%=rs.getString("DETAILED_DESCRIPTION") %>" size=20 ></td>
</tr>
<tr><td>PRODUCT_KEYWORDS</td>
<td><input type="text" name="PRODUCT_KEYWORDS" value="<%=rs.getString("PRODUCT_KEYWORDS") %>" size=20 ></td>
</tr>

<tr><td>SUPPLIER_ID</td>
<td><input type="text" name="SUPPLIER_ID" value="<%=rs.getString("SUPPLIER_ID") %>" size=20 ></td>
</tr>

<tr><td>SALES_PRICE</td>
<td><input type="text" name="SALES_PRICE" value="<%=rs.getDouble("SALES_PRICE") %>" size=20 ></td>
</tr>


<tr><td>MSRP</td>
<td><input type="text" name="MSRP" value="<%=rs.getDouble("MSRP") %>" size=20 ></td>
</tr>
<tr><td>DISCOUNTS</td>
<td><input type="text" name="DISCOUNTS" value="<%=rs.getString("DISCOUNTS") %>" size=20 ></td>
</tr>
<tr><td>WEIGHT</td>
<td><input type="text" name="WEIGHT" value="<%=rs.getString("WEIGHT") %>" size=20 ></td>
</tr>

<tr><td>PRODUCT_STATUS</td>
<td><input type="text" name="PRODUCT_STATUS" value="<%=rs.getString("PRODUCT_STATUS") %>" size=20 ></td>
</tr>

<tr><td>CASH_ON_DELIVERY</td>
<td><input type="text" name="CASH_ON_DELIVERY" value="<%=rs.getString("CASH_ON_DELIVERY") %>" size=20 ></td>
</tr>

<tr><td>WARRENTY</td>
<td><input type="text" name="WARRENTY" value="<%=rs.getString("WARRENTY") %>" size=20 ></td>
</tr>

<tr><td>REPLACEMENT_WARRENTY</td>
<td><input type="text" name="REPLACEMENT_WARRENTY" value="<%=rs.getString("REPLACEMENT_WARRENTY") %>" size=20 ></td>
</tr>

<tr><td>SHIPPING COAST</td>
<td><input type="text" name="SHIPPING_COST" value="<%=rs.getString("SHIPPING_COST") %>" size=20 ></td>
</tr>
 <%-- <tr><td>IMAGE</td>
<td>
<img src="Product_Image?id=<%=Product_Id%>" height="50" width="50"></img>
<input type="file" name="IMAGE"  value="<%=rs.getBlob("IMAGE") %>"/>
</td></tr> 
<tr><td>COLOR</td>
<td><input type="text" name="color" value="<%=rs.getString("color") %>" size=20 ></td>
</tr> --%>

<tr><td>PRODUCT_UPDATED</td>
<td><input type="text" name="PRODUCT_UPDATED" value="<%=rs.getString("PRODUCT_UPDATED") %>" size=20 ></td>
</tr>

<tr>
<td colspan="5" align="center">
<input type="submit"  value="Update">
</td>
</tr>

<%
}
%>
</table>
</form>

<div id="color_table"  style="width:580px; height:300px; margin-left:800px; margin-top:-810px; ">

<table >
    
  <tr><td colspan="2" style="text-align: center;">color and quantity</td></tr>
    
    <tbody>
  <%int Product_Id1=Integer.parseInt(request.getParameter("pid"));
System.out.println("Product id is"+Product_Id);
Connection con1=Db.Condb();
String sql1="Select * from color where PRODUCT_ID=?";
PreparedStatement ps1=con1.prepareStatement(sql1);
ps1.setInt(1, Product_Id1);
ResultSet rs1=ps1.executeQuery();

while(rs1.next())
{
%>
<form action="Update_Quantity" method="GET"> 

<tr>
<td>
<input type="hidden" name="PRODUCT_ID" value="<%=Product_Id1%>" size=20 ></td>
</tr>
<tr><td>COLOR</td>
<td><%=rs1.getString("COLOR") %>
<input type="hidden" name="COLOR" value="<%=rs1.getString("COLOR") %>" size=20 ></td>

<td>QUANTITY</td>
<td><input type="text" name="QUANTITY" value="<%=rs1.getString("QUANTITY") %>" size=20 ></td>

<td >
<input type="submit"  value="Update">
</td>
</tr>

</form>
<%
}
%>
</table>

 </div>


<table id="image_table"  style="width:580px; height:300px;  margin-left:800px; margin-top:-20px;">

<tr>
<td colspan="2" style="text-align: center;">Images</td>
</tr>

 <tr><td>PRODUCT_ID</td>
<td><input type="text" name="PRODUCT_ID" value="<%=Product_Id%> " size=20  readonly="readonly"></td>
</tr>

<%int Product_Id2=Integer.parseInt(request.getParameter("pid"));
System.out.println("Product id is"+Product_Id2);
Connection con2=Db.Condb();
String sql2="Select  c.COLOR,i.IMAGE_ID,i.IMAGE,i.FILE_NAME from image i inner join color c on i.COLOR=c.COLOR_ID where i.PRODUCT_ID=?";
PreparedStatement ps2=con2.prepareStatement(sql2);
ps2.setInt(1, Product_Id2);
ResultSet rs2=ps2.executeQuery();

while(rs2.next())
{
%>
<form action="S.Edit Image.jsp" method="get">
  
<tr>
<td>
<input type="hidden" name="PRODUCT_ID" value="<%=Product_Id2 %>" size=20 ></td>
</tr>
<tr>
<td>COLOR</td>
<td><%=rs2.getString("COLOR") %>
<input type="hidden" name="COLOR" value="<%=rs2.getString("COLOR") %>" size=20 >

<input type="hidden" name="Filename" value="<%=rs2.getString("FILE_NAME") %>">
<input type="hidden" name="Image_Id" value="<%=rs2.getString("IMAGE_ID") %>">
<td>
<img src="Product_Image?product_id=<%=Product_Id2%>&filename=<%=rs2.getString("FILE_NAME")%>&image_id=<%=rs2.getString("IMAGE_ID") %>" height="70" width="70"></img>

</td>
<td colspan="5" align="center">
<td><input type="submit"  value="Edit">
</td></tr>
</form>

<%} %>
</table>

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
 