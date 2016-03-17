<%@page import="db.Db"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<Link rel="stylesheet" type="text/css" href="css1/retailer_info.css"  media="screen"/>
<script type="text/javascript" src="js1/retailer_info.js"></script>
</head>

<body>
 <div id="card">
  <h2>Retailer Information :  </h2>
  
 
 <form action="retailerInfo" method="post" enctype="multipart/form-data">


<%--<select name="retailer" >
 <option selected="selected">SELECT Your Retailer</option>

   <% String sql="Select REGISTRATION_ID from retailer_registration";
   Connection con=Db.Condb();
   
   PreparedStatement ps=con.prepareStatement(sql);
   ResultSet rs=ps.executeQuery();
   while(rs.next())
   {
	   
	   int register_id=rs.getInt("REGISTRATION_ID");
	   %>


<option value="<%=register_id%>"><%=register_id%></option>
		  

<%} %>
</select> --%>
  
 <p> <level>Company Name *</level><input type="text"  name="COMPANY_NAME " placeholder="COMPANY NAME .."/> </p>
  
 <p> <level>Company Address *</level><input type="text"  name="COMPANY_ADDRESS" placeholder="COMPANY ADDRESS.." /> </p>
 
 <p>  <level>Address Proof *</level><input type="file"  name="ADDRESS_PROOF" placeholder="ADDRESS PROOF.." /> </p>
 
 <p>  <level>Pan No *</level><input type="text"  name="PAN_NO"  placeholder="PAN NO.." /> </p>
 
  <p>  <level>Bank Name *</level><input type="text"  name="BANK_NAME" placeholder="BANK NAME.." /> </p>
   
  <p>  <level>Account No. *</level><input type="text"  name="ACCOUNT_NO" placeholder="ACCOUNT NO.." /> </p>
  
  <p> <level>Name On Account *</level><input type="text"  name="NAME_ON_ACCOUNT" placeholder="NAME ON ACCOUNT.." /> </p>
  
  <p> <level>IFSC Code *</level><input type="text" name="IFSC_CODE" placeholder="IFSC CODE.." /> </p>
   
   <p>  <level>TIN No. *</level><input type="text" name="TIN_NO" placeholder="TIN NO.." /> </p>
 
<!--   <a href="retailer sign_in.jsp"> --> <input type="submit" id="submit" name="submit"/>
 
</form>
</div>
 
</body>
</html>