<%@page import="model.other_model"%>
<%@page import="java.util.Iterator"%>
<%@page import="bean.otherBean"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,db.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript">
function f()
{
	if("${param.msg}")
		alert("${param.msg}");
}
function product_show(str)
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
	  xhttp.open("GET", "Product_list.jsp?category_id="+str, true);
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
	  xhttp.open("GET", "Brand_details2.jsp?category_id="+str, true);
	  xhttp.send();
}

function show_productdetails(str)
{
	var xhttp; 
	  if (str == "") {
	    document.getElementById("company_name").innerHTML = "";
	    return;
	  }
	  xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (xhttp.readyState == 4 && xhttp.status == 200) {
	    document.getElementById("company_name").innerHTML = xhttp.responseText;
	    }
	  };
	  xhttp.open("GET", "Categorywise_product.jsp?category_id="+str, true);
	  xhttp.send();
}

function product_details(str)
{
	var xhttp; 
	  if (str == "") {
	    document.getElementById("ww").innerHTML = "";
	    return;
	  }
	  xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (xhttp.readyState == 4 && xhttp.status == 200) {
	    document.getElementById("ww").innerHTML = xhttp.responseText;
	    }
	  };
	  xhttp.open("GET", "asd.jsp?category_id="+str, true);
	  xhttp.send();
}

</script>
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script type="text/javascript">


</script> 



        <title>View Other Retailer</title>
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


</head>

<body class="skin-blue">
        <!-- header logo: style can be found in header.less -->
        <header class="header">
            <a href="Dashbord.jsp" class="logo">
                <!-- Add the class icon to your logo image or logo icon to add the margining -->
                Retailer            </a>
            <!-- Header Navbar: style can be found in header.less -->
            <nav class="navbar navbar-static-top" role="navigation">
                <!-- Sidebar toggle button-->
                <a href="#" class="navbar-btn sidebar-toggle" data-toggle="offcanvas" role="button">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>                </a>
                <div class="navbar-right">
                    <ul class="nav navbar-nav">
                        <!-- Messages: style can be found in dropdown.less-->
                        <!--  <li class="dropdown messages-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-envelope"></i>
                                <span class="label label-success">4</span>                            </a>
                            <ul class="dropdown-menu">
                                <li class="header">You have 4 messages</li>
                                <li>  -->
                                    <!-- inner menu: contains the actual data -->
                                     <!-- <ul class="menu">
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
                                        </li>end message -->
                                        <!--  <li>
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="img/avatar2.png" class="img-circle" alt="user image"/>
                                                </div>
                                                <h4>
                                                    Retailer LTE Design Team
                                                    <small><i class="fa fa-clock-o"></i> 2 hours</small>
                                                </h4>
                                                <p>Why not buy a new awesome theme?</p>
                                            </a>
                                        </li>
                                        <li> -->
                                           <!--  <a href="#">
                                                <div class="pull-left">
                                                    <img src="img/avatar.png" class="img-circle" alt="user image"/>
                                                </div>
                                                <h4>
                                                    Developers
                                                    <small><i class="fa fa-clock-o"></i> Today</small>
                                                </h4>
                                                <p>Why not buy a new awesome theme?</p>
                                            </a>
                                        </li>  -->
                                        <!--  <li>
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
                                        </li> -->
                                        <!--  <li>
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
                                    <!-- </ul>
                                </li>
                                <li class="footer"><a href="#">See All Messages</a></li>
                            </ul>
                      </li>  -->
                        <!-- Notifications: style can be found in dropdown.less -->
                         <!-- <li class="dropdown notifications-menu">
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
 -->                  <!-- </ul>
                                </li> -->
                               <!--  <li class="footer"><a href="#">View all</a></li>
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
                                    <!-- inner menu: contains the actual data
                                    <ul class="menu">
                                        <li>Task item --> 
                                          <!--   <a href="#">
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
                                                </div> -->
                                            <!--  </a>
                                        </li>end task item
                                    </ul>
                                </li>
                              <li class="footer">
                                    <a href="#">View all tasks</a>
                                </li>
                            </ul> -->
                      </li>
                        <!-- User Account: style can be found in dropdown.less -->
                        <li class="dropdown user user-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="glyphicon glyphicon-user"></i>
                                 
                            <ul class="dropdown-menu">
                                <!-- User image
                                <li class="user-header bg-light-blue">
                                    <img src="img/avatar3.png" class="img-circle" alt="User Image" />
                                    <p>
                                        koushik
                                        <small>Retailer</small>
                                    </p>
                                </li> --> 
                                <!-- Menu Body --!>
                                 <!-- <li class="user-body">
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
                                <!-- Menu Footer-->
                                 <li class="user-footer">
                                    <div class="pull-left">
                                        <a href="retailer_info.jsp" class="btn btn-default btn-flat">Profile</a>
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
						<!--  <li class="treeview">
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
                                <<!-- li><a href="pages/charts/inline.html"><i class="fa fa-angle-double-right"></i>Low Stock Products</a></li> -->
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
                       <!--  <li>
                            <a href="pages/widgets.html">
                                <i class="fa fa-th"></i> <span>Widgets</span> <small class="badge pull-right bg-green">new</small>
                            </a>
                        </li> -->
                      
                        <!-- <li class="treeview">
                            <a href="#">
                                <i class="fa fa-laptop"></i>
                                <span>UI Elements</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="pages/UI/buttons.html"><i class="fa fa-angle-double-right"></i> Buttons</a></li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-edit"></i> <span>Forms</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">
                              
                            
                                <li><a href="pages/forms/editors.html"><i class="fa fa-angle-double-right"></i> Edit Profile </a></li>
                            </ul>
                        </li>
                        -->
                        <!-- <li>
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
                       View All Products                       
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li class="active">Dashboard</li>
                    </ol>
                </section>



