<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,db.*" import="java.util.*" import="java.util.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

 <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Product Page - Ustora Demo</title>
    
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
    
    
     <style type="text/css">  
                .hover{  
                    padding:20%;  
                    float:up;  
                }  
      
                .parentimage{  
                    width: 300px;  
                    height: 300px;  
                }  
                .parentimageLarge{  
                    position:absolute;  
                    width: 0px;  
                    transition: width 0.3s linear 0s;  
                    z-index: 12;  
                }  
                .parentimage:hover + .parentimageLarge{  
                    width:600px;  
                    height:600px;                 
                }         
      
            </style>        
    
    

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    
    
    
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

	function my_click(product_id,color_id,quantity) {
		 
			
			 
			  
			  if(quantity==0)
				{
				  
				 
				  alert("out of stock");
				 
				  document.getElementById("click").innerHTML = xhttp.responseText;
				 // response.sendRedirect("singleproduct.jsp?&product_id="+product_id+"&color_id="+color_id+"&quantity="+quantity);
				// var url="singleproduct.jsp?&product_id="+product_id+"&color_id="color_id+"&quantity="+quantity;
				 alert(product_id+"product_id"+"color_id"+color_id+"quantity"+quantity)
				  
				}
			  
			  
			  
			}
	
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
    </div> <!-- End site branding area -->
    
     <div id="navncontent">
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
		</div> 
		
		<div class="mainmenu-area" style="margin-left: 300px;" >
       
                    <ul class="nav navbar-nav" >
                        
                        <li><input type="text" placeholder="search your product" size="90" text-align="center"></li>
                        <li><input type="submit" value="search"></li>
                        <li><div class="site-branding-area">
       
    </div></li>
                    </ul>
               
    </div>
		
		
      <!-- End mainmenu area --></br></br></br></br>
    
    <div class="product-big-title-area">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="product-bit-title text-center">
                        <h2>Shop</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <br></br>
   
                  
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="product-images" >
                               
                                    <div class="product-main-img" align="center">
                                   
                                      <%    try{
            	   
                   int Product_id=Integer.parseInt(request.getParameter("product_id"));
                    System.out.println("pidkk "+Product_id);
                    String filename=request.getParameter("filename");
            	    Connection con = Db.Condb();
                	String sql1="select t.PRODUCT_ID,p.PRODUCT_NAME,p.MSRP,p.DISCOUNTS,t.file_name,p.SHORT_DESCRIPTION,p.DETAILED_DESCRIPTION,c.color,p.SUPPLIER_ID,c.COLOR_ID,c.QUANTITY from image t inner join products p  on t.PRODUCT_ID=p.PRODUCT_ID inner join color c on t.PRODUCT_ID=c.PRODUCT_ID where p.PRODUCT_ID=? and t.FILE_NAME=?";
                	PreparedStatement ps=con.prepareStatement(sql1);
                	ps.setInt(1,Product_id);
                	ps.setString(2,filename);
                    ResultSet rs=ps.executeQuery();
                    if(rs.next()){
                    	
                    String color=rs.getString(8);
                      seller=rs.getString(9);
                      int color_id=rs.getInt(10);
                      
                      %>
                  
                
                    <div class="hover">  
      
                <img class="parentimage" src="Image_single?product_id=<%=Product_id%>&filename=<%=filename%>" height="420" width="420" height="320" width="320" alt="" />            
                <img class="parentimageLarge" src="Image_single?product_id=<%=Product_id%>&filename=<%=filename%>" height="420" width="420" height="320" width="320" alt="" />  
      
               
                  
            </div>  
                    
                    
                                       
                                    </div>
                                    
              <div id="abc">
              
             <%  Connection con12 = Db.Condb();
int product_id=Integer.parseInt(request.getParameter("product_id"));
String sql="select QUANTITY from color where PRODUCT_ID=? and COLOR_ID=?";
   
    PreparedStatement ps12=con.prepareStatement(sql);
	ps12.setInt(1, product_id);
	ps12.setInt(2,color_id);
	ResultSet rs12=ps12.executeQuery();
	if(rs12.next())
	{
		rs12.getInt("QUANTITY");
		 System.out.println("quantity in single product"+rs12.getInt("QUANTITY"));
	


              
	%>  
              </div>                      
                                 
                                    
                                    <div class="product-gallery" align="center">
                                    
                                    <table>
                                    <tr >
                                    
                 <%  
                   
                       String sql2="select FILE_NAME from image   where PRODUCT_ID=? and FILE_NAME!=?";
                   	 PreparedStatement ps1=con.prepareStatement(sql2);
                   	ps1.setInt(1,Product_id);
                   	ps1.setString(2,filename);
                       ResultSet rs2=ps1.executeQuery();
                       while(rs2.next()){
                    	   
                    	   String str=rs2.getString(1);
                    	   System.out.println("str "+str);
                      %>
                    
    
                        <td >   &nbsp;&nbsp;&nbsp;    <a href="singleproduct_image.jsp?product_id=<%=Product_id%>&filename=<%=str%>"><img src="Image_single?product_id=<%=Product_id%>&filename=<%=str%>" alt=""  ></a></td>
                                      <% 
                        	}%> 
                                   </tr>
                                    </table>   
                                    </div>
                                    
                                    
                                 	
                                    
                                    
                                </div>
                            </div>
                            
                            
                       

                         
                            
                            
                            
                            
                            <div class="col-sm-6">
                                <div class="product-inner">
                                    <h2 class="product-name"><%=rs.getString(2)%></h2>
                                    <div class="product-inner-price">
                                       <tr><td id="price">   <ins>$<%=rs.getDouble(3)%></ins>  <ins> discounts=<%=rs.getString(4)%> </ins></td></tr>
                                    </div>    
                                    
                                    <form action="Cart" class="cart" method="post">
                                      <!--   <div class="quantity">
                                            <input type="number" size="4" class="input-text qty text" title="Qty" value="1" name="quantity" min="1" step="1">
                                        </div> -->
                                        <div id="click">
                                        <input type="hidden" name="product_id" value="<%=Product_id%>"/>
                                        <input type="hidden" name="shor_des" value="<%=rs.getString(6)%>"/>
                                         <input type="hidden" name="price" value="<%=rs.getDouble(3)%>"/>
                                          <input type="hidden" name="name" value="<%=rs.getString(2)%>"/>
                                           <input type="hidden" name="seller" value="<%=rs.getString(9)%>"/>
                                           <input type="hidden" name="color_id" value="<%=rs.getInt(10)%>"/>
                                           <input type="hidden" name="quantity" value="<%=rs12.getInt("QUANTITY")%>"/>
                                        <button class="add_to_cart_button" type="submit" name="p" value="cart" onclick="my_click(<%=Product_id%>,<%=rs.getInt(10)%>,<%=rs12.getInt("QUANTITY")%>)">Add to cart</button>
                                        <button class="add_to_cart_button" type="submit" name="p" value="buy" onclick="my_click(<%=Product_id%>,<%=rs.getInt(10)%>,<%=rs12.getInt("QUANTITY")%>)">buy now</button>
                                  </div>  </form>   
                                    
                                  
                                <div > 
                                
                                
                      <%  try{PRODUCT_NAME=request.getParameter("Product_Name");   
                              int i=0;
                              System.out.println("pid in color"+PRODUCT_NAME); 
                              
                              Connection con4 = Db.Condb();
                	String sql8="select c.PRODUCT_ID,c.color,c.COLOR_ID,p.PRODUCT_NAME,p.PRODUCT_ID from products p  inner join color c  on c.PRODUCT_ID=p.PRODUCT_ID where p.PRODUCT_NAME =?";
                	PreparedStatement ps8=con.prepareStatement(sql8);
                	
                	ps8.setString(1,PRODUCT_NAME);
                	
                	ResultSet rs8=ps8.executeQuery();
                	int i1=1;
                     
                       while(rs8.next()){
                    	
                    	if(i1==1){%>
                    	COLOR:-
                    	<div style="margin-left:130px; margin-top:-3%">
                      <span >  <table><%} %>
                       
                        <td style="height:4%;width:15%"><a href="Single_product_color.jsp?product_id=<%=Product_id%>&color_id=<%=rs8.getInt("COLOR_ID")%>&Product_Name=<%=PRODUCT_NAME%>"><%=rs8.getString("COLOR")%></a></td>
                    
                       <span><input type="hidden" name="color" value="<%=rs8.getString("COLOR")%>"/></span>
                        </span>
                         <%i1++;%>
                       <%} %>
                       
                       <%}catch(Exception e)
                             {
                    	       e.printStackTrace();
                             }
                             
                             %>
                        </table>
                     </div>
                    </br></br>
                                 <%  try{   PRODUCT_NAME=request.getParameter("Product_Name");   
                              int i=0;
                              System.out.println("pid in warrenty"+PRODUCT_NAME); 
                              
                              Connection con4 = Db.Condb();
                	String sql8="select WARRENTY from products  where PRODUCT_NAME =?";
                	PreparedStatement ps8=con.prepareStatement(sql8);
                	
                	ps8.setString(1,PRODUCT_NAME);
                	
                	ResultSet rs8=ps8.executeQuery();
                	int i1=1;%>
                     
                      <% while(rs8.next()){%>
                    	
                    	<%if(i1==1){%>
                    	WARRENTY:-
                    	<div style="margin-left:130px; margin-top:-3%">
                      <span >  <table ><%} %>
                       
                        <td style="height:4%;width:15%"><%=rs8.getString("WARRENTY")%></td>
                    
                       <span> <input type="hidden" name="WARRENTY" value="<%=rs8.getString("WARRENTY")%>"/></span>
                        </span>
                         <%i1++;%> 
                       <%} %>
                       
                       <%}catch(Exception e)
                             {
                    	       e.printStackTrace();
                             }
                             
                             %>
                        </table>
                     </div></br></br>
                                <div> <tr><td> DELIVERED By:- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                     
                                    
                                    
                                    
                                     <td><% Calendar now = Calendar.getInstance();
                                     String Currentdate = (now.get(Calendar.DATE) + 1) + "-"
                                             + now.get(Calendar.MONTH) + "-" + now.get(Calendar.YEAR);


    // add days to current date using Calendar.add method
    now.add(Calendar.DATE, 7);
  
    String  dateaftersevenday =now.get(Calendar.DATE) + "-"
        +( now.get(Calendar.MONTH)+ 1) + "-" + now.get(Calendar.YEAR);
    /* out.println("Currentdate"+Currentdate); */
    out.println("   "+dateaftersevenday);
    
    %></td> </tr>
                                     
                                     
                                 
                                  </div>
                                  
                                 
                                  
                                  </br>
                                  
                                  
                                     <div><a href="replacement.jsp">30 days replacement gaurrentee</a></div><br></br>
                                    <div role="tabpanel">
                                        <ul class="product-tab" role="tablist">
                                            <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Description</a></li>
                                            <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Reviews</a></li>
                                        </ul>
                                        <div class="tab-content">
                                            <div role="tabpanel" class="tab-pane fade in active" id="home">
                                                <h2>Product Description</h2>  
                                                <p><%=rs.getString(6)%></p>

                                                <p><%=rs.getString(7)%> </p>
                                                <%}}} 
                                              catch (Exception e) {
            		
            		                                 e.printStackTrace();
            	                                          }
                                                  %>
                                            </div>
                                            
                                  
                                            <div role="tabpanel" class="tab-pane fade" id="profile">
                                               
                                                <h2>Reviews</h2>
                                                 
                                                <div class="submit-review">
                                                    <form action="feedback" method="POST">
                                                    <table>
                                                    
                                                    <tr><td>Name</td>
                                                    <td><input type="text" name="product_name"></td></tr>
                                                  <tr>  <td>Email</td>
                                                    <td><input type="text" name="email"></td></tr>
                                                     

                                                       <tr>
                                                        <td>Your rating</td>
                                                          <td><select name="rating">
                                                            <option value="Select">Select Your Rating</option>
                                                            <option value="poor">poor</option>
                                                             <option value="good">good </option>
                                                              <option value="very good">very good</option>
                                                               <option value="excellent">excellent</option>
                                                        </select>
                                                               </td> </tr>
                                                  <tr>

                                                   
                                                    <tr><td>Your review</td> 
                                                    <td ><textarea name="review"  cols="30" rows="50"></textarea></td></tr>
                                                   <tr> <td>DATE</td>
                                            <td><input type="text" name="DATE" id="REVIEW_DATE" value="<%=new Date()%>">
                                                                      </td>
                                                                         </tr>
                                                   <tr><td><input type="submit" value="submit"></td></tr>
                                                    </table>
                                                    </form> 
                                                </div>
                                                
                                                </div> 
                                            
                                        </div>
                                    </div>
                                    
                                </div>
                            </div> </div>
                         
                            <div style="padding-right: 39%;padding-left: 20%">
                           
                           
                             <%try{
                          /*   int Product_id=Integer.parseInt(request.getParameter("product_id")); */
                         PRODUCT_NAME=request.getParameter("Product_Name");   
                          int i=0;
                    System.out.println("pid in single"+PRODUCT_NAME);
                    String supplier_id=request.getParameter("supplier_id");
            	    Connection con = Db.Condb();
                	String sql1="select PRODUCT_ID,SUPPLIER_ID,SALES_PRICE,SHORT_DESCRIPTION from products where PRODUCT_NAME=? and SUPPLIER_ID!=?";
                	PreparedStatement ps=con.prepareStatement(sql1);
                	ps.setString(1,PRODUCT_NAME);
                	ps.setString(2,seller);
                	
                	
                	ResultSet rs3=ps.executeQuery();
                	int i1=1;%>
                	
                	
                    <% while(rs3.next()){%>
                    	 <div style="padding-right: 39%;padding-left: 40%">ANY OTHER SELLER:-  </div>
                    	<%if(i1==1){%>
                    	
                    	
                    	  
                      <table ><tr><th>Seller</th><th>Price</th></tr><%} %>
                      <form action="Cart" class="cart" method="post">
                      <tr><td style ="height:80px; width:200px"><%=rs3.getString("SUPPLIER_ID")%></td>
                      <td  style ="height:80px; width:200px"><%=rs3.getDouble("SALES_PRICE")%></td>
                      <td > <input type="hidden" name="product_id" value="<%=rs3.getInt("PRODUCT_ID")%>"/>
                                        <input type="hidden" name="shor_des" value="<%=rs3.getString("SHORT_DESCRIPTION")%>"/>
                                         <input type="hidden" name="price" value="<%=rs3.getDouble("SALES_PRICE")%>"/>
                                          <input type="hidden" name="name" value="<%=PRODUCT_NAME%>"/>
                                           <input type="hidden" name="seller" value="<%=rs3.getString("SUPPLIER_ID")%>"/>
                                           <input type="hidden" name="color_id" value="<%=rs3.getString("COLOR_ID")%>"/>
                                           </td>
                      <td style ="height:80px; width:320px"><button class="add_to_cart_button" type="submit" name="p" value="cart">Add to cart</button>
                      <button class="add_to_cart_button" type="submit" name="p" value="buy">buy now</button></td>
                      </tr></form>
                       <%i1++;%> 
                       <%} %>
                       
                       <%}catch(Exception e)
                             {
                    	       e.printStackTrace();
                             }
                             
                             %>
                             </table>
                            </div>
                      

    
 <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>     
  
    
    
   
    
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

</html>