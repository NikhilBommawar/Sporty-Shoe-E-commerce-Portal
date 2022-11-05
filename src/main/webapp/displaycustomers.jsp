<%@page import="com.example.User"%>
<%@page import="com.example.Products"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>dis</title>
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
<h2  style="color:blue"> Sporty Shoes Portal </h2>
<h2> Customer Details Here </h2>
<br>
<table border="1"  bgcolor="pink">
<tr style="color:green">
<th>Customer ID</th>
<th>Customer Name</th>

<th>User Name</th>

</tr>
<%List<User> users=(List<User>) request.getAttribute("users"); 
for(User usr:users){%>
<tr>
<td><%=usr.getSrNo() %></td>
<td><%=usr.getName() %></td>
<td><%=usr.getUserName() %></td>

<td><a href="DeleteCustomer?id=<%=usr.getSrNo() %>">Delete </a></td>
</tr>
<%}%>
</table>
<br><br>
<a href="index.jsp">Logout </a>
</body>
</html>