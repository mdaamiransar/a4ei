<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

</head>
<body>

<div class="mainwrapper">
    
    <div class="header">
        <div class="logo"><a href="Dashboard.jsp"><img src="Images/ad.jpg" alt="ad" width="163" height="42" /></a></a></div>
        <div class="headerinner">
            <ul class="headmenu">
                <li class="odd">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
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
                <li class="right">
                    <div class="userloggedinfo">
                    
                      <%
			                HttpSession sees=request.getSession();
                            String name=(String)sees.getAttribute("Username");
		         %>
                        <img src="images/photos/thumb1.png" alt="" />
                        <div class="userinfo">
                             <h5> <%=name %> </h5> 
                            <ul>
                                <li><a href="EditProfile.jsp">Edit Profile</a></li>
                                <li><a href="">Account Settings</a></li>
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
                        <li><a href="SubCategory1.jsp"> Add Subcategory </a></li>
                        <li><a href="Brand1.jsp"> Add Brand </a></li>
						
                     </ul>
			     </li>
				 <li class="dropdown"><a href=""><span class="iconfa-th-list"></span> Manage Products</a>
                	<ul>
                    	<li><a href="products1.jsp">Add Products</a></li>
                        <li><a href="View products.jsp">View Products</a></li>
                        <li><a href="#">Low Stock Products</a></li>
                     </ul>
			     </li>
				 <li class="dropdown"><a href=""><span class="iconfa-th-list"></span> Orders </a>
                	<ul>
                    	<li><a href="all_order.jsp"> List All Orders </a></li>
                        <li><a href="#"> Pending Orders </a></li>
                        <li><a href="#"> Complete/Delevered Orders </a></li>
                        <li><a href="Search Orders.jsp"> Search Orders </a></li>
						<li><a href="#"> Returns </a></li>
                     </ul>
			     </li>
				 
                <li><a href="Buttons.jsp"><span class="iconfa-hand-up"></span> Buttons &amp; Icons</a></li>
               
               
                <li class="dropdown"><a href=""><span class="iconfa-th-list"></span> Manage User</a>
                	<ul>
                    	<li><a href="customer_details.jsp">Customer Details</a></li>
                    	<li><a href="Retailer_details.jsp">Retailer Details</a></li>
                        
                    </ul>
                </li>

               
                <li><a href="Messages.jsp"><span class="iconfa-envelope"></span> Messages</a></li>
                <li><a href="Calender.jsp"><span class="iconfa-calendar"></span> Calendar</a></li>
                <li class="dropdown active"><a href=""><span class="iconfa-book"></span> Other Pages</a>
                	<ul>
                    	
                        <li><a href="EditProfile.jsp">Edit Profile</a></li>
                        <li class="active"><a href="Invoice.jsp">Invoice Page</a></li>
                        
                    </ul>
                </li>
                <li class="dropdown"><a href=""><span class="iconfa-th-list"></span> Reports</a>
                	<ul>
                	    <li ><a href="User Review.jsp">User Review</a>
                    	<li class="dropdown"><a href="">Sales Report</a>
                        <ul>
                            <li><a href="">Items Sold</a></li>
                            <li><a href="">Sales Total</a></li>
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
        
        <div class="pageheader">
            <form action="results.html" method="post" class="searchbar">
                <input type="text" name="keyword" placeholder="To search type and hit enter..." />
            </form>
            <div class="pageicon"><span class="iconfa-money"></span></div>
            <div class="pagetitle">
                <h5>Sample Text Here</h5>
                <h1>Sample Invoice</h1>
            </div>
        </div><!--pageheader-->
        
        <div class="maincontent">
            <div class="maincontentinner">
                
                <div class="row-fluid">    
                    
                    <div class="span6">
                        <div class="invoice_logo"><img src="images/ad.jpg" alt="" width="133" height="46" class="img-polaroid" /></div>
                  
                        <table class="table table-bordered table-invoice">
                            <tr>
                                <td class="width30">ORDER ID: </td>
                                <td class="width70"><strong>John Doe</strong></td>
                            </tr>
                            <tr>
                                <td>SELLER::</td>
                                <td>HF12-23DFF</td>
                            </tr>
                            <tr>
                                <td>ORDER DATE:</td>
                                <td>Company Website Design</td>
                            </tr>
							<tr>
                                <td>AMOUNT PAID:</td>
                                <td>Company Website Design</td>
                            </tr>
                        </table>
                    </div><!--span6-->
            
                    <div class="span6">
                        
						<table class="table table-bordered table-product details">
                            <tr>
                                <td class="width30">PRODUCT DETAILS:</td>
                                <td class="width78">
                                    <strong>ThemePixels, Inc.</strong> <br />
                                    201 Something St., Something Town, <br />
                                    YT 242, Country 6546 <br />
                                    Tel No: 324 445-4544 <br />
                                    Email: youremail@companyname.com
                                </td>
                            </tr>
                        </table>
						<br/>
                  
                        <table class="table table-bordered table-invoice">
                            <tr>
                                <td class="width30">Invoice ID:</td>
                                <td class="width70"><strong>I-2321</strong></td>
                            </tr>
                            <tr>
                                <td>Issue Date:</td>
                                <td><strong>April 23, 2013</strong></td>
                            </tr>
                            <tr>
                                <td>Due Date:</td>
                                <td><strong>April 30, 2013</strong></td>
                            </tr>
                        </table>
                        
                </div><!--span6-->
            </div><!--row-fluid-->
            
            <div class="clearfix"><br /></div>
            
            <table class="table table-bordered table-invoice-full">
                <colgroup>
                    <col class="con0 width15" />
                    <col class="con1 width45" />
                    <col class="con0 width5" />
                    <col class="con1 width15" />
                    <col class="con0 width20" />
                </colgroup>
                <thead>
                    <tr>
                        <th class="head0">Type</th>
                        <th class="head1">Description</th>
                        <th class="head0 right">Quantity</th>
                        <th class="head1 right">Unit Price</th>
                        <th class="head0 right">Amount</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Website Design</td>
                        <td>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae</td>
                        <td class="right">2</td>
                        <td class="right">$150</td>
                        <td class="right"><strong>$300</strong></td>
                    </tr>
                    <tr>
                        <td>Firefox Plugin</td>
                        <td>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque</td>
                        <td class="right">1</td>
                        <td class="right">$1,200</td>
                        <td class="right"><strong>$1,2000</strong></td>
                    </tr>
                    <tr>
                        <td>iPhone App</td>
                        <td>Et harum quidem rerum facilis est et expedita distinctio</td>
                        <td class="right">2</td>
                        <td class="right">$850</td>
                        <td class="right"><strong>$1,700</strong></td>
                    </tr>
                    <tr>
                        <td>Android App</td>
                        <td>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut</td>
                        <td class="right">3</td>
                        <td class="right">$850</td>
                        <td class="right"><strong>$2,550</strong></td>
                    </tr>
                    <tr>
                        <td>Wordpress Template</td>
                        <td>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque</td>
                        <td class="right">5</td>
                        <td class="right">$50</td>
                        <td class="right"><strong>$250</strong></td>
                    </tr>
              </tbody>
              </table>
                                
                <table class="table invoice-table">
                    <tbody>
                        <tr>
                        	<td class="width65 msg-invoice">
          						<h4>Message:</h4>
          						<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. </p>
                            </td>
                            <td class="width15 right numlist">
                            	  <strong>Subtotal</strong>
                                <strong>Tax (5%)</strong>
                                <strong>Discount</strong>
                            </td>
                            <td class="width20 right numlist">
                                <strong>$1,000</strong>
                                <strong>$320</strong>
                                <strong>$50</strong>
                            </td>
                        </tr>
                    </tbody>
          </table>
			
          <div class="amountdue">
          	<h1><span>Amount Due:</span> $1,370.00</h1> <br />
            <a href="" class="btn btn-primary btn-large">Pay Invoice</a>
          </div>
          
          <div class="footer">
                    <div class="footer-left">
                        <span>&copy; 2015. Sherish Softech PVT LTD. All Rights Reserved.</span>
                    </div>
                   
              </div><!--footer-->
          
            </div><!--maincontentinner-->
        </div><!--maincontent-->
        
    </div><!--rightpanel-->
    
</div><!--mainwrapper-->
</body>
</html>