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

</script>
</head>

<body>

<div class="mainwrapper">
    
    <div class="header">
        <div class="logo"><a href="Dashboard.jsp"><img src="Images/ad.jpg" alt="" /></a></div>
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
                </li> -->
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
						<li><a href="Return_View.jsp"> Returns </a></li>
                     </ul>
			     </li>
				
               <!--  <li><a href="Buttons.jsp"><span class="iconfa-hand-up"></span> Buttons &amp; Icons</a></li> -->
               
               
                <li class="dropdown"><a href=""><span class="iconfa-th-list"></span> Manage user</a>
                	<ul>
                    	<li><a href="customer_details.jsp">Customer Details</a></li>
                    	<li><a href="Retailer_details.jsp">Retailer Details</a></li>
                        
                    </ul>
                </li>

               
                <li class="active"><a href="Messages.jsp"><span class="iconfa-envelope"></span> Messages</a></li>
                <li><a href="Calender.jsp"><span class="iconfa-calendar"></span> Calendar</a></li>
                <li class="dropdown"><a href=""><span class="iconfa-book"></span> Other Pages</a>
                	<ul>
                    	
                        <li><a href="EditProfile.jsp">Edit Profile</a></li>
                      <!--   <li><a href="Invoice.jsp">Invoice Page</a></li> -->
                        
                    </ul>
                </li>
                <li class="dropdown"><a href=""><span class="iconfa-th-list"></span> Reoports</a>
                	<ul>
                	    <li ><a href="User Review.jsp">User Review</a>
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
            <li>Messages</li>
        </ul>
        
        <div class="pageheader">
            <form action="results.html" method="post" class="searchbar">
                <input type="text" name="keyword" placeholder="To search type and hit enter..." />
            </form>
            <div class="pageicon"><span class="iconfa-envelope"></span></div>
            <div class="pagetitle">
                <h5>Sample Text Here</h5>
                <h1>Messages</h1>
            </div>
        </div><!--pageheader-->
        
        <div class="maincontent">
            <div class="maincontentinner">
                <div class="messagepanel">
                    <div class="messagehead">
                        <button class="btn btn-success btn-large">Compose Message</button>
                    </div><!--messagehead-->
                    <div class="messagemenu">
                        <ul>
                            <li class="back"><a><span class="iconfa-chevron-left"></span> Back</a></li>
                            <li class="active"><a href=""><span class="iconfa-inbox"></span> Inbox</a></li>
                            <li><a href=""><span class="iconfa-plane"></span> Sent</a></li>
                            <li><a href=""><span class="iconfa-edit"></span> Draft</a></li>
                            <li><a href=""><span class="iconfa-trash"></span> Trash</a></li>
                        </ul>
                    </div>
                    <div class="messagecontent">
                        <div class="messageleft">
                            <form class="messagesearch">
                                <input type="text" class="input-block-level" placeholder="Search message and hit enter..." />
                            </form>
                            <ul class="msglist">
                                <li class="selected">
                                    <div class="thumb"><img src="images/photos/thumb1.png" alt="" /></div>
                                    <div class="summary">
                                        <span class="date pull-right"><small>April 03, 2013</small></span>
                                        <h4>Leevanjo Sarce</h4>
                                        <p><strong>Lorem ipsum dol..</strong> - Hey, leevanjo doloe..</p>
                                    </div>
                                </li>
                                <li class="unread">
                                    <div class="thumb"><img src="images/photos/thumb2.png" alt="" /></div>
                                    <div class="summary">
                                        <span class="date pull-right"><small>April 03, 2013</small></span>
                                        <h4>Yanmar Iobi</h4>
                                        <p><strong>Lorem ipsum dol..</strong> - Hey, leevanjo doloe..</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="thumb"><img src="images/photos/thumb3.png" alt="" /></div>
                                    <div class="summary">
                                        <span class="date pull-right"><small>April 03, 2013</small></span>
                                        <h4>Nusjan Wanlacal</h4>
                                        <p><strong>Lorem ipsum dol..</strong> - Hey, leevanjo doloe..</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="thumb"><img src="images/photos/thumb4.png" alt="" /></div>
                                    <div class="summary">
                                        <span class="date pull-right"><small>April 03, 2013</small></span>
                                        <h4>Zaham Sindilmaca</h4>
                                        <p><strong>Lorem ipsum dol..</strong> - Hey, leevanjo doloe..</p>
                                    </div>
                                </li>
                                <li class="unread">
                                    <div class="thumb"><img src="images/photos/thumb5.png" alt="" /></div>
                                    <div class="summary">
                                        <span class="date pull-right"><small>April 03, 2013</small></span>
                                        <h4>Weno Carasbong</h4>
                                        <p><strong>Lorem ipsum dol..</strong> - Hey, leevanjo doloe..</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="thumb"><img src="images/photos/thumb6.png" alt="" /></div>
                                    <div class="summary">
                                        <span class="date pull-right"><small>April 03, 2013</small></span>
                                        <h4>Ratesoc Maitum</h4>
                                        <p><strong>Lorem ipsum dol..</strong> - Hey, leevanjo doloe..</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="thumb"><img src="images/photos/thumb7.png" alt="" /></div>
                                    <div class="summary">
                                        <span class="date pull-right"><small>April 03, 2013</small></span>
                                        <h4>Venro Leongal</h4>
                                        <p><strong>Lorem ipsum dol..</strong> - Hey, leevanjo doloe..</p>
                                    </div>
                                </li>
                                <li class="unread">
                                    <div class="thumb"><img src="images/photos/thumb1.png" alt="" /></div>
                                    <div class="summary">
                                        <span class="date pull-right"><small>April 03, 2013</small></span>
                                        <h4>Leevanjo Sarce</h4>
                                        <p><strong>Lorem ipsum dol..</strong> - Hey, leevanjo doloe..</p>
                                    </div>
                                </li>
                                <li class="unread">
                                    <div class="thumb"><img src="images/photos/thumb2.png" alt="" /></div>
                                    <div class="summary">
                                        <span class="date pull-right"><small>April 03, 2013</small></span>
                                        <h4>Yanmar Iobi</h4>
                                        <p><strong>Lorem ipsum dol..</strong> - Hey, leevanjo doloe..</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="thumb"><img src="images/photos/thumb3.png" alt="" /></div>
                                    <div class="summary">
                                        <span class="date pull-right"><small>April 03, 2013</small></span>
                                        <h4>Nusjan Wanlacal</h4>
                                        <p><strong>Lorem ipsum dol..</strong> - Hey, leevanjo doloe..</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="thumb"><img src="images/photos/thumb4.png" alt="" /></div>
                                    <div class="summary">
                                        <span class="date pull-right"><small>April 03, 2013</small></span>
                                        <h4>Zaham Sindilmaca</h4>
                                        <p><strong>Lorem ipsum dol..</strong> - Hey, leevanjo doloe..</p>
                                    </div>
                                </li>
                                <li class="unread">
                                    <div class="thumb"><img src="images/photos/thumb5.png" alt="" /></div>
                                    <div class="summary">
                                        <span class="date pull-right"><small>April 03, 2013</small></span>
                                        <h4>Weno Carasbong</h4>
                                        <p><strong>Lorem ipsum dol..</strong> - Hey, leevanjo doloe..</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="thumb"><img src="images/photos/thumb6.png" alt="" /></div>
                                    <div class="summary">
                                        <span class="date pull-right"><small>April 03, 2013</small></span>
                                        <h4>Ratesoc Maitum</h4>
                                        <p><strong>Lorem ipsum dol..</strong> - Hey, leevanjo doloe..</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="thumb"><img src="images/photos/thumb7.png" alt="" /></div>
                                    <div class="summary">
                                        <span class="date pull-right"><small>April 03, 2013</small></span>
                                        <h4>Venro Leongal</h4>
                                        <p><strong>Lorem ipsum dol..</strong> - Hey, leevanjo doloe..</p>
                                    </div>
                                </li>
                            </ul>
                        </div><!--messageleft-->
                        <div class="messageright">
                            <div class="messageview">
                                
                                <div class="btn-group pull-right">
                                    <button data-toggle="dropdown" class="btn dropdown-toggle">Actions <span class="caret"></span></button>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Forward</a></li>
                                        <li><a href="#">Report as Spam</a></li>
                                        <li><a href="#">Delete Message</a></li>
                                        <li><a href="#">Print Message</a></li>
                                        <li><a href="#">Mark as Unread</a></li>
                                    </ul>
                                </div>
                                
                                <h1 class="subject">Lorem ipsum dolor sit amet, consectetur adipisicing elit</h1>
                                <div class="msgauthor">
                                    <div class="thumb"><img src="images/photos/thumb1.png" alt="" /></div>
                                    <div class="authorinfo">
                                        <span class="date pull-right">April 03, 2012</span>
                                        <h5><strong>Leevanjo Sarce</strong> <span>hisemail@hisdomain.com</span></h5>
                                        <span class="to">to me@mydomain.com</span>
                                    </div><!--authorinfo-->
                                </div><!--msgauthor-->
                                <div class="msgbody">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                    <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas</p>
                                    
                                    <p>It aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>
                                    
                                    <p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>
                                    <p>Regards, <br />Leevanjo</p>
                                </div><!--msgbody-->
                                
                                <div class="msgauthor">
                                    <div class="thumb"><img src="images/photos/thumb10.png" alt="" /></div>
                                    <div class="authorinfo">
                                        <span class="date pull-right">April 03, 2012</span>
                                        <h5><strong>Draneim Daamul</strong> <span>myemail@mydomain.com</span></h5>
                                        <span class="to">to his@hisdomain.com</span>
                                    </div><!--authorinfo-->
                                </div><!--msgauthor-->
                                <div class="msgbody">
                                    <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas</p>
                                    
                                    <p>It aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>
                                    <p>- Draneim</p>
                                </div><!--msgbody-->
                                
                                <div class="msgauthor">
                                    <div class="thumb"><img src="images/photos/thumb1.png" alt="" /></div>
                                    <div class="authorinfo">
                                        <span class="date pull-right">April 03, 2012</span>
                                        <h5><strong>Leevanjo Sarce</strong> <span>hisemail@hisdomain.com</span></h5>
                                        <span class="to">to me@mydomain.com</span>
                                    </div><!--authorinfo-->
                                </div><!--msgauthor-->
                                <div class="msgbody">
                                    <p>It aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>
                                </div><!--msgbody-->
                                
                                <div class="msgauthor">
                                    <div class="thumb"><img src="images/photos/thumb10.png" alt="" /></div>
                                    <div class="authorinfo">
                                        <span class="date pull-right">April 03, 2012</span>
                                        <h5><strong>Draneim Daamul</strong> <span>myemail@mydomain.com</span></h5>
                                        <span class="to">to his@hisdomain.com</span>
                                    </div><!--authorinfo-->
                                </div><!--msgauthor-->
                                <div class="msgbody">                                    
                                    <p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur?</p>
                                </div><!--msgbody-->
                            </div><!--messageview-->
                            
                            <div class="msgreply">
                                <div class="thumb"><img src="images/photos/thumb1.png" alt="" /></div>
                                <div class="reply">
                                    <textarea placeholder="Type something here to reply"></textarea>
                                </div><!--reply-->
                            </div><!--messagereply-->
                            
                        </div><!--messageright-->
                    </div><!--messagecontent-->
                </div><!--messagepanel-->
                
                <div class="footer">
                    <div class="footer-left">
                        <span>&copy; 2015.Sherish Softech Pvt Ltd All Rights Reserved.</span>
                    </div>
                    
                </div><!--footer-->
                
                
            </div><!--maincontentinner-->
        </div><!--maincontent-->
        
    </div><!--rightpanel-->
    
</div><!--mainwrapper-->

</body>
</html>
