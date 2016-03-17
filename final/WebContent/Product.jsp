<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.Date"%>
    <%@ page import="java.sql.*,db.*"%>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
if("${param.msg}")
	{
	alert("${param.msg}");
	}
</script>
<meta charset="UTF-8">
        <title>Product</title>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <!-- bootstrap 3.0.2 -->
        <link href="css1/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- font Awesome -->
        <link href="css1/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- Ionicons -->
        <link href="css1/ionicons.min.css" rel="stylesheet" type="text/css" />
        <!-- Morris chart -->
        <link href="css1/morris/morris.css" rel="stylesheet" type="text/css" />
        <!-- jvectormap -->
        <link href="css1/jvectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet" type="text/css" />
        <!-- fullCalendar -->
        <link href="css1/fullcalendar/fullcalendar.css" rel="stylesheet" type="text/css" />
        <!-- Daterange picker -->
        <link href="css1/daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />
        <!-- bootstrap wysihtml5 - text editor -->
        <link href="css1/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css" rel="stylesheet" type="text/css" />
        <!-- Theme style -->
        <link href="css1/AdminLTE.css" rel="stylesheet" type="text/css" />

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-latest.js"></script>
        
        <script type="text/javascript">

$(document).ready(function () {
    var counter = 1;

    $("#addrow").on("click", function () {
        counter++;

        var newRow = $("<tr>");
        var cols = "";
        cols += '<td><input type="text" placeholder="color"name="color' + counter + '"/></td> ';
        /* cols+='<td>&nbsp;</td>'; */
        cols += '<td><input type="text" placeholder="quantity" name="quantity' + counter + '"/></td>';
        cols += '<td><a href="#" class="remove_field">Remove</a></div>';
        
        newRow.append(cols);
        $("table.order-list").append(newRow);
    });
    $("table.order-list").on("change", 'input[name^="quantity"]', function (event) {
        calculateRow($(this).closest("tr"));
        calculateGrandTotal();
    });
    
    $("table.order-list").on("click", "a.remove_field", function (event) {
        $(this).closest("tr").remove();
        calculateGrandTotal();
    });
});
    
function calculateRow(row) {
    var price = +row.find('input[name^="quantity"]').val();
    
}
function calculateGrandTotal() {
    var grandTotal = 0;
    $("table.order-list").find('input[name^="quantity"]').each(function () {
        grandTotal += +$(this).val();
    });
    $("#grandtotal").text(grandTotal);
}


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


function product_avail(str)
{
	var xhttp; 
	  if (str == "") {
	    document.getElementById("aa").innerHTML = "";
	    return;
	  }
	  xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (xhttp.readyState == 4 && xhttp.status == 200) {
	    document.getElementById("aa").innerHTML = xhttp.responseText;
	    }
	  };
	  xhttp.open("GET", "Product_avail.jsp?q="+str, true);
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
	  xhttp.open("GET", "Brandlist.jsp?q="+str, true);
	  xhttp.send();
}
function show_color(str)
{
	var xhttp; 
	  if (str == "") {
	    document.getElementById("color_cat").innerHTML = "";
	    return;
	  }
	  xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (xhttp.readyState == 4 && xhttp.status == 200) {
	    document.getElementById("color_cat").innerHTML = xhttp.responseText;
	    }
	  };
	  xhttp.open("GET", "Colorlist.jsp?q="+str, true);
	  xhttp.send();
}



