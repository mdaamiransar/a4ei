<%@page import="cart.Dao_Cart"%>
<%@page import="java.util.Iterator"%>
<%@page import="cart.Cart"%>
<%@page import="cart.Shopping_Cart"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,db.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
    <!-- <link rel="stylesheet" href="css/imagezoom.css"> -->
   <script type="text/javascript">
   
   function quan(Product_Id,cnt,price,q,sh_charge,email)
   {
 	 
 	   var url="quantity_change.jsp?Product_Id="+Product_Id+"&quantity="+q;
 		
 	  if (window.XMLHttpRequest) {
 	    // code for modern browsers
 	    xhttp = new XMLHttpRequest();
 	    } else {
 	    // code for IE6, IE5
 	    xhttp = new ActiveXObject("Microsoft.XMLHTTP");
 	  }
 	  xhttp.onreadystatechange = function() {
 	    if (xhttp.readyState == 4 && xhttp.status == 200) {
 	    	   document.getElementById("qq").innerHTML = xhttp.responseText;
 	    	   
 	    	 show_alert(Product_Id,cnt,price,q,sh_charge,email);
 	    	 
 	    }
 	  };
 	  xhttp.open("GET", url, true);
 	  xhttp.send();  
   }

    function show_alert(Product_Id,cnt,price,q,sh_charge,email)
   {
 	  
 	  var msg=document.getElementById("actual").value;
 	  if(msg=="no")
 	{
 	  
 	  
 	  alert("you can not select that much product ");
 	 
 	  total(Product_Id,cnt,price,1,sh_charge,email);
 	  document.getElementById("quantity"+cnt).value=1;
 	  
 	}
 	  if(msg=="yes")
 	{
 	  
 	  total(Product_Id,cnt,price,q,sh_charge,email);
 	}
 	  
 	 
 	  
   }  
   
   
   
   
   
  function total(Product_Id,cnt,price,q,sh_charge,email){

		 var xhttp;
		
		 var url="Registered_buy_total_Change.jsp?id="+Product_Id+"&price="+price+"&quantity="+q+"&cnt="+cnt+"&email="+email;
	
		  if (window.XMLHttpRequest) {
		    // code for modern browsers
		    xhttp = new XMLHttpRequest();
		    } else {
		    // code for IE6, IE5
		    xhttp = new ActiveXObject("Microsoft.XMLHTTP");
		  }
		  xhttp.onreadystatechange = function() {
		    if (xhttp.readyState == 4 && xhttp.status == 200) {
		      document.getElementById("total"+cnt).innerHTML = xhttp.responseText;
		      subtotal(Product_Id,cnt,sh_charge,email);
		      
		   
		    }
		  };
		  xhttp.open("GET", url, true);
		  xhttp.send(); 
		}

function subtotal(Product_Id,cnt,sh_charge,email){

		 var xhttp;
		
		 var url="Registered_buy_subtotal_Change.jsp?id="+Product_Id+"&cnt="+cnt+"&sh_charge="+sh_charge+"&email="+email;
	
		  if (window.XMLHttpRequest) {
		    // code for modern browsers
		    xhttp = new XMLHttpRequest();
		    } else {
		    // code for IE6, IE5
		    xhttp = new ActiveXObject("Microsoft.XMLHTTP");
		  }
		  xhttp.onreadystatechange = function() {
		    if (xhttp.readyState == 4 && xhttp.status == 200) {
		      document.getElementById("subtotal"+cnt).innerHTML = xhttp.responseText;
		      order_total(email,Product_Id);
		    }
		  };
		  xhttp.open("GET", url, true);
		  xhttp.send(); 
		 
		
		}
	function order_total(email,product_id)
	{
		//var q=document.f.quantity.value;
		//var q=5;
		//var url="total.jsp?val="+v+"&id="+i+"&pr="+price+"&n="+n;
		var url="Registered_buy_OrderTotal.jsp?email="+email+"&product_id="+product_id;
	var xmlhttp;
	if (window.XMLHttpRequest)
	  {// code for IE7+, Firefox, Chrome, Opera, Safari
	  xmlhttp=new XMLHttpRequest();
	  }
	else
	  {// code for IE6, IE5
	  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	  }
	xmlhttp.onreadystatechange=function()
	  {
	  if (xmlhttp.readyState==4 && xmlhttp.status==200)
	    {
	    document.getElementById("grand_total").innerHTML=xmlhttp.responseText;
	    }
	  }
	xmlhttp.open("GET",url,true);
	xmlhttp.send();
	}  
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
  </script>
