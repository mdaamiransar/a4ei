<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,db.*" import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Online Shopping Mall India @esamagri.com</title>
    
    <!-- Google Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="css2/bootstrap.min.css">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="css2/font-awesome.min.css">
    
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css2/owl.carousel.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css2/responsive.css">
    <link rel="stylesheet" href="css2/loginpopup.css">
    <link rel="stylesheet" href="css2/navbar.css">
    <link rel="stylesheet" href="css2/style.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
       <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
   	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  
	 <script type="text/javascript" src="js3/jquery-1.4.2.min.js"></script>
     <script src="js3/jquery.autocomplete.js"></script> 
  
  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 100%;
      margin: auto;
  }
  </style>

      
    <script language="JavaScript" type="text/javascript">
	function login(showhide) {
		if (showhide == "show") {
			document.getElementById('popupbox').style.visibility = "visible";
		} else if (showhide == "hide") {
			document.getElementById('popupbox').style.visibility = "hidden";
		}
	}

	function show_Date()
	{
		
		document.getElementById("REVIEW_DATE").value=new Date();
		
		
	}
	
	function select_seller_price(str,str1)
	{
		var xhttp;
		
		 var url="Select_Price.jsp?Seller_Name="+str+"&Product_Id="+str1;
	
		  if (window.XMLHttpRequest) {
		    // code for modern browsers
		    xhttp = new XMLHttpRequest();
		    } else {
		    // code for IE6, IE5
		    xhttp = new ActiveXObject("Microsoft.XMLHTTP");
		  }
		  xhttp.onreadystatechange = function() {
		    if (xhttp.readyState == 4 && xhttp.status == 200) {
		      document.getElementById("price").innerHTML = xhttp.responseText;
		      
		   
		    }
		  };
		  xhttp.open("GET", url, true);
		  xhttp.send(); 
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
	
	
	jQuery(function(){
		$("#search-box").autocomplete("SearchList.jsp");
	});
	
	</script>   
       
    
    
    
  </head>
  <body>
 
   <% String PRODUCT_NAME="";
   String seller="";%>
 <div class="header-area">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="user-menu">
                        <ul>
                            <li> 
                            
                            <form action="LoginServlet4" method="post">
                              
			
		<%	String email1 = (String)session.getAttribute("email");
			
			System.out.println("Email is" + email1);
			if (email1 != null) {
				
		%>
              <a href="myaccount.jsp"><i class="fa fa-user"> </i> My Account </a>         
                    
		
<%} else{%>
		       <a href="login3.jsp"> <i class="fa fa-user"></i> My Account </a>
                        <%} %>
                                            
                                            
                                     </form>     </li>
                          
                            <li> <%
	
			
			String email6 = (String)session.getAttribute("email");
			
			System.out.println("Email is" + email6);
			if (email6 != null) {
				
		%>
                  <li><a  href="view_Registered_cart.jsp">MY cart</a></li>
                           
                    
		
<%} else{%>
		        <li><a  href="log_in5.jsp">My cart</a></li>
                            
                        
                        <%} %></li>
                        
                       <a href="retailer sign_in.jsp"><i class="fa fa-user"> </i> seller</a>              
                            <li><div id="WinLay">
                            
                            
                       
 
		<div id="popupbox" class="LoginFormaa bb">
			<form action="LoginServlet" method="post">
				<ul>
				<li>
				<input type="hidden" name="page" value="index2.jsp"/> 
				
				</li>
					<li><label for="usermail"
						style="color: white; text-shadow: 0px 0px 3px white;">Email</label>
						<input type="email" name="usermail" id="usermail"
						placeholder="yourmail@email.com" required
						title="Enter Your EMAIL ID" style="height: 30px; width: 240px;" /></li>
					<li><label for="password"
						style="color: white; text-shadow: 0px 0px 3px white;">Password</label>
						<input type="password" name="password" placeholder="password"
						required title="Enter Your PASSWORD"
						style="height: 30px; width: 240px;" /></li></br></br></br></br>
						<%String error=request.getParameter("Message");
						if(error!=null){%>
						<li><font color="red"><%=error%></font></li><%} %>
					<li ><input type="submit" value="Login"
						style="height: 40px; width: 140px; margin-left: 80px;" /></li>
					<li><a href="Customer_Signup.jsp"><input type="button" value="Register"
						style="height: 40px; width: 140px; "/></a></li>
						
				</ul>
		

			<li
				style="margin-left: 465px; margin-top: -140px; border-radius: 5px; box-shadow: 0px 0px 14px #ffffff; padding: 6px 7px 4px 7px;"><a
				href="javascript:login('hide');"
				style="color: black; text-decoration: none !important;"
				title="Close">X</a></li>
			<li align="center;" 
				style="margin-top: 4px; margin-left: 126px; margin-bottom: 10px;"><a
				href="#"
				style="color:black; text-decoration: none !important; text-shadow: 0px 0px 3px white; font-size: 14px;">Forgot
					Password?</a></li>

			<div class="LoginFormDec" align="center">
				
				<hr
					style="margin-top: 30px; margin-bottom: 10px; margin-left: -10px; width: 98%;">
					<img src="img/luxury-shoping-logo.gif" align="center"></br>
					<p >Looking for shopping our website is ready for your requirement click & shop here today  </p>
			</div>
			
			<div class="LoginFormDec2">
				
			</div>
	
</form>
		<div id="body1" >

		

			<div id="loginwrapper">
				
				
				
				
			
			

			



			<script type="text/javascript">
				onload = function() {
					status();
				}
			</script>

			
			
				<div class="greetUserExt">
					<div class="greetUser">
						
					</div>
				</div>
				
				
				
			</div>
			
			</div>
       </div>
		</div></li>    
		     <%
	
			
			String email = (String)session.getAttribute("email");
			
			System.out.println("Email is" + email);
			if (email != null) {
				
		%>
                  <li><a  href="javascript:login('show');"><i class="fa fa-user"></i><font color="red">Hi <%=email %></font></a></li>
                            <li><a href="Logout.jsp"><i class="fa fa-user"></i>Logout</a></li>           
                    
		
<%} else{%>
		        <li><a  href="javascript:login('show');"><i class="fa fa-user"></i>Signin</a></li>
                            <li><a href="Customer_Signup.jsp"><i class="fa fa-user"></i>Signup</a></li>
                        </ul>
                        <%} %>
                    </div>
                </div>
                
           
            </div>
        </div>
    </div>  <!-- End header area -->
    
    <div class="site-branding-area">
         <div class="container">
            <div class="row">
                <div class="col-sm-6">
                     <div class="logo">
                        <h1><a href="index2.jsp"><img src="img/logo1.png" style="width: 40%; height: 50%; top: 20px;"></a></h1>
                    </div>
                 </div>
                
                
            </div>
        </div>
    </div> <!-- End site branding area -->
    
    
    
    
       
    <nav>
 <ul>
 <li><a href="index2.jsp" style="width:130px;">Home</a></li>
  <li><a href="show_category.jsp?category=Clothes" class="drop" style="width:160px;">Clothes</a>
  <ul><li><a href="mobile.jsp?subcategory=Men">Men</a><ul>
  <li><a href="brand.jsp?brand=Shirts">Shirts</a></li>
  <li><a href="brand.jsp?brand=Pants">Pants</a></li>
  </ul>
  </li> 
  <li>
  <a href="mobile.jsp?subcategory=Women">Women</a>
  <ul>
  <li>
  <a href="brand.jsp?brand=Saree">Saree</a></li>
  <li><a href="brand.jsp?brand=Kurti">Kurti</a></li>
  <li>
  <a href="brand.jsp?brand=Salwar">Salwar</a>
  </li>
  </ul>
  </li>
  </ul>
  </li>
  
   <li>
   
    <a href="show_category.jsp?category=Electronics" class="drop" style="width:160px;">Electronics</a>
    <ul>
    <li>
    <a href="mobile.jsp?subcategory=Mobiles">Mobiles</a>
    <ul>
    <li>
    <a href="brand.jsp?brand=Nokia">Nokia</a>
    </li>
    <li><a href="brand.jsp?brand=Samsung">Samsung</a></li>
    <li><a href="brand.jsp?brand=Sony">Sony</a></li>    
    </ul>
    </li>
     <li>
     <a href="mobile.jsp?subcategory=Computers">Computers</a>
     <ul>
     <li><a href="brand.jsp?brand=HP">HP</a></li>
     <li><a href="brand.jsp?brand=Dell">Dell</a></li>
     
     </ul>
     </li>
     </ul>
     </li>
     <li>
     <a href="show_category.jsp?category=Jewellery" class="drop"style="width:160px;">Jewellery</a>
     <ul>
     <li><a href="mobile.jsp?subcategory=Earrings">Earrings</a></li>
     <li><a href="mobile.jsp?subcategory=Bangles">Bangles</a></li>
     
    
</ul>
</li>
<li>
    <a href="show_category.jsp?category=Kids" class="drop" style="width:160px;">Kids</a>
    <ul>
    <li>
    <a href="mobile.jsp?subcategory=Toys">Toys</a>
    <ul>
    <li>
    <a href="brand.jsp?brand=For Boys">Boys</a>
    </li>
    <li><a href="brand.jsp?brand=For Girls">Girls</a></li>
    
    </ul>
    </li>
     <li>
     <a href="mobile.jsp?subcategory=Baby Clothing">Clothing</a>
     <ul>
     <li><a href="brand.jsp?brand=Boys Clothing">Boys </a></li>
     <li><a href="brand.jsp?brand=Girls Clothing">Girls</a></li>
     
     </ul>
     </li>
     </ul>
     </li>
     <li>
    <a href="show_category.jsp?category=Furniture" class="drop" style="width:160px;">Furniture</a>
    <ul>
    <li>
    <a href="mobile.jsp?subcategory=Bed and Living">Bed & Living</a>
    <ul>
    <li>
    <a href="brand.jsp?brand=Bedsheets">Bedsheets</a>
    </li>
    <li><a href="brand.jsp?brand=Blankets">Blankets</a></li>
    
    <li><a href="brand.jsp?brand=Curtains">Curtains</a></li>
    
    </ul>
    </li>
     <li>
     <a href="mobile.jsp?subcategory=Kitchen & Dining">Kitchen & Dining</a>
     <ul>
     <li><a href="brand.jsp?brand=Cookware">Cookware</a></li>
     <li><a href="brand.jsp?brand=Dinning">Dinning</a></li>
     </ul>
     </li>
     </ul>
     </li>
     <li>
    <a href="show_category.jsp?category=Books" class="drop" style="width:160px;">Books</a>
    <ul>
    <li>
    <a href="mobile.jsp?subcategory=Pre Orders">Pre Orders</a>
    
    </li>
     <li>
     <a href="mobile.jsp?subcategory=Academics">Academics</a>
     
     
     <li><a href="brand.jsp?brand=Entrance Exam">Entrance Exam</a></li>
     
     
     </li>
     </ul>
     </li>
     <li><a href="show_category.jsp?category=Sports" class="drop" style="width:160px;">Sports</a>
     <ul>
     <li><a href="brand.jsp?brand=OutDoor">OutDoor</a></li>
      <li><a href="brand.jsp?brand=InDoor">InDoor</a></li> 
      <li><a href="brand.jsp?brand=Fitness Accs">Fitness Accs</a></li>
     </ul>
     </li>
     
</ul>
</nav>			
		<div class="mainmenu-area" style="margin-left: 300px;" >
       
                    <ul class="nav navbar-nav" >
                        
                        <li><input type="text" id="search-box" placeholder="search your product" size="90" text-align="center" ></li>
                        <li><input type="submit" value="search"></li>
                        
                      
       
   <span id="clockbox" style="float: right;"></span>
    
                    </ul>
                    
               
    </div>
		
		
      <!-- End mainmenu area --></br></br></br></br>
    
    
    <div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="img/CAMERA.jpg" alt="Chania" width="460" height="345">
      </div>

      <div class="item">
        <img src="img/Shirts.png" alt="Chania" width="460" height="345">
      </div>
    
      <div class="item">
        <img src="img/women big.jpg" alt="Flower" width="460" height="345">
      </div>

      <div class="item">
        <img src="img/Furniture.png" alt="Flower" width="460" height="345">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
    
    
    
    
    
    
    
    
    
   <!--  <div class="slider-area">
        	Slider
			<div class="block-slider block-slider4">
				<ul class="" id="bxslider-home4">
					<li>
						<img src="img/CAMERA.jpg" alt="Slide">
						<div class="caption-group">
							
							
						</div>
					</li>
					<li><img src="img/Shirts.png" alt="Slide">
						<div class="caption-group">
							
						</div>
					</li>
					<li><img src="img/women big.jpg" alt="Slide">
						<div class="caption-group">
							
							</div>
					</li>
					<li><img src="img/Furniture.png" alt="Slide">
						<div class="caption-group">
						  
						</div>
					</li>
				</ul>
			</div>
			</div> --> <!-- End slider area -->
			<!-- ./Slider -->
		
		
		
			<div>
			 <h2 class="section-title">TOP CATEGORIES</h2>
				<ul style="list-style-type: none;">
					
						<li><a href="show_electronics.jsp"><img src="img/mobile.jpg"
							style="margin-top: 20px; width: 210px; height: 160px; display: block; position: relative;">ELECTRONICS</a></li>
						
						<li style="margin-top:-180px; margin-left: 330px;"><a href="show_men.jsp"><img
							src="img/man2.jpg"
							style="width: 210px; height: 160px; display: block; position: relative;">MEN</a></li>
						
						<li style="margin-top:-180px; margin-left: 670px;"><a href="show_women.jsp"><img
							src="img/women.png"
							style="width: 210px; height: 160px; display: block; position: relative;">WOMEN</a></li>
							
						<li style="margin-top:-180px; margin-left: 1000px;"><a href="show_baby&kids.jsp"><img
							src="img/baby.jpg"
							style="width: 210px; height: 160px; display: block; position: relative;">BABY & KIDS</a></li></ul>
							
							</br></br>
							
							
					<ul style="list-style-type: none;">
						<li><a href="show_furniture.jsp"><img src="img/furniture.jpeg"
							style="margin-top: 20px; width: 210px; height: 160px; display: block; position: relative;">FURNITURE</a></li>
						
						<li style="margin-top:-180px; margin-left: 330px;"><a href="show_sports.jsp"><img
							src="img/sports.png"
							style="width: 210px; height: 160px; display: block; position: relative;">SPORTS</a></li>
						
						<li style="margin-top:-180px; margin-left: 670px;display: block; position: relative;"><a href="show_book.jsp"><img
							src="img/books2.jpg"
							style="width: 210px; height: 160px; display:block;position: relative; ">BOOKS</a></li>
							
						<li style="margin-top:-180px; margin-left: 1000px; display: block; position: relative;"><a href="show_kitchen.jsp"><img
							src="img/kitchen.jpg"
							style="width: 210px; height: 160px; display: block;position: relative;">KITCHEN APPLIANCES</a></li></ul>
							
	
			</div>

     
    <div class="brands-area">
    
        <div class="zigzag-bottom"></div>
       
         <div class="container">
            <div class="row">
            
                <div class="col-md-12"> 
                     <div class="brand-wrapper">
                         <div class="brand-list">
                            <img src="img/brand1.png" title="NOKIA" alt="">
                            <img src="img/brand2.png" title="CANON" alt="">
                            <img src="img/brand3.png" title="SAMSUNG"alt="">
                            <img src="img/brand4.png" title="APPLE"alt="">
                            <img src="img/brand5.png" title="HTC"alt="">
                            <img src="img/brand6.png" title="LG"alt="">
                            <img src="img/brand1.png" title="NOKIA"alt="">
                            <img src="img/brand2.png" title="CANON"alt="">                            
                        </div>
                     </div>
                 </div>
            </div>
        </div>
    </div> <!-- End brands area -->
    
    <div class="product-widget-area">
     <h2 class="section-title">OUR PRODUCTS</h2>
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <% try{
            	    Connection con = Db.Condb();
                	String sql1="select t.PRODUCT_ID,p.PRODUCT_NAME,p.MSRP,t.FILE_NAME from image t inner join products p on t.PRODUCT_ID=p.PRODUCT_ID ";
                	PreparedStatement ps=con.prepareStatement(sql1);
                	
                    ResultSet rs=ps.executeQuery(); 
                    ArrayList<Integer> ar=new ArrayList<Integer>();
                    
                    boolean status=true;
                    int i=1;
                   for(int k=1;k<=3;k++) {%>
                <div class="col-md-4">
                    <div class="single-product-widget">
                    <%if(i==1){ %>
                        <%} %>
                        <%if(i==2){ %>
                       <%} %>
                         <%if(i==3){ %>
                        <%} %>
                        
                        <% for(int j=1;j<=3;j++){
                        	if(rs.next()){
                        		
                            	int product_id=rs.getInt(1);
                            	
                            	 
                            	 if(!ar.contains(product_id))
                            	{
                                ar.add(product_id);
                           
                       
                            	String product_name=rs.getString("PRODUCT_NAME"); 
                            	
                            	%>
                            <div class="single-wid-product">
                                <a href="singleproduct.jsp?product_id=<%=product_id%>&filename=<%=rs.getString(4)%>&Product_Name=<%=product_name%>"><img src="Image2?id=<%=product_id%>" alt="" class="product-thumb"></a>
                                <h2><a href="singleproduct.jsp"><%=rs.getString(2)%></a></h2>
                                <div class="product-wid-rating">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="product-wid-price">
                                    <ins>$<%=rs.getDouble(3)%></ins> <del>$<%=rs.getDouble(3)%></del>
                                </div>                            
                            </div>
                            <%}} else
                            	{
                            	
                            	break;
                            	}
                            		}%>
                          
                           
                        </div>
                    </div>
                    <% }
                       i++;  }catch (Exception e) {
                    	// TODO Auto-generated catch block
                    	e.printStackTrace();
                    } %>
            
                </div>
            </div>
        </div> 
        <div align="right"><a href="show_category.jsp?category=electronics" height="2%" weidth="2%"><input type="button" value="view all"></a></div><!-- End product widget area -->
    
   <div class="brands-area">
    
     <%
	
			
			String email15 = (String)session.getAttribute("email");
			
			System.out.println("Email is" + email15);
			if (email15 != null) {
				
		%>
    
     <div style="margin-left:3%;"><a  href="return.jsp"><img src="img/Footer1.png"></a></div>
                           
                    
		
<%} else{%>
		        <div style="margin-left:3%;"><a  href="login4.jsp"><img src="img/Footer1.png"></a></div>
    
    <%} %>
    
    
   
    <%
	
			
			String email17 = (String)session.getAttribute("email");
			
			System.out.println("Email is" + email17);
			if (email17 != null) {
				
		%>
    
     <div style="margin-left:39%;margin-top:-7%;"><a  href="track_order.jsp"><img src="img/Footer.png"></a></div>
    
    
    <%} else{%>
		        <div style="margin-left:39%; margin-top:-7%;"><a href="tracking_order_return.jsp"><img src="img/Footer.png"></a></div>
    
    <%} %> 
    
   
    
    
    
    
   <%
	
			
			String email16 = (String)session.getAttribute("email");
			
			System.out.println("Email is" + email16);
			if (email16 != null) {
				
		%>
    
     <div style="margin-left:75%;margin-top:-7%;"><a  href="myorder.jsp"><img src="img/Footer2.png"></a></div>
                           
                    
		
<%} else{%>
		        <div style="margin-left:75%;margin-top:-7%;"><a  href="log_in6.jsp"><img src="img/Footer2.png"></a></div>
    
    <%} %> 
    
    
    
    
    
    
    
    </div>
    
    
    
    
    <div class="footer-top-area" style="height: 320px">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="footer-about-us">
                        <h2>E<span>Samagri</span></h2>
                        <p>want to shop just make a click and shop today</p>
                       
                    </div>
                </div>
                
                <div class="col-md-3 col-sm-6">
                    <div class="footer-menu">
                        <h2 class="footer-wid-title">User Navigation </h2>
                        <ul>
                           <%	String email10 = (String)session.getAttribute("email");
			
			System.out.println("Email is" + email10);
			if (email10 != null) {
				
		%>
              <a href="myaccount.jsp"><i class="fa fa-user"> </i> My Account </a>         
                    
		
<%} else{%>
		       <a href="login3.jsp"> <i class="fa fa-user"></i> My Account </a>
                        <%} %>
                            <%
	
			
			String email60 = (String)session.getAttribute("email");
			
			System.out.println("Email is" + email60);
			if (email60 != null) {
				
		%>
                  <li><a  href="view_Registered_cart.jsp">MY cart</a></li>
                           
                    
		
<%} else{%>
		        <li><a  href="log_in5.jsp">My cart</a></li>
                            
                        
                        <%} %></li>
                             
                            <li><a href="index2.jsp">Front page</a></li>
                       
		        <li><a href="contact_us.jsp">Contact us</a></li>
                            
                        
                           </ul>                
                    </div>
                </div>
                
                <div class="col-md-3 col-sm-6">
                    <div class="footer-menu">
                        <h2 class="footer-wid-title">Categories</h2>
                        <ul>
                            <li><a href="mobile.jsp?subcategory=mobile">Mobile Phone</a></li>
                            <li><a href="mobile.jsp?subcategory=Bed and Living">Bed & Living</a></li>
                            <li><a href="mobile.jsp?subcategory=tv">TV</a></li>
                            <li><a href="mobile.jsp?subcategory=Computers">Computer</a></li>
                            <li><a href="mobile.jsp?subcategory=laptop">laptop</a></li>
                        </ul>                        
                    </div>
                </div>
                
                <div class="col-md-3 col-sm-6">
                    <div class="footer-newsletter">
                        <h2 class="footer-wid-title">address</h2>
                        <p>DN-10, MARLIN MATRIX, SECTOR-5,KOLKATA</p>
                        
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End footer top area -->
    
    <div class="footer-bottom-area">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="copyright">
                        <p>&copy; 2016 E-SAMAGRI All Rights Reserved. <a href="http://www.esamagri.com" target="_blank">SSTL.com</a></p>
                    </div>
                </div>
                
                <div class="col-md-4">
                    <div class="footer-card-icon">
                        <i class="fa fa-cc-discover"></i>
                        <i class="fa fa-cc-mastercard"></i>
                        <i class="fa fa-cc-paypal"></i>
                        <i class="fa fa-cc-visa"></i>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End footer bottom area -->
   
    <!-- Latest jQuery form server -->
    
    
    <!-- Bootstrap JS form CDN -->
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js2/bootstrap.min.js"></script>
    
    <!-- jQuery sticky menu -->
    <script src="js2/owl.carousel.min.js"></script>
    <script src="js2/jquery.sticky.js"></script>
    
    <!-- jQuery easing -->
    <script src="js2/jquery.easing.1.3.min.js"></script>
    
    <!-- Main Script -->
    <script src="js2/main.js"></script>
   
    
    
  </body>
</html>