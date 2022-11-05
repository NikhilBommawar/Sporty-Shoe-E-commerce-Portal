<%@page import="com.example.User"%>
<%@page import="com.example.GlobalCart"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.example.Products"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>dis</title>
</head>
<style>
body {
  background-image: url('6.jpg');
  background-repeat: no-repeat;
  background-size: cover;
}
</style>
<body>
<%User user=(User) session.getAttribute("customer"); %>
<br><br>
<h1 style="color:blue"><b>Sporty Shoes Portal </b></h1>
<br>
<h2>Product Details</h2>
<br>
<h3>Select you Cart items Mr/Mrs <%=user.getName() %> </h3>
<table border="1"  bgcolor="pink">
<tr style="color:green">
<th>Product ID</th>
<th>Product name</th>
<th>Product Category</th>
<th>For Gender</th>
<th>Price </th>
</tr>
<%

List<Products> products=(List<Products>) request.getAttribute("products"); 
for(Products p:products){%>
<tr>
<td><%=p.getPrid() %></td>
<td><%=p.getPrname() %></td>
<td><%=p.getPrcategory() %></td>
<td><%=p.getGender() %></td>
<td><%=p.getPrprice() %></td>
<td><a href="addtocart?prid=<%=p.getPrid() %>">Add to Cart</a></td>
</tr>

<%} %>
</table>

<form action="ViewCart.jsp">
<input type="hidden" value=<%=request.getAttribute("cid") %> name="id" >

<input type="submit" value="View Cart">
</form>
<br><br>
<a href="index.jsp">Logout </a>
</body>
</html>