</script>
    </head>
    <body class="skin-blue">
        <!-- header logo: style can be found in header.less -->
        <header class="header">
            <a href="Dashboard.jsp" class="logo">
                <!-- Add the class icon to your logo image or logo icon to add the margining -->
                Retailer
            </a>
            <!-- Header Navbar: style can be found in header.less -->
            <nav class="navbar navbar-static-top" role="navigation">
                <!-- Sidebar toggle button-->
                <a href="#" class="navbar-btn sidebar-toggle" data-toggle="offcanvas" role="button">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>
                 <div class="navbar-right">
                    <ul class="nav navbar-nav">
                       <!--  Messages: style can be found in dropdown.less
                        <li class="dropdown messages-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-envelope"></i>
                                <span class="label label-success">4</span>                            </a>
                            <ul class="dropdown-menu">
                                <li class="header">You have 4 messages</li>
                                <li>
                                    inner menu: contains the actual data
                                    <ul class="menu">
                                        <li>start message
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="img/avatar3.png" class="img-circle" alt="User Image"/>
                                                </div>
                                                <h4>
                                                    Support Team
                                                    <small><i class="fa fa-clock-o"></i> 5 mins</small>
                                                </h4>
                                                <p>Why not buy a new awesome theme?</p>
                                            </a>
                                        </li>end message
                                        <li>
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="img/avatar2.png" class="img-circle" alt="user image"/>
                                                </div> --> 
                                                <!-- <h4>
                                                    AdminLTE Design Team
                                                    <small><i class="fa fa-clock-o"></i> 2 hours</small>
                                                </h4>
                                                <p>Why not buy a new awesome theme?</p>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="img/avatar.png" class="img-circle" alt="user image"/>
                                                </div>
                                                <h4>
                                                    Developers
                                                    <small><i class="fa fa-clock-o"></i> Today</small>
                                                </h4>
                                                <p>Why not buy a new awesome theme?</p>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="img/avatar2.png" class="img-circle" alt="user image"/>
                                                </div>
                                                <h4>
                                                    Sales Department
                                                    <small><i class="fa fa-clock-o"></i> Yesterday</small>
                                                </h4>
                                                <p>Why not buy a new awesome theme?</p>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="img/avatar.png" class="img-circle" alt="user image"/>
                                                </div>
                                                <h4>
                                                    Reviewers
                                                    <small><i class="fa fa-clock-o"></i> 2 days</small>
                                                </h4>
                                                <p>Why not buy a new awesome theme?</p>
                                            </a>
                                        </li> -->
                                   <!--  </ul>
                                </li>
                                <li class="footer"><a href="#">See All Messages</a></li>
                            </ul>
                      </li>
                        Notifications: style can be found in dropdown.less
                        <li class="dropdown notifications-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-warning"></i>
                                <span class="label label-warning">10</span>                            </a>
                            <ul class="dropdown-menu">
                                <li class="header">You have 10 notifications</li>
                                <li>
                                    inner menu: contains the actual data
                                    <ul class="menu">
                                        <li>
                                            <a href="#">
                                                <i class="ion ion-ios7-people info"></i> 5 new members joined today
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="fa fa-warning danger"></i> Very long description here that may not fit into the page and may cause design problems
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="fa fa-users warning"></i> 5 new members joined
                                            </a>
                                        </li>

                                        <li>
                                            <a href="#">
                                                <i class="ion ion-ios7-cart success"></i> 25 sales made
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="ion ion-ios7-person danger"></i> You changed your username
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="footer"><a href="#">View all</a></li>
                            </ul>
                      </li>
                        Tasks: style can be found in dropdown.less
                        <li class="dropdown tasks-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-tasks"></i>
                                <span class="label label-danger">9</span>                            </a>
                            <ul class="dropdown-menu">
                                <li class="header">You have 9 tasks</li>
                                <li> -->
                                    <!-- inner menu: contains the actual data -->
                                   <!--  <ul class="menu">
                                        <li>Task item
                                            <a href="#">
                                                <h3>
                                                    Design some buttons
                                                    <small class="pull-right">20%</small>
                                                </h3>
                                                <div class="progress xs">
                                                    <div class="progress-bar progress-bar-aqua" style="width: 20%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                        <span class="sr-only">20% Complete</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>end task item
                                        <li>Task item
                                            <a href="#">
                                                <h3>
                                                    Create a nice theme
                                                    <small class="pull-right">40%</small>
                                                </h3>
                                                <div class="progress xs">
                                                    <div class="progress-bar progress-bar-green" style="width: 40%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                        <span class="sr-only">40% Complete</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>end task item
                                        <li>Task item
                                            <a href="#">
                                                <h3>
                                                    Some task I need to do
                                                    <small class="pull-right">60%</small>
                                                </h3>
                                                <div class="progress xs">
                                                    <div class="progress-bar progress-bar-red" style="width: 60%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                        <span class="sr-only">60% Complete</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>end task item
                                        <li>Task item
                                            <a href="#">
                                                <h3>
                                                    Make beautiful transitions
                                                    <small class="pull-right">80%</small>
                                                </h3>
                                                <div class="progress xs">
                                                    <div class="progress-bar progress-bar-yellow" style="width: 80%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                        <span class="sr-only">80% Complete</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>end task item
                                    </ul>
                                </li>
                                <li class="footer">
                                    <a href="#">View all tasks</a>
                                </li>
                            </ul>
                       </li> -->
                       <!-- User Account: style can be found in dropdown.less -->
                        <li class="dropdown user user-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="glyphicon glyphicon-user"></i>
                                <!-- <span>Jane Doe <i class="caret"></i></span> -->
                            </a> 
                           
                           <ul class="dropdown-menu">
                                <!-- User image
                                <li class="user-header bg-light-blue">
                                    <img src="img/avatar3.png" class="img-circle" alt="User Image" /> -->
                                   <!--  <p>
                                        Jane Doe - Web Developer
                                        <small>Member since Nov. 2012</small>
                                    </p> -->
                                </li>
                              <!--   Menu Body
                                <li class="user-body">
                                    <div class="col-xs-4 text-center">
                                        <a href="#">Followers</a>
                                    </div>
                                    <div class="col-xs-4 text-center">
                                        <a href="#">Sales</a>
                                    </div>
                                    <div class="col-xs-4 text-center">
                                        <a href="#">Friends</a>
                                    </div>
                                </li> -->
                               <!--  Menu Footer -->
                                <li class="user-footer">
                                    <div class="pull-left">
                                        <a href="retailer_info.jsp" class="btn btn-default btn-flat">Edit Profile</a>
                                    </div>
                                    <div class="pull-right">
                                        <a href="retailer sign_in.jsp" class="btn btn-default btn-flat">Sign out</a>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </nav> 
        </header>
        <div class="wrapper row-offcanvas row-offcanvas-left">
            <!-- Left side column. contains the logo and sidebar -->
            <aside class="left-side sidebar-offcanvas">
                <!-- sidebar: style can be found in sidebar.less -->
                <section class="sidebar">
                    <!-- Sidebar user panel -->
                    <div class="user-panel">
                        <!-- <div class="pull-left image">
                            <img src="" class="img-circle" alt="User Image" />
                        </div> -->
                        <div class="pull-left info">
                        <%
			                HttpSession sees=request.getSession();
                            String name=(String)sees.getAttribute("COMPANY_NAME");
                           
		         %>
                       
                            <p>Hello, <%=name %> </p>
                            

                            <a href="#"><i class="fa fa-circle text-success"></i> </a>
                        </div>
                    </div>
                    <!-- search form -->
                    <!-- <form action="#" method="get" class="sidebar-form">
                        <div class="input-group">
                            <input type="text" name="q" class="form-control" placeholder="Search..."/>
                            <span class="input-group-btn">
                                <button type='submit' name='seach' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
                            </span>
                        </div>
                    </form> --> 
                    <!-- /.search form -->
                    <!-- sidebar menu: : style can be found in sidebar.less -->
                    <ul class="sidebar-menu">
                        <li class="active">
                            <a href="Dashbord.jsp">
                                <i class="fa fa-dashboard"></i> <span>Dashboard</span>
                            </a>
                        </li>
						 <!-- <li class="treeview">
                            <a href="#">
                                <i class="fa fa-bar-chart-o"></i>
                                <span>Categories</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="pages/charts/morris.html"><i class="fa fa-angle-double-right"></i> Add Category</a></li>
                                <li><a href="pages/charts/flot.html"><i class="fa fa-angle-double-right"></i> Add Subcategory</a></li>
                                <li><a href="pages/charts/inline.html"><i class="fa fa-angle-double-right"></i> Manage Category</a></li>
								 <li><a href="pages/charts/inline.html"><i class="fa fa-angle-double-right"></i> View All Category</a></li>
                            </ul>
                        </li> -->
						 <li class="treeview">
                            <a href="#">
                                <i class="fa fa-bar-chart-o"></i>
                                <span>Manage Products</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="Product.jsp"><i class="fa fa-angle-double-right"></i> Add Products</a></li>
                                <li><a href="show_product.jsp"><i class="fa fa-angle-double-right"></i>View Products </a></li>
                                <li><a href="view_details.jsp"><i class="fa fa-angle-double-right"></i>View all Products by Retailers </a></li>
                            </ul>
                        </li>
						  <li class="treeview">
                            <a href="#">
                                <i class="fa fa-bar-chart-o"></i>
                                <span>Orders</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="list_all_orders.jsp"><i class="fa fa-angle-double-right"></i> List All Orders</a></li>
                                <li><a href="#"><i class="fa fa-angle-double-right"></i>Pending Orders</a></li>
                                <li><a href="#"><i class="fa fa-angle-double-right"></i>Complete/Delevered Orders</a></li>
								  <li><a href="Retailer_return.jsp"><i class="fa fa-angle-double-right"></i>Returns</a></li>
                            </ul>
                        </li> 
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-bar-chart-o"></i>
                                <span>Information</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="update_info.jsp"><i class="fa fa-angle-double-right"></i> Edit Profile</a></li>
                                
                            </ul>
                        </li> 
                      
                        <!-- <li class="treeview">
                            <a href="#">
                                <i class="fa fa-laptop"></i>
                                <span>UI Elements</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="pages/UI/buttons.html"><i class="fa fa-angle-double-right"></i> Buttons</a></li>
								<li><a href="pages/UI/editprofile.html"><i class="fa fa-angle-double-right"></i> Edit Profile</a></li>
                            </ul>
                        </li>
                         -->
                       <!--  <li>
                            <a href="pages/calendar.html">
                                <i class="fa fa-calendar"></i> <span>Calendar</span>
                                <small class="badge pull-right bg-red">0</small>
                            </a>
                        </li>
                        <li>
                            <a href="pages/mailbox.html">
                                <i class="fa fa-envelope"></i> <span>Mailbox</span>
                                <small class="badge pull-right bg-yellow">0</small>
                            </a>
                        </li> -->
                        <!-- <li class="treeview">
                            <a href="#">
                                <i class="fa fa-folder"></i> <span>Examples</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="pages/examples/invoice.html"><i class="fa fa-angle-double-right"></i> Invoice</a></li>
                                <li><a href="pages/examples/login.html"><i class="fa fa-angle-double-right"></i> Login</a></li>
                                <li><a href="pages/examples/register.html"><i class="fa fa-angle-double-right"></i> Register</a></li>
                            </ul>
                        </li> -->
                    </ul>
                </section>
                <!-- /.sidebar -->
            </aside>

            <!-- Right side column. Contains the navbar and content of the page -->
            <aside class="right-side">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                     Product Details
                     
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li class="active">Dashboard</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">

                    <!-- Small boxes (Stat box) -->
                    <div class="row">
                        <div class="col-lg-3 col-xs-6">
                            <!-- small box -->
                      </div>
                        <!-- ./col -->
                        <div class="col-lg-3 col-xs-6">
                            <!-- small box -->
                      </div>
                        <!-- ./col -->
                        <div class="col-lg-3 col-xs-6">
                            <!-- small box -->
                      </div>
                        <!-- ./col -->
                        <div class="col-lg-3 col-xs-6">
                            <!-- small box -->
                      </div>
                        <!-- ./col -->
                    </div><!-- /.row -->

                    <!-- top row -->
                    <div class="row">
                        <div class="col-xs-12 connectedSortable">
                            
                        </div><!-- /.col -->
                    </div>
                    <!-- /.row -->

                    <!-- Main row -->
                    <!-- ./wrapper -->
                    <!-- add new calendar event modal -->
                    <!-- jQuery 2.0.2 -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
