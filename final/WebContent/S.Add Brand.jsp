<%@page import="java.sql.*,db.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Add Brand</title>
<link rel="stylesheet" href="Css/style.default.css" type="text/css" />
<link rel="stylesheet" href="css/responsive-tables.css">
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
<script type="text/javascript">
function f()
{
	if("${param.error}")
		alert("${param.error}");
}

function show_Subcategory(str)
{
	var xhttp; 
	  if (str == "") {
	    document.getElementById("sub_cat").innerHTML = "";
	    return;
	  }
	  xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (xhttp.readyState == 4 && xhttp.status == 200) {
	    document.getElementById("sub_cat").innerHTML = xhttp.responseText;
	    }
	  };
	  xhttp.open("GET", "SubCategory_list.jsp?q="+str, true);
	  xhttp.send();
}

function check()
{  
var x=document.getElementById("BRAND_NAME").value;
if(x.length==0)
{
 alert("brand name should not be empty");
 return false;
}
var y=document.getElementById('actual').value; 


    if (y=="taken")
    {
           alert("Name already exist in database");
        return false;
    }
    /* else
    {
            alert("No name exist");
    } */      
 }
function varify()
{
var xmlhttp;
var k=document.getElementById("BRAND_NAME").value;

var urls="Check_brand.jsp?ver="+k;

if (window.XMLHttpRequest)
  {
  xmlhttp=new XMLHttpRequest();
  }
else
  {
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 )
    {
        document.getElementById("err").innerHTML=xmlhttp.responseText;
     }
  }
xmlhttp.open("GET",urls,true);
xmlhttp.send();
}

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
</style>
</head>

<body>

<div class="mainwrapper">
    
    <div class="header">
        <div class="logo"><a class="dropdown-toggle" data-toggle="dropdown" data-target="#"><a href="Dashboard.jsp"><img src="Images/Sub-Admin (2).png" alt="ad" width="163" height="42" /></a></a></div>
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
                        <li class="viewmore"><a href="Messages.jsp">View More Messages</a></li>
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
                            
                            Connection con=Db.Condb();
                            String sql="Select EMAIL_ID from sub_admin_info where USER_NAME=?";
                            PreparedStatement ps=con.prepareStatement(sql);
                            ps.setString(1,name);
                            ResultSet rs=ps.executeQuery();

                            if(rs.next())
                            {

                            	String email=rs.getString("EMAIL_ID");
                            	System.out.println("email"+email);
                            	
                           
		         %>
                        <%-- <img src="subadmin_image?id=<%=email%>" height="70" width="70"></img> --%>
                        <div class="userinfo">
                        
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
                <li class="active"><a href="Sub_Admin.jsp"><span class="iconfa-laptop"></span> Dashboard</a></li>
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
               
             <!--    
                <li class="dropdown"><a href=""><span class="iconfa-th-list"></span> Manage User</a>
                	<ul>
                    	<li><a href="customer_details.jsp">Customer Details</a></li>
                    	<li><a href="Retailer_details.jsp">Retailer Details</a></li>
                        
                    </ul>
                </li> -->
                
               <!--  <li><a href="Messages.jsp"><span class="iconfa-envelope"></span> Messages</a></li> -->
                <li><a href="S.Calender.jsp"><span class="iconfa-calendar"></span> Calendar</a></li>
                <li class="dropdown"><a href=""><span class="iconfa-book"></span> Other Pages</a>
                	<ul>
                    	
                        <li><a href="S.Edit Profile.jsp">Edit Profile</a></li>
                       <!--  <li><a href="insert.jsp">Insert</a></li>  -->
                        
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
        <span id="clockbox" style="float: right;"></span></div>
        </div>

<!--  <form style=""><table width="853" border="1">
          <tr>
            <td width="850">
 -->
 <div id="apDiv1"> 
 <form style="" action="Brand" method="post" onsubmit="return check();">
   <table style="margin-left: 300px; margin-top: 40px">
    <caption>
     <h3 align="center" style="margin:10px"> ADD BRAND</h3>
    </caption>
    
<tr>
      <td>CATEGORY_NAME</td>
   <td>
     <select name="CATEGORY_ID" onChange="show_Subcategory(this.value)">

     <option selected="selected">select category</option>
       <% String sql11="Select CATEGORY_ID,CATEGORY_NAME from category";
          Connection con11=Db.Condb();
   
   PreparedStatement ps11=con11.prepareStatement(sql11);
   ResultSet rs11=ps11.executeQuery();
   while(rs11.next())
   {
	   String name1=rs11.getString("CATEGORY_NAME");%>
	 <option value="<%=rs11.getString("CATEGORY_ID")%>"><%=name1%></option> 
<%} %>
    </select>
   </td>
</tr>
     
<tr> 
    <td>SUBCATEGORY_NAME</td>
     <td id="sub_cat"><select name="subcategory">
     <option selected="selected">select subcategory</option></select></td>
</tr>

    
<tr>
      <td>BRAND NAME</td>
         <td><input type="text" name="BRAND_NAME" id="BRAND_NAME" onKeyUp="varify()"/><div id="err"></div>
      </td>
</tr>
    
    <tr>
      <td colspan="5" align="center"  >
<input type="submit"  value="Submit"></td>
    </tr>
  </table>
  </form>
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