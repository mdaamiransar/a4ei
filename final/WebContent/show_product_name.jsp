<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,db.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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

 


<div class="mobile6b">
 <table id="mobile6b" border="1">
 <%
                        String BRAND_NAME=request.getParameter("brand");
                        //String CATEGORY_NAME="electronics";
                        System.out.println("BRAND_NAME is"+BRAND_NAME);
						

						Connection con = Db.Condb();
						String sql4="Select BRAND_ID from brand where BRAND_NAME=?";
						PreparedStatement ps4=con.prepareStatement(sql4);
						ps4.setString(1,BRAND_NAME );
						ResultSet rs4=ps4.executeQuery();
						if(rs4.next())		
						{
						 System.out.println(1);
							int BRAND_ID=rs4.getInt("BRAND_ID");
							System.out.println("BRAND_ID"+BRAND_ID);
							String sql1= "select PRODUCT_ID, PRODUCT_NAME from products where BRAND_ID=? ";
							PreparedStatement ps1=con.prepareStatement(sql1);
							ps1.setInt(1, BRAND_ID);
							ResultSet rs1=ps1.executeQuery();
							while(rs1.next())
							{
						      System.out.println(2);%>
								<tr><td colspan="3">
								<div><% String PRODUCT_NAME= rs1.getString("PRODUCT_NAME");
								System.out.println("PRODUCT_NAME"+PRODUCT_NAME);
								int PRODUCT_ID= rs1.getInt("PRODUCT_ID");%>
								<h2><%=PRODUCT_NAME%></h2>
								</div></td></tr>
								<tr><td colspan="3"><table border="1">
								<%String sql2= "select p.PRODUCT_ID,p.PRODUCT_NAME,p.SALES_PRICE,i.FILE_NAME from products p inner join image i on p.PRODUCT_ID=i.PRODUCT_ID where p.BRAND_ID=?";
								PreparedStatement ps2=con.prepareStatement(sql2);
								ps2.setInt(1, BRAND_ID);
								
								ResultSet rs2=ps2.executeQuery();
								ArrayList<Integer> ar=new ArrayList<Integer>();%>
								
								<%
									  boolean status=true;
					                    while(status) {
					                %>
					                     <tr style="width: 1%;height: 1%">
					                        
					                         
					                       
					                         <%System.out.println("");
					                         for(int i=1;i<=3;) {
					                         	   if(rs2.next()){
					                         		  int product_id=rs2.getInt(1);
					                              	  String FILE_NAME=rs2.getString(4);
					                             	 
					                             	 if(!ar.contains(product_id))
					                             	{
					                             		 ar.add(product_id);
					                         		   System.out.print(44+"product_id "+rs2.getInt(1)+"file_name "+rs2.getString(4)+"   ");
					                         	   %>
					                         	   
					                         	  <td style="width: 1%;height: 1%">
					                         	  
					                        <div>      <a href="singleproduct.jsp?product_id=<%=product_id%>&filename=<%=rs2.getString(4)%>&Product_Name=<%=rs2.getString(2)%>"><img src="Image5?p_id=<%=rs2.getInt(1)%>&filename=<%=rs2.getString(4)%>" alt="" width="200" height="200"></img></a></div>
					                             <div align="center"><h2><a href="singleproduct.jsp?product_id=<%=product_id%>&filename=<%=rs2.getString(4)%>"><%=rs2.getString(2)%></a></h2></div>
					                            
					                         <%--   
					                            <a href="singleproduct.jsp?product_id=<%=product_id%>&filename=<%=rs2.getInt(4)%>&Product_Name=<%=rs2.getString(2)%>"><img src="Image5?p_id=<%=product_id%>" alt="" class="product-thumb"></a></div>
                          <div>  <h2><a href="singleproduct.jsp"><%=rs2.getDouble(3)%></a></h2></div>
					                            --%>
					                           
					                           
					                           
					                             <div align="center">
					                                  <ins><%=rs2.getDouble(3)%></ins>
					                             </div></td> 
					                       
					                            
					                         	   <% i++;}}else
					    {
					 	 status=false;
					 	 break;
					    }
					    }%>
					       </tr>
					    <%}  
				                    
								%> 
							</table></td></tr>
							<% } 
							
						}%>
					
 

</table>
</div>

    
 
</body>
</html>