<div id="wrapper_div" style="width:1122px; height:775px; border:2px groove blue; background-image: url('image/slide1-bg.jpg');">
<form action="Product1" method="POST">
<table id="product_table"  border="1" style="width:600px;height:635px; border:2px groove black; margin-top:6px; margin-left:10px; ">

<tr>
<td colspan="2" style="text-align: center;"></td>
</tr>

<tr>
<td>Category</td>
<td><select name="category" onChange="show_Subcategory(this.value)">
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
<td id="sub_cat"><select name="SUBCATEGORY_NAME" >
<option selected="selected">select subcategory</option></select></td>
</tr>

<tr>
<td>Brand Name</td>
<td id="brand_cat"><select name="BRAND_NAME">
<option selected="selected">select brand</option></select></td>
</tr>



<!----- PRODUCT NAME ---------------------------------------------------------->
<tr>
<td>Product Name</td>
<td><input type="text" id="PRODUCT_NAME" name="PRODUCT_NAME"></td>
<td><input type="button" name="" value="View Database" onclick="window.open('view_other_retailer.jsp?PRODUCT_NAME='+document.getElementById('PRODUCT_NAME').value, 'mywindow', 'width=500,height,toolbar=no,resizable=yes,menubar=yes')">
</td></tr>

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
<td>Company Name</td>
<td>
<select name="COMPANY_NAME" >
<option selected="selected">SELECT Your Company Name</option>

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
<input type="submit" value="Submit"  style="width:60px; height: 35px;"  >
</td>
</tr>
</table>
</form>
</div>

