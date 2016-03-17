<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign Up</title>
  <link rel="stylesheet" href="Css/Customer_Signup.css" type="text/css" media="screen">
  <script type="text/javascript" src="js/Customer_Signup.js"></script>
  <link href='http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css' rel='stylesheet' type='text/css'>
  <link href='//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.2.0/css/datepicker.min.css' rel='stylesheet' type='text/css'>
  <link href='//cdnjs.cloudflare.com/ajax/libs/bootstrap-switch/1.8/css/bootstrap-switch.css' rel='stylesheet' type='text/css'>
  <link href='http://davidstutz.github.io/bootstrap-multiselect/css/bootstrap-multiselect.css' rel='stylesheet' type='text/css'>
  <script src='//cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js' type='text/javascript'></script>
  <script src='//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.0/js/bootstrap.min.js' type='text/javascript'></script>
  <script src='//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.2.0/js/bootstrap-datepicker.min.js' type='text/javascript'></script>
  <script src='//cdnjs.cloudflare.com/ajax/libs/bootstrap-switch/1.8/js/bootstrap-switch.min.js' type='text/javascript'></script>
  <script src='http://davidstutz.github.io/bootstrap-multiselect/js/bootstrap-multiselect.js' type='text/javascript'></script>
  
  <script type="text/javascript">
  
  /* function loadXMLDoc()
  {
  var xmlhttp;
  var k=document.getElementById("uname").value;
  var urls="pass.jsp?ver="+k;
   
  if (window.XMLHttpRequest)
    {
    xmlhttp=new XMLHttpRequest();
    }
  else
    {
    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
  xmlhttp.onreadystatechange=function()
    {
    if (xmlhttp.readyState==4)
      {
          //document.getElementById("err").style.color="red";
          document.getElementById("err").innerHTML=xmlhttp.responseText;
   
      }
    }
  xmlhttp.open("GET",urls,true);
  xmlhttp.send();
  } */
  
  function validateForm()
  {
  var title=document.getElementById("title").value;
  var fname=document.getElementById("fname").value;
  var lname=document.getElementById("lname").value;
  var uname=document.getElementById("uname").value;
  var psw=document.getElementById("psw").value;
 
  var email=document.getElementById("email").value;
  /* var atposition=x.indexOf("@");  
  var dotposition=x.lastIndexOf("."); */ 
  var phn=document.getElementById("phn").value;
  var add=document.getElementById("add").value;
  
  
  if(title==null || title=="")
  {

  alert("Please select Title");
  return false;
   }
  
  if(fname==null || fname=="")
  {

  alert("Enter Your First Name");
  return false;
   }
  
  if(lname==null || lname=="")
  {

  alert("Enter Your Last Name");
  return false;
   }
  
  if(uname==null || uname=="")
  {

  alert("Provide your User Name");
  return false;
   }
  
  if(psw==null || psw=="")
  {

  alert("Enter Your Password");
  return false;
   }
  
  
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
  
  if(add==null || add=="")
  {

  alert("Enter Your Address details");
  return false;
   }
 }
  
  function check()
  {  
  
  var y=document.getElementById('actual').value; 
      if (y=="taken")
      {
             alert("UserName already exist in database");
          return false;
      } else
      {
              alert("UserName Available");
      } 
          
          
   }
  
  function varify()
  {
  var xmlhttp;
  var k=document.getElementById("uname").value;

  var urls="Check_username.jsp?ver="+k;

  if (window.XMLHttpRequest)
    {
    xmlhttp=new XMLHttpRequest();
    }
  else
    {
    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
  xmlhttp.onreadystatechange=function()
    {
    if (xmlhttp.readyState==4 )
      {
          document.getElementById("err").innerHTML=xmlhttp.responseText;
       }
    }
  xmlhttp.open("GET",urls,true);
  xmlhttp.send();
  }
</script>
</head>
<body onload="showmessage()">

   <div class='container'>
    <div class='panel panel-primary dialog-panel'>
      <div class='panel-heading'>
        <h5 align="center"><strong>New Customer</strong>- Sign Up Here</h5>
      </div>
      
      <div class='panel-body'>
        <form action="Customer_Signup" name="myForm"  method="post"  class='form-horizontal' onsubmit="return validateForm()">
          
          <div class='form-group'>
            <label class='control-label col-md-2 col-md-offset-2' for='title'>Name</label>
            <div class='col-md-8'>
              <div class='col-md-2'>
                <div class='form-group internal'>
                  <select class='form-control' name='TITLE' id="title" >
                    <option>  </option>
                    <option>Mr</option>
                    <option>Ms</option>
                    <option>Mrs</option>
                    <option>Miss</option>
                    <option>Dr</option>
                  </select>
                </div>
              </div>
              <div class='col-md-3 indent-small'>
                <div class='form-group internal'>
                  <input class='form-control' name='FIRST_NAME' id="fname" placeholder='First Name' type='text'>
                </div>
              </div>
              <div class='col-md-3 indent-small'>
                <div class='form-group internal'>
                  <input class='form-control' name='LAST_NAME' id="lname" placeholder='Last Name' type='text'>
                </div>
              </div>
            </div>
          </div>
          
          <div class='form-group'>
            <label class='control-label col-md-2 col-md-offset-2' for='username'>User Name</label>
            <div class='col-md-6'>
              <div class='form-group'>
                <div class='col-md-11'>
                  <input class='form-control' name='USER_NAME' id="uname" placeholder='User Name' type="text" onkeyup="varify()"/><div id="err"></div></td>
                  
                </div>
              </div>
              </div>
                            
              <div class='form-group'>
            <label class='control-label col-md-2 col-md-offset-2' for='password'>Password</label>
            <div class='col-md-6'>
              <div class='form-group'>
                <div class='col-md-11'>
                  <input class='form-control' name='PASSWORD' id="psw" placeholder='Set your password' type='password'>
                </div>
              </div>
              </div>
              
              
           
              
              <div class='form-group'>
            <label class='control-label col-md-2 col-md-offset-2' for='email'>Contact</label>
            <div class='col-md-6'>
              <div class='form-group'>
                <div class='col-md-11'>
                  <input class='form-control' name='EMAIL' id="email"placeholder='E-mail' type='text'>
                </div>
              </div>
              <div class='form-group internal'>
                <div class='col-md-11'>
                  <input class='form-control' name='PHONE' id="phn" placeholder='Phone: (xxx) - xxx xxxx' type='text'>
                </div>
              </div>
            </div>
          </div>
              
          <div class='form-group'>
            <label class='control-label col-md-2 col-md-offset-2' for='address'>Address</label>
            <div class='col-md-6'>
              <textarea class='form-control' name='ADDRESS' id="add" placeholder='Your Address' rows='3'></textarea>
            </div>
          </div>
          <div class='form-group'>
            <div class='col-md-offset-4 col-md-3' align="center">
              <button class='btn-lg btn-primary' type='submit'>Register</button>
            </div>
            
          </div>
        </form>
      </div>
    </div>
  </div>
</body>
</html>