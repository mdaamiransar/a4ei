<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% int product_id=Integer.parseInt(request.getParameter("product_id"));%>
<form action="LoginServlet3" method="post">
				<ul>
			
	               <li><input type="hidden" name="product_id" value="<%=product_id%>"/></li>
					<li>Email   <label  for="usermail" 
						style="color: white; text-shadow: 0px 0px 3px white; padding-right:69px " >Email</label>
						<input type="email" name="usermail" id="usermail"
						placeholder="yourmail@email.com" required
						title="Enter Your EMAIL ID" style="height: 30px; width: 240px;" /></li><br><br>
					<li>PASSWORD<label for="password"
						style="color: white; text-shadow: 0px 0px 3px white;">Password</label>
						<input type="password" name="password" placeholder="password"
						required title="Enter Your PASSWORD"
						style="height: 30px; width: 240px;" /></li></br></br></br></br>
			    
						</ul>
						
						
						 
						
						
			 	<input type="submit" value="Login"
						style="height: 40px; width: 140px; margin-left: 80px; margin-top: -80px;"  />
						
					
					<a href="Customer_Signup.jsp"><input type="button" value="Register"
						style="height: 40px; width: 140px; margin-top: -280px;margin-left: 200px; "/></a>
						
				</form>
		

			
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

</body>
</html>