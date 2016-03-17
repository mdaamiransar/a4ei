<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<Link rel="stylesheet" type="text/css" href="css1/retailer_regis.css"  media="screen"/>
<script type="text/javascript" src="js1/retailer_regis.js"></script>

</head>


<body>
<div class="form">


  <div class="tab-content">
    <div id="signup">
      <h1>Registration</h1>

<form action="RetailReg" method="post">

 <div class="top-row">
 <div class="field-wrap">
  <label>
   <span class="req"></span>
   </label>
   <input type="text" placeholder="First Name" name="FIRST_NAME" required autocomplete="off" />
  </div>

  <div class="field-wrap">
   <label>
 <span class="req"></span>
  </label>
  <input type="text" placeholder="Last Name" name="LAST_NAME" required autocomplete="off" />
 </div>
 </div>

  <div class="field-wrap">
  <label>
  <span class="req"></span>
  </label>
    <input type="text" placeholder="Address" name="ADDRESS" required autocomplete="off" />
  </div>

  <div class="field-wrap">
 <label>
    <span class="req"></span>
   </label>
    <input type="text" placeholder="Pin" name="PIN" required autocomplete="off" />
  </div>
 
 
  <div class="field-wrap">
  <label>
    <span class="req"></span>
  </label>
  <input type="text" placeholder="Contact Number" name="CONTACT_NUMBER" required autocomplete="off" />
  </div>
 
 
  <div class="field-wrap">
 <label>
    <span class="req"></span>
   </label>
   <input type="text" placeholder="Email Address" name="EMAIL_ADDRESS" required autocomplete="off" />
 </div>
 
 
  <div class="field-wrap">
   <label>
     <span class="req"></span>
   </label>
   <input type="text" placeholder="Selling Category" name="YOUR_MAIN_SELLING_CATEGORY" required autocomplete="off" />
    </div>
 
 
 <div class="field-wrap">
   <label>
    <span class="req"></span>
   </label>
   <input type="text" placeholder="User Name" name="USER_NAME" required autocomplete="off" />
  </div>
 
 
  <div class="field-wrap">
   <label>
 <span class="req"></span>
    </label>
     <input type="password" placeholder="Create Password" name="CREATE_PASSWORD" required autocomplete="off" />
    </div>
 
 <div class="field-wrap">
   <label>
    <span class="req"></span>
    </label>
   <input type="password" placeholder="Retype Password" name="RETYPE_PASSWORD" required autocomplete="off" />
   </div>

  <!-- <a href="retailer_info.jsp"> --></a><button type="submit" value="submit" class="button button-block" />Register</button>
  <table>
  <tr>
  <td><a href="retailer sign_in.jsp">Already Register?</a></td>
 
</tr>
</table>
 </form>

</div>

  <div id="login">
  <h1>Welcome Back!</h1>

  <form action="login" method="post">

   <div class="field-wrap">
    <label>
      Email Address<span class="req">*</span>
    </label>
    <input type="text" placeholder="user name" name="USER_NAME" required autocomplete="off" />
 </div>

   <div class="field-wrap">
   <label>
    Password<span class="req">*</span>
    </label>
    <input type="text" placeholder="password" name="CREATE_PASSWORD" required autocomplete="off" />
</div>

  <p class="forgot"><a href="#">Forgot Password?</a></p>

 <button class="button button-block" />Log In</button>
  
 </form>


</body>
</html>