<form action=Show_Product method="post" ></form>
 
<table border="1" align="center">
<h2 align="center"><u>Search products</u></h2>
<tr >
<td>SELECT CATEGORY</td>
<td><select name="CATEGORY" onchange="show_brand(this.value)">
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
</select></td>

<td>Brand Name</td>
<td id="brand_cat"><select name="brand">
<option selected="selected">SELECT BRAND</option>


</select></td>


<td>Company Name</td>
<td id="company_name"><select name="products" >
<option selected="selected">SELECT COMPANY</option></select></td>

</tr>

</table>
<br>
<h3 align="center"><u>View All Product Details</u></h3><br>
<%try
{
	
    
ArrayList<otherBean> ar=other_model.show();
	
if(ar!=null)
	
	
	
{%><div><center><table id="ww" border="3" style="width:500px;height:50px; border:2px groov black; /* margin-top:1px;margin-left:60px; */"><th>PRODUCT_NAME</th><th>COMPANY_NAME</th><th>SALES_PRICE</th>
</center></table>

<!-- <style>
table, th, td {
    border: 3px solid black;
    hight:30px;
    width:20px;
    
}
</style> -->

<center>
	<% Iterator<otherBean> it=ar.iterator();
	int cnt=0;
	while(it.hasNext())
	{
		otherBean ob=it.next();
	
	    cnt++;
	    System.out.println("product_name "+ob.getPRODUCT_NAME());
	   
	    System.out.println("company_name "+ob.getCOMPANY_NAME());
	    System.out.println("sales_price "+ob.getSALES_PRICE());
	   
		%>
		<table>
		<tr>
		<td><%=ob.getPRODUCT_NAME()%></td>
	
		<td><%=ob.getCOMPANY_NAME() %></td>
		<td><%=ob.getSALES_PRICE()%></td>
			
	   </tr>
	   </center>
	  
<% }
}
}

	catch(Exception ex)
		{
			ex.printStackTrace();
		}%>
		
	
  </table>
</div>
</form>

 <!-- add new calendar event modal -->


        <!-- jQuery 2.0.2 -->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
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
        <script src="js/plugins/jvectormap/jquery-jvectormap-world-mill-en.js" type="text/javascript"></script>
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