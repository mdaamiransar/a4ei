<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign Up</title>
<link rel="stylesheet" type="text/css" href="Css/signup.css" media="screen" />
<script type="text/javascript" src="js/signup.js"></script>
</head>
<body>
<div class="form">
      
      
      
      <div class="tab-content">
        <div id="signup">   
          <h1>Sign Up for Free</h1>
          
          <form action="sub_admin_regis" method="post" enctype="multipart/form-data">
          
          <div class="top-row">
            <div class="field-wrap">
              <label>
                <span class="req"></span>
              </label>
              <input type="text" name="FIRST_NAME" placeholder="First Name" required autocomplete="off" />
            </div>
        
            <div class="field-wrap">
              <label>
                <span class="req"></span>
              </label>
              <input type="text" name="LAST_NAME" placeholder="Last Name" required autocomplete="off"/>
            </div>
          </div>

          <div class="field-wrap">
            <label>
              <span class="req"></span>
            </label>
            <input type="email" name="EMAIL_ID" placeholder="Email Address" required autocomplete="off"/>
          </div>
          
          <div class="field-wrap">
            <label>
             <span class="req"></span>
            </label>
            <input type="text" name="USER_NAME" placeholder="User Name" required autocomplete="off"/>
          </div>
          
          <div class="field-wrap">
            <label>
              <span class="req"></span>
            </label>
            <input type="password" name="PASSWORD" placeholder="Set Your Password" required autocomplete="off"/>
          </div>
          
          <div class="field-wrap">
            <label>
              <span class="req"></span>
            </label>
            <input type="password" name="CONFIRM_PASSWORD" placeholder="Confirm Password" required autocomplete="off"/>
          </div>
          
          <div class="field-wrap">Choose your Profile Pic
            <label>
              <span class="req"></span>
            </label>
            <input type="file" name="IMAGE" required autocomplete="off"/>
          </div>
          
          <button type="submit" class="button button-block"/>Submit</button>
          
          </form>

        </div>
        
        <div id="login">   
          <h1>Welcome Back!</h1>
          
          <form action="/" method="post">
          
            <div class="field-wrap">
            <label>
              Email Address<span class="req">*</span>
            </label>
            <input type="email"required autocomplete="off"/>
          </div>
          
          <div class="field-wrap">
            <label>
              Password<span class="req">*</span>
            </label>
            <input type="password"required autocomplete="off"/>
          </div>
          
          <p class="forgot"><a href="#">Forgot Password?</a></p>
          
          <button class="button button-block"/>Log In</button>
          
          </form>

        </div>
        
      </div><!-- tab-content -->
      
</div> <!-- /form -->
</body>
</html>