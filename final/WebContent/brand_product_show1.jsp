<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% String id=request.getParameter("category_id");

%>
<select name="price" onchange="price_show(this.value,'<%=id%>')">
<option selected="selected">select Price</option>

<option>low to high</option>
<option>high to low</option>

</select>
</body>
</html>