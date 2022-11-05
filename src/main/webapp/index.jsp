<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index</title>
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
<br/><br>
<h1 style="color:blue"><b>Welcome to Sporty Shoes </b></h1>
<h2 style="color:tomato"><b> Please Login to avail the services </b> </h2>
<br>
<table>
<tr>
<td>
<form action="AdminLogin.jsp">
<input type="submit" value="Admin" name="utype">
</form>
</td>
<td>
<form action="CustomerLogin.jsp">
<input type="submit" value="Customer" name="utype">
</form>
</td>
</tr>
</table>
<form action="register.jsp"><br/>
<b>If New User </b>:<br> <input type="submit" value="Register Here">
</form>

</div>
</body>
</html>