<div id="color_table"  style="width:485px; height:370px; margin-left:620px; margin-top:-765px;border:2px groove black; ">
<form action="Color1" method="POST">
<table  align="center" class="order-list">
    <thead>
        <tr><td style="text-align: center;">color and quantity</td></tr>
    </thead>
    

    <tbody>
  <tr>
<td style="text-align: left;">Product Name</td>
<td><select name="product" >
<option selected="selected">select product </option>
<% String sql2="Select PRODUCT_ID,PRODUCT_NAME from products";
   Connection con2=Db.Condb();
   
   PreparedStatement ps2=con2.prepareStatement(sql2);
   ResultSet rs2=ps2.executeQuery();
   while(rs2.next())
   {
	   String name2=rs2.getString("PRODUCT_NAME");%>
		 <option value="<%=rs2.getInt("PRODUCT_ID")%>"><%=name2%></option>
<%} %>
</select></td></tr>

<tr>
    
        <tr>
        <% int counter=0; %>
            <td style="text-align: center;"><input type="text" id="col" name="color1" placeholder="color"/></td>
            <!-- <td>&nbsp;</td> -->
            <td style="text-align: center;"><input type="text" id="qq" name="quantity1" placeholder="quantity"/></td>
            
            <td colspan="5" style="text-align: center;">
                <input type="button" id="addrow" value="Add More" />
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
<input type="submit" value="Submit"  style="width:60px; height: 35px;"  >
</td>
</tr>
    </tfoot>
 
