<%@page import="model.Product_Modeldb"%>
<%@page import="java.util.Iterator"%>
<%@page import="bean.Product_bean"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,db.*,admin.*"%>
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

function brand_show(str)
{
	var xhttp; 
	  if (str == "") {
	    document.getElementById("brand_catt").innerHTML = "";
	    return;
	  }
	  xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (xhttp.readyState == 4 && xhttp.status == 200) {
	    document.getElementById("brand_catt").innerHTML = xhttp.responseText;
	    }
	  };
	  xhttp.open("GET", "Brand_details1.jsp?category_id="+str, true);
	  xhttp.send();
}

function show_products_brand(str)
{
	var xhttp; 
	  if (str == "") {
	    document.getElementById("pp").innerHTML = "";
	    return;
	  }
	  xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (xhttp.readyState == 4 && xhttp.status == 200) {
	    document.getElementById("pp").innerHTML = xhttp.responseText;
	    }
	  };
	  xhttp.open("GET", "brand_product_show1.jsp?category_id="+str, true);
	  xhttp.send();
}


function price_show(str,str1)
{
	
	var xhttp; 
	  if (str == "") {
	    document.getElementById("product").innerHTML = "";
	    return;
	  }
	  xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (xhttp.readyState == 4 && xhttp.status == 200) {
	    document.getElementById("product").innerHTML = xhttp.responseText;
	    }
	  };
	  xhttp.open("GET", "pricewise.jsp?category_id="+str+"&brand_name="+str1, true);
	  xhttp.send();
}
function f()
{
	if("${param.msg}")
		alert("${param.msg}");
}
function product_show(str,str1)
{
	
	var xhttp; 
	  if (str == "") {
	    document.getElementById("product_cat").innerHTML = "";
	    return;
	  }
	  xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (xhttp.readyState == 4 && xhttp.status == 200) {
	    document.getElementById("product_cat").innerHTML = xhttp.responseText;
	    }
	  };
	  xhttp.open("GET", "Product_list.jsp?category_id="+str+"&id2="+str1, true);
	  xhttp.send();
}

function show_brand(str)
{
	var xhttp; 
	  if (str == "") {
	    document.getElementById("brand_cat").innerHTML = "";
	    return;
	  }
	  xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (xhttp.readyState == 4 && xhttp.status == 200) {
	    document.getElementById("brand_cat").innerHTML = xhttp.responseText;
	    }
	  };
	  xhttp.open("GET", "Brand_details.jsp?category_id="+str, true);
	  xhttp.send();
}



function show_productdetails(str)
{
	var xhttp; 
	  if (str == "") {
	    document.getElementById("product").innerHTML = "";
	    return;
	  }
	  xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (xhttp.readyState == 4 && xhttp.status == 200) {
	    document.getElementById("product").innerHTML = xhttp.responseText;
	    }
	  };
	  xhttp.open("GET", "Categorywise_product_show.jsp?category_id="+str, true);
	  xhttp.send();
}

function retailer_show(str,str1)
{
	var xhttp; 
	  if (str == "") {
	    document.getElementById("ret").innerHTML = "";
	    return;
	  }
	  xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (xhttp.readyState == 4 && xhttp.status == 200) {
	    document.getElementById("ret").innerHTML = xhttp.responseText;
	    }
	  };
	  xhttp.open("GET", "retailerwise_product_show.jsp?category_id="+str+"&id2="+str1, true);
	  xhttp.send();
}

function change_image(product_id,image_id,cnt)
{
	var xhttp; 
	var url="Image_ajax1.jsp?product_id="+product_id+"&image_id="+image_id;
	 
	  xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (xhttp.readyState == 4 && xhttp.status == 200) {
	    document.getElementById("image"+cnt).innerHTML = xhttp.responseText;
	    }
	  };
	  xhttp.open("GET",url, true);
	  xhttp.send();
}

</script>
</head>

<body>

<div class="mainwrapper">

    <div class="header">
        <div class="logo"><a class="dropdown-toggle" data-toggle="dropdown" data-target="#"><a href="Dashboard.jsp"><img src="Images/ad.jpg" alt="ad" width="163" height="42" /></a></a></div>
        <div class="headerinner">
            <ul class="headmenu">
                <li class="odd">
                   
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
                              <!--   <li><a href="">Account Settings</a></li> -->
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
               
                </li>
                <li class="dropdown active"><a href=""><span class="iconfa-th-list"></span> Manage User</a>
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
                    	<!--  <li class="dropdown"><a href="">Sales Report</a>
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
    
    <div class="rightpanel" >
        
        <ul class="breadcrumbs">
            <li><a href="Dashboard.jsp"><i class="iconfa-home"></i></a> <span class="separator"></span></li>
            <li>Dashboard</li>
        </ul><span id="clockbox" style="float: right;"></span></div>
       <div id="apDiv1"  style=" margin-top:70px; margin-left:50px; "> 
        <!--pageheader-->
        <!--rightpanel-->
    <form action="Show_Product" method="post" enctype="multipart/form-data">


<h6 align="center"  class="widgettitle" style="margin-left:-30px; width: 1040px; padding: 10px">SEARCH PRODUCT BY CATEGORY/ BRAND/ RETAILER </h6><br>

<p>
<label>SELECT CATEGORY
<select name="CATEGORY" onchange="show_brand(this.value)">
<option selected="selected">SELECT CATEGORY</option>
<% String sql1="Select CATEGORY_ID,CATEGORY_NAME from category";
   Connection con1=Db.Condb();
   
   PreparedStatement ps1=con1.prepareStatement(sql1);
   ResultSet rs1=ps1.executeQuery();
   while(rs1.next())
   {
	   String name1=rs1.getString("CATEGORY_NAME");%>
	 <option value="<%=rs1.getString("CATEGORY_ID")%>"><%=name1%></option> 
<%} %>
</select>

BRAND NAME
<span id="brand_cat"><select name="brand">
<option selected="selected">SELECT BRAND</option></select></span>

SELECT RETAILER
<span id="ret"><select name="retailer" >
<option selected="selected">SELECT RETAILER</option></select></span></label>
<label>
PRODUCT NAME
<span id="product_cat"><select name="product" >
<option selected="selected">SELECT PRODUCT NAME</option>
</select></span></label>

</p>

<h6 align="center"  class="widgettitle" style="margin-left:-30px; width: 1040px; padding: 10px">SEARCH PRODUCT BY PRICE </h6><br>
<p>
<label>SELECT CATEGORY
<select name="category" onchange="brand_show(this.value)">
<option selected="selected">SELECT CATEGORY</option>
<% String sql98="Select CATEGORY_ID,CATEGORY_NAME from category";
   Connection con98=Db.Condb();
   
   PreparedStatement ps98=con98.prepareStatement(sql98);
   ResultSet rs98=ps98.executeQuery();
   while(rs98.next())
   {
	   String name98=rs98.getString("CATEGORY_NAME");%>
	 <option value="<%=rs98.getString("CATEGORY_ID")%>"><%=name98%></option> 
<%} %>
</select>
BRAND NAME
<span id="brand_catt"><select name="brand">
<option selected="selected">SELECT BRAND</option></select></span>

PRICE
<span id="pp"><select name="price" >
<option selected="selected">select Price</option>


</select></span>
</label>
</p>
<br>
<h6  align="center" class="widgettitle" style="margin-left:-30px; width: 1040px"> VIEW PRODUCT DETAILS </h6><br>


<table class="table responsive" id="product" style="margin-left:-30px;">
	

		</table>
    
    <!--mainwrapper-->
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
