<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,db.*,admin.*"%>
    
<%@page import="bean.*,java.util.*"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.ArrayList"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Export to Excel</title>
</head>
<body>
<h3>Export to Excel File</h3>

<table cellpadding="1" cellspacing="1" border="1" bordercolor="gray">

<tr>

<td>Order ID</td>
<td>Email</td>
<td>Product Name</td>
<td>Supplier Id</td>
<td>Reason</td>

</tr>
<%
ArrayList<Return_order_bean> ar=(ArrayList<Return_order_bean>)request.getAttribute("ar");

if(ar!=null){
	
	response.setContentType("application/vnd.ms-excel");
	response.setHeader("Content-Disposition", "inline; filename="
                       + "OrdersReturn.xls");
	
		
}

for(Return_order_bean ob:ar){


%>
<tr>
                <td><%=ob.getORDER_DETAILS_ID()%></td>
                <td><%=ob.getEMAIL()%></td>
                <td><%=ob.getPRODUCT_NAME()%></td>
                <td><%=ob.getSUPPLIER_ID()%></td>
                <td><%=ob.getREASON()%></td>
        </tr>
        <%
                }
        %>

</table>
</body>
</html>