</table>
</form>
 </div>


<div>
<form action="Image1" method="POST" enctype="multipart/form-data">

<table id="image_table"  style="width:485px; height:360px;  margin-left:620px; margin-top:10px;border:2px groove black;">

<tr>
<td colspan="2" style="text-align: center;">Images</td>
</tr>

 <tr>
<td style="text-align: center;">Product Name</td>
<td><select name="product" onChange="show_color(this.value)">
<option selected="selected">select product</option>
<% String sql3="Select PRODUCT_ID,PRODUCT_NAME from products";
   Connection con3=Db.Condb();
   
   PreparedStatement ps3=con3.prepareStatement(sql3);
   ResultSet rs3=ps3.executeQuery();
   while(rs3.next())
   {
	   String name3=rs3.getString("PRODUCT_NAME");%>
		 <option value="<%=rs3.getInt("PRODUCT_ID")%>"><%=name3%></option>
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
<td colspan="2" align="center">
<input type="submit" value="Submit"  style="width:60px; height: 35px;"  >
</td>
</tr>
</table>
</form>

</div>

        <!-- jQuery UI 1.10.3 -->
        <script src="js1/jquery-ui-1.10.3.min.js" type="text/javascript"></script>
        <!-- Bootstrap -->
        <script src="js1/bootstrap.min.js" type="text/javascript"></script>
        <!-- Morris.js charts -->
        <script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
        <script src="js1/plugins/morris/morris.min.js" type="text/javascript"></script>
        <!-- Sparkline -->
        <script src="js1/plugins/sparkline/jquery.sparkline.min.js" type="text/javascript"></script>
        <!-- jvectormap -->
        <script src="js1/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js" type="text/javascript"></script>
        <script src="js1/plugins/jvectormap/jquery-jvectormap-world-mill-en.js" type="text/javascript"></script>
        <!-- fullCalendar -->
        <script src="js1/plugins/fullcalendar/fullcalendar.min.js" type="text/javascript"></script>
        <!-- jQuery Knob Chart -->
        <script src="js1/plugins/jqueryKnob/jquery.knob.js" type="text/javascript"></script>
        <!-- daterangepicker -->
        <script src="js1/plugins/daterangepicker/daterangepicker.js" type="text/javascript"></script>
        <!-- Bootstrap WYSIHTML5 -->
        <script src="js1/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js" type="text/javascript"></script>
        <!-- iCheck -->
        <script src="js1/plugins/iCheck/icheck.min.js" type="text/javascript"></script>

        <!-- AdminLTE App -->
        <script src="js1/AdminLTE/app.js" type="text/javascript"></script>
        
        <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
        <script src="js1/AdminLTE/dashboard.js" type="text/javascript"></script>        

</body>
</html>
