<%@page import="com.example.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>delete</title>
<style>
body {
  background-image: url('8.png');
  background-repeat: no-repeat;
  background-size: cover;
}
</style>
</head>
<body>
<h1 style="color:blue"><b>Welcome to Sporty Shoes </b></h1>
<div align="center">
<br><br>
<h1> Are you sure to delete </h1>
<form action="DeleteProduct">
<p>
Product ID: <input type="text" value=<%=request.getParameter("id") %> name="prid" readonly>
</p>
<input type="submit" value="Delete">
</form>
<br><br>
<a href="index.jsp">Logout </a>
</div>
</body>
</html>