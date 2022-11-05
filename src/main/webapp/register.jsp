<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Registration</title>
<style>
body {
  background-image: url('2.jpeg');
  background-repeat: no-repeat;
  background-size: cover;
}
</style>
</head>
<body>
<div align="center">
<h1 style="color:blue"><b>Welcome to Sporty Shoes </b></h1>
<h3 style="color:tomato"><b> Fill in the details for registration </b></h3>
<br/>
<form action="RegisterUser">
<p>
Name: <input type="text" name="name">
</p>
<p>
User Type:<select name="user_type">
           <option value="select"> Select</option>
           <option value="Admin"> Admin</option>
           <option value="Customer">Customer</option>
          </select>
</p>
<p>
UserName: <input type="text" name="UserName">
</p>
<p>
Password: <input type="text" name="password">
</p>
<input type="submit" value="Register">
</form>
<br><br>
<a href="index.jsp">Logout </a>
</div>
</body>
</html>