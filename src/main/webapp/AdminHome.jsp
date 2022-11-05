<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AdHome</title>
<style>
body {
  background-image: url('5.jpg');
  background-repeat: no-repeat;
  background-size: cover;
}
</style>
</head>
<body>
<div align="center">
<br>
<h2 style="color:blue"> Sporty Shoes Portal </h2>
<h3> Welcome to Admin home page</h1>

<table >
<tr style="color:red">
<th>
<form action="ManProducts.jsp">
<input type="submit" value="Manage Products" style="color:blue">
</form>
</th>
<th>
<form action="ManCustomers.jsp" style="color:red">
<input type="submit" value="Manage Customers" style="color:blue">
</form>
</th>
<th>
<form action="" >
<input type="submit" value="Purchase Report" style="color:blue">
</form>
</th>
<th>
<form action="index.jsp" style="color:red">
<input type="submit" value="Logout" style="color:blue">
</form>
</th>
</tr>
</table>
</div>
</body>
</html>