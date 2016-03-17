<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,db.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div>

<%
String email = request.getParameter("email");
int ORDER_DETAILS_ID=Integer.parseInt(request.getParameter("ORDER_DETAILS_ID"));
String ORDER_STATUS_NAME=request.getParameter("ORDER_STATUS_NAME");


%>
<div>   <%=ORDER_STATUS_NAME %>    </div>

</div>

</body>
</html>