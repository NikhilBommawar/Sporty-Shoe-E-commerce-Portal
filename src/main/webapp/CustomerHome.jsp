<%@page import="com.example.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CHome</title>
<style>
body {
  background-image: url('6.jpg');
  background-repeat: no-repeat;
  background-size: cover;
}
</style>
</head>
<body>
<br><br>
<h1 style="color:blue"><b>Sporty Shoes Portal </b></h1>
<% User user=(User) request.getAttribute("user");
session.setAttribute("customer", user); %>
<h2> Welcome Mr/Mrs <%=user.getName()%> </h2>
<br>
<table style="color:red">
<tr>
<th>
<form action="Shopping">

<input type="submit" value="Go for Shopping" style="color:red">
</form>
</th>

<th>
<form action="EditProfile.jsp">
<input type="submit" value="Edit Profile" style="color:red">
</form>
</th>
<th>
<form action="index.jsp">
<input type="submit" value="Logout" style="color:red">
</form>
</th>
</tr>
</table>
</body>
</html>