<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="css2/update.css" media="screen">
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>
   <title>Update</title>
   
   
    
    <script language="JavaScript" type="text/javascript">
	function login(showhide) {
		if (showhide == "show") {
			document.getElementById('popupbox').style.visibility = "visible";
		} else if (showhide == "hide") {
			document.getElementById('popupbox').style.visibility = "hidden";
		}
	}

	function validateForm()
	  {
	 
	  
	  
	  var email=document.getElementById("email").value;
	  /* var atposition=x.indexOf("@");  
	  var dotposition=x.lastIndexOf("."); */ 
	  var phn=document.getElementById("phn").value;
	  
	  
	
	  
	  
	  if(email==null || email=="")
	  {
		  /* if (atposition<1 || dotposition<atposition+2 || dotposition+2>=x.length){  
			  alert("Please enter a valid e-mail address \n atpostion:"+atposition+"\n dotposition:"+dotposition);  
			  return false;  
			  }   */

	  alert("Enter Valid Mail-id");
	  return false;
	   }
	  
	  if(phn==null || phn=="")
	  {

	  alert("Provide Your contact details");
	  return false;
	   }
	  
	 
	 }
	
	
</script>
    
    
   
</head>
<body>



    <div class="header-area">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="user-menu">
                        <ul>
                           
                           <li><a href="index2.jsp"><i class="fa fa-user"></i>Home</a></li>
                            <li><a href="view_Registered_cart.jsp"><i class="fa fa-user"></i> My Cart</a></li>
                            
                            <li><div id="WinLay">
		


		<div id="popupbox" class="LoginFormaa bb">
			<form name="index.jsp" action="Login_VerifyUser" method="post">
				<ul>
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
					<li ><input type="submit" value="Login"
						style="height: 40px; width: 140px; margin-left: 80px;" /></li>
					<li><input type="button" value="Register"
						style="height: 40px; width: 140px; 
						onclick="gotoRegister()"/></li>
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
		<div id="body1">

			

			<div id="loginwrapper">
				
				</div>
				
				
			</div>
			

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
			
       
		</div></li>      <%
	
			
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
    </div> <!-- End header area -->
    
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
                        
                        <li><input type="text" placeholder="search your product" size="90" text-align="center"></li>
                        <li><input type="submit" value="search"></li>
                        <li><div class="site-branding-area">
        <div class="container">
            <div class="row" style="margin-left: 800px;margin-top: -80px; color:red"><div class="col-sm-6" >
                    
                </div>      </div>
        </div>
    </div></li>
                    </ul>
               
    </div>
<div id='cssmenu'>
<ul>
   <li class='active'><a href="myaccount.jsp">My Account</a></li>
   <li><a href='myorder.jsp'>My Orders</a></li>
   <li><a href="personal_Info.jsp">Personal Information</a></li>
   <li><a href="change_password.jsp">Change Password</a></li>
   <li><a href="address.jsp">Addresses</a></li>
   <li><a href="update.jsp">Update Account</a></li>
   <li><a href="deactivate.jsp">Deactivate Account</a></li>
   
</ul>
</div>
<% String email0=(String)session.getAttribute("email");
System.out.println("email "+email0);
%>

<div id="apDiv2">

<form action="update_account"  method="post"  class='form-horizontal' onSubmit="return validateForm()">
<table align="center" style="border: 1px; margin-left: 500px; margin-top: -300px; width: 340x;" >
  <caption>
    <h3 align="center" style="font-style: italic;">Update Email/Mobile</h3> 
  </caption>
  <tr>
    
    <td><input type="hidden" name="EMAIL" value="<%=email%>" ></td>
  </tr>
  
  
  <tr>
    <td>Mobile Number</td>
    <td width="180"><input type="text" name="MOBILE" id="phn"></td>
    <td colspan="1"><input type="submit" name="Edit"></td>
  </tr>
  
  </table>
  </form>
  </div></br></br></br></br></br></br></br></br></br></br></br></br></br>
  
   
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