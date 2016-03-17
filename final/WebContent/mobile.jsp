<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,db.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Shopping Mall India @esamagri.com</title>
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

  <script language="JavaScript" type="text/javascript">
	function login(showhide) {
		if (showhide == "show") {
			document.getElementById('popupbox').style.visibility = "visible";
		} else if (showhide == "hide") {
			document.getElementById('popupbox').style.visibility = "hidden";
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
                            <li><a href="myaccount.jsp"><i class="fa fa-user"></i> My Account</a></li>
                            <li><a href="#"><i class="fa fa-heart"></i> Wishlist</a></li>
                            <li><a href="cart.jsp"><i class="fa fa-user"></i> My Cart</a></li>
                            <li><a href="checkout.html"><i class="fa fa-user"></i> Checkout</a></li>
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
						<% String error=request.getParameter("Message");
						if(error!=null){%>
						<li><font color="red"><%=error%></font></li><%} %>
					<li ><input type="submit" value="Login"
						style="height: 40px; width: 140px; margin-left: 80px;" /></li>
					<li><input type="button" value="Register"
						style="height: 40px; width: 140px; "/></li>
						
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
 <li><a href="index2.jsp" style="width:160px;">Home</a></li>
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
  <a href="brand.jsp?brand=Salwar-Suits">Salwar-Suits</a>
  </li>
  </ul>
  </li>
  </ul>
  </li>
  
   <li>
   
    <a href="show_category.jsp?category=Electronices" class="drop" style="width:160px;">Electronics</a>
    <ul>
    <li>
    <a href="mobile.jsp?subcategory=Mobiles">Mobiles</a>
    <ul>
    <li>
    <a href="brand.jsp?brand=Nokia">Nokia</a>
    </li>
    <li><a href="brand.jsp?brand=Samsung">Samsung</a></li>
    <li><a href="brand.jsp?brand=LG">LG</a></li>
    <li><a href="brand.jsp?brand=Sony">Sony</a></li>
    <li><a href="brand.jsp?brand=Micromax">Micromax</a></li>
    <li><a href="brand.jsp?brand=Gionee">Gionee</a></li>
    <li><a href="brand.jsp?brand=iphone">iphone</a></li>
    <li><a href="brand.jsp?brand=BLACKBERRY">BLACKBERRY</a></li>
    </ul>
    </li>
     <li>
     <a href="mobile.jsp?subcategory=Computers">Computers</a>
     <ul>
     <li><a href="brand.jsp?brand=HP">HP</a></li>
     <li><a href="brand.jsp?brand=HCL Me">HCL Me</a></li>
     <li><a href="brand.jsp?brand=HCL Me"> HCL Me</a></li><li>
     <a href="brand.jsp?brand=Sony Vio">Sony Vio</a>
     </li>
     <li><a href="brand.jsp?brand=Lenovo">Lenovo</a></li>
     </ul>
     </li>
     </ul>
     </li>
     <li>
     <a href="show_category.jsp?category=Jewellery" class="drop"style="width:160px;">Jewellery</a>
     <ul>
     <li><a href="mobile.jsp?subcategory=Precious Jewellery">Precious Jewellery</a></li>
     <li><a href="mobile.jsp?subcategory=Jewellery Sets">Jewellery Sets</a></li>
     <li><a href="mobile.jsp?subcategory=Parrings">Parrings</a></li>
     <li><a href="mobile.jsp?subcategory=Rings">Rings</a></li>
</ul>
</li>
<li>
    <a href="show_category.jsp?category=Baby & Kids" class="drop" style="width:160px;">Baby & Kids</a>
    <ul>
    <li>
    <a href="mobile.jsp?subcategory=Toys">Toys</a>
    <ul>
    <li>
    <a href="brand.jsp?brand=For Boys">For Boys</a>
    </li>
    <li><a href="brand.jsp?brand=For Girls">For Girls</a></li>
    
    </ul>
    </li>
     <li>
     <a href="mobile.jsp?subcategory=Baby Clothing">Baby Clothing</a>
     <ul>
     <li><a href="brand.jsp?brand=Boys Clothing">Boys Clothing</a></li>
     <li><a href="brand.jsp?brand=Girls Clothing">Girls Clothing</a></li>
     </ul>
     </li>
     </ul>
     </li>
     <li>
    <a href="show_category.jsp?category=Furniture" class="drop" style="width:160px;">Furniture</a>
    <ul>
    <li>
    <a href="mobile.jsp?subcategory=Bed and Living">Bed and Living</a>
    <ul>
    <li>
    <a href="brand.jsp?brand=Bedsheets">Bedsheets</a>
    </li>
    <li><a href="brand.jsp?brand=Blankets">Blankets</a></li>
    <li><a href="brand.jsp?brand=Valentines Range">Valentines Range</a></li>
    <li><a href="brand.jsp?brand=Pillow Covers">Pillow Covers</a></li>
    
    </ul>
    </li>
     <li>
     <a href="mobile.jsp?subcategory=Kitchen & Dining">Kitchen & Dining</a>
     <ul>
     <li><a href="brand.jsp?brand=Pots & Pans">Pots & Pans</a></li>
     <li><a href="brand.jsp?brand=Pressure Cookers">Pressure Cookers</a></li>
     </ul>
     </li>
     </ul>
     </li>
     <li>
    <a href="show_category.jsp?category=Books" class="drop" style="width:160px;">Books</a>
    <ul>
    <li>
    <a href="mobile.jsp?subcategory=Movies & TV Shows">Movies & TV Shows</a>
    <ul>
    <li>
    <a href="brand.jsp?brand=Pre-Orders">Pre-Orders</a>
    </li>
    <li><a href="brand.jsp?brand=New Releases">New Releases</a></li>
    <li><a href="brand.jsp?brand=Hollywood Movies">Hollywood Movies</a></li>
    <li><a href="brand.jsp?brand=Bollywood Movies">Bollywood Movies</a></li>
    
    </ul>
    </li>
     <li>
     <a href="mobile.jsp?subcategory=Gaming">Gaming</a>
     <ul>
     <li><a href="brand.jsp?brand=Pre-Orders">Pre-Orders</a></li>
     <li><a href="brand.jsp?brand=New Releases">New Releases</a></li>
     <li><a href="brand.jsp?brand=PC Games">PC Games</a></li>
     <li><a href="brand.jsp?brand=PS4 Games">PS4 Games</a></li>
     </ul>
     </li>
     </ul>
     </li>
     <li><a href="show_category.jsp?category=Sports" class="drop" style="width:160px;">Sports</a></li>
     
</ul>
</nav>		
    <div class="mainmenu-area" style="margin-left: 300px;" >
       
                    <ul class="nav navbar-nav" >
                        <li><p id="demo" style="margin-left:-200px"></p>

<script>
var myVar = setInterval(myTimer, 1000);

function myTimer() {
    var d = new Date();
    document.getElementById("demo").innerHTML = d.toLocaleTimeString();
}
</script></li>
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


<div class="mobile6b">
 <table id="mobile6b" border="1">
 <%
						String SUBCATEGORY_NAME = request.getParameter("subcategory");
                        System.out.println("Subcategory_name is"+SUBCATEGORY_NAME);
						int subcategory_id=0;

						Connection con = Db.Condb();
						String sql4="Select SUBCATEGORY_ID from subcategory where SUBCATEGORY_NAME=?";
						PreparedStatement ps4=con.prepareStatement(sql4);
						ps4.setString(1,SUBCATEGORY_NAME );
						ResultSet rs4=ps4.executeQuery();
						if(rs4.next())
						{
							subcategory_id=rs4.getInt("SUBCATEGORY_ID");
						}
						
						//String sql="Select  DISTINCT ad1.Product_Id,ad2.Price, ad2.Tagline, ad1.ColorName, ad1.Filename from admin_imageinsrt_men ad1 inner join admin_productinsert_men ad2 on ad1.Product_Id=ad2.Product_Id and Type=? and Category=?";
						String sql = "Select  DISTINCT ad1.PRODUCT_ID from image ad1 inner join products ad2 on ad1.PRODUCT_ID=ad2.PRODUCT_ID and SUBCATEGORY_ID=?";
						PreparedStatement ps = con.prepareStatement(sql);
						ps.setInt(1, subcategory_id);
						
						ResultSet rs = ps.executeQuery();
						boolean status = true;
						Double SALES_PRICE = 0.0;
						String PRODUCT_NAME="";
						String FILE_NAME = "";
						while (status)
						{
					%>
					
					<tr>

						<%
							for (int i = 1; i <= 4; i++)
								{

									if (rs.next())
									{
										String PRODUCT_ID = rs.getString("PRODUCT_ID");
										System.out.println("kkkkk"+PRODUCT_ID);
										/* String PRODUCT_NAME = rs.getString("PRODUCT_NAME"); */
										String sql2 = "Select ad1.FILE_NAME, ad2.SALES_PRICE,ad2.PRODUCT_NAME from image ad1 inner join products ad2 on ad1.PRODUCT_ID=ad2.PRODUCT_ID and ad1.PRODUCT_ID=?";
										//Connection con1=Conct.conect();
										PreparedStatement ps1 = con.prepareStatement(sql2);
										ps1.setString(1, PRODUCT_ID);

										ResultSet rs1 = ps1.executeQuery();
										if (rs1.next())
										{
											SALES_PRICE = rs1.getDouble("SALES_PRICE");
											System.out.println("ssssss"+SALES_PRICE);
											FILE_NAME = rs1.getString("FILE_NAME");
											System.out.println("ffff"+FILE_NAME);
											PRODUCT_NAME = rs1.getString("PRODUCT_NAME");
											System.out.println("ffff"+PRODUCT_NAME);
											
											
						%>
						
						<td><table id="MainThumb">
				<tr>
					<%-- <td><a
						href="singleproduct.jsp?PRODUCT_ID=<%=PRODUCT_ID%> &subcategory_id=<%=subcategory_id%> &COLOR=<%=COLOR%> &SALES_PRICE=<%=SALES_PRICE%> &FILE_NAME=<%=FILE_NAME%>"> --%>
							 <td >   &nbsp;&nbsp;&nbsp;    <a href="singleproduct.jsp?product_id=<%=PRODUCT_ID%>&filename=<%=FILE_NAME%>&Product_Name=<%=PRODUCT_NAME%>"><img src="Image3?PRODUCT=<%=PRODUCT_ID%>" height="340" width="240"></img></a></td>
							
							<%-- <img src="Image3?PRODUCT_ID=<%=PRODUCT_ID%> " height="340" width="240"></img>
					</a></td> --%>
				</tr>
				<tr>
					<td
						style="color: BLACK;  font-size: 18px; padding-bottom: 3px;">&nbsp&nbsp<%=PRODUCT_NAME%></td>
				</tr>
				<tr>
					<td style="color: BLACK; ">&nbsp&nbsp<i
						class="fa fa-inr fa-lg"></i>&nbsp&nbspSALES PRICE:<%=SALES_PRICE%></td>
                         
				</tr>
			
			</table></td>
						
						
						
			
			<%
							}
									}
									else
									{
										status = false;
										break;
									}
								}
						%>
					</tr>
					<%
						}
					%>


</table>
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