</head>
<body>
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
                          
                            <li><a href="cart.jsp"><i class="fa fa-user"></i> My Cart</a></li>
                            
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
	
			
			String email7 = (String)session.getAttribute("email7");
			
			System.out.println("Email is" + email7);
			if (email7 != null) {
				
		%>
                  <li><a  href="javascript:login('show');"><i class="fa fa-user"></i><font color="red">Hi <%=email7%></font></a></li>
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
    </div> <!-- End site branding area -->
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
    </div> 
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
       
    </div></li>
                    </ul>
               
    </div>
		
		
      <!-- End mainmenu area --></br></br></br></br>

 <table cellspacing="0" class="shop_table cart">
<div><%
     int product_id=Integer.parseInt(request.getParameter("product_id"));
      String email=(String)session.getAttribute("email");
      int count=1; 
      
if(email==null)
{
	
	response.sendRedirect("log_in2.jsp?product_id="+product_id);
}
else{
      	  String address=Dao_Cart.getAddress(email);
      	  System.out.println("aaaa");
      	 
      	  %>

 <div>
            <label class='control-label col-md-2 col-md-offset-2' for='email'>1.Login Id</label>
            <div class='col-md-6'>
              <div >
                <div >
               <span><%=email%></span>
                </div>
              </div>
              </div>
              </div><br>
  <div >
            <label class='control-label col-md-2 col-md-offset-2' for='address' style="margin-left:-225px">2.Address</label>
            <div >
              <span><%=address%></span>
            </div>
          </div>


</div> </table>
<div>3. ORDER SUMMARY <%=count%> item</div>
<br><br>
<div id="qq"></div>
 <div class="col-md-8">
                    <div class="product-content-right">
                        <div class="woocommerce">
                         <form method="post" action="LoginServlet3">
                                <table cellspacing="0" class="shop_table cart">
                                    <thead>
                                        <tr>
                                            <th class="product-remove">&nbsp;</th>
                                            <th class="product-thumbnail">&nbsp;</th>
                                            <th class="product-name">Product</th>
                                            <th class="product-price">Quantity</th>
                                            <th class="product-quantity">Price</th>
											<th class="product-name">DELIVERY DETAILS</th>
                                            <th class="product-subtotal">Total</th>
                                        </tr>
                                    </thead>
	<% 
	int cnt=0;
	Dao_Cart.select_buy(product_id,email);
	Shopping_Cart ob=(Shopping_Cart)Dao_Cart.View_buy_product_id(email, product_id);
	%>
                           
                                    <tbody>
                                        <tr class="cart_item">
                                            <td class="product-remove">
                                                <a title="Remove this item" class="remove" href="#">Remove</a> 
                                            </td>

                                            <td class="product-thumbnail">
                                                <a href="singleproduct.jsp"><img src="Image2?id=<%=product_id%>" width="145" height="145" alt="poster_1_up" class="shop_thumbnail" ></a>
                                            </td>

                                            <td class="product-name">
                                             <%=ob.getProduct_name()%>
                                             
                                             <%=ob.getShort_description()%>
                                             Seller:<%=ob.getSeller() %>
                                            </td>

                                            <% cnt=cnt+1;%>
                                            <td class="product-quantity">
                                                <div class="quantity buttons_added">
                                                   
                                                  <select name="quantity" id="quantity<%=cnt%>" onChange="quan(<%=ob.getProduct_id()%>,<%=cnt%>,<%=ob.getPrice()%>,this.value,<%=ob.getShipping_charge()%>,'<%=email%>');">
                                                    <option selected><%=ob.getQuantity()%></option>
                                                    <% for(int i=1;i<=10;i++){
                                                    if(i!=ob.getQuantity()){%>
                                                    <option><%=i%></option>
                                                    <%}} %>
                                                    </select>
                                                    
                                                </div>
                                            </td>
                                             <td class="product-price">
                                                <span id="total<%=cnt%>" class="amount"><%=ob.getTotal_price()%></span> 
                                            </td>
											<td class="product-name">
                                            Shipping Charge: <%=ob.getShipping_charge() %>
                                             
                                            </td>
                                            <td class="product-subtotal">
                                            
                                                <span id="subtotal<%=cnt%>" class="amount"><%=ob.getSubtotal()%></span> 
                                            </td>
                                        </tr>
                                    
                                        
                                        <tr>
                                            <td class="actions" colspan="6">
                                                
                                                 
                                                   
                                                   <a href="Payment_Method_buy.jsp?email=<%=email%>&product_id=<%=product_id%>&product_name=<%=ob.getProduct_name()%>">Continue</a>
                                                       <div class="cart_totals ">
                               

                                <table cellspacing="0">
                                    <tbody>
                                        

                                        <tr class="order-total">
                                            <th>Order Total</th>
                                            <td><strong><span id="grand_total" class="amount">
                       
                                            <%=ob.getSubtotal()%></span></strong> </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                                           
                                              
                                            </td>
                                        </tr>
                                        
                                        
                                        
                                    </tbody>
                                </table>
                            </form>
                            <%} %>
</div>
</div>
</div>
             </br>   </br>  </br>  </br>  </br>  </br>  </br>  </br>  </br>  </br>  </br>  </br>  </br> </br>  </br>  </br>  </br>  </br>  </br>  </br>  </br>  </br>  </br>  </br>  </br>  </br>       
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