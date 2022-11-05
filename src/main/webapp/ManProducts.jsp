<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ManProducts.jsp</title>
</head>
<jsp:include page="AdminHome.jsp"></jsp:include>
<body>
<div align="center">
<br>
<br>
<table style="color:red">
<tr>
<th>
<form action="ViewProducts">
<input type="submit" value="View Products" style="color:red">
</form>
</th>
</tr>
<tr>
<th>
<form action="addProduct.jsp">
<input type="submit" value="Add Products" style="color:red">
</form>
</th>
</tr>
</table>
</div>
</body>
</html>