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
<jsp:include page="AdminHome.jsp"></jsp:include>
<body>
<div align="center">
<br>
<h2>Product Details</h2>
<br>
<table border="1"  bgcolor="pink">
<tr style="color:green">
<th>Product ID</th>
<th>Product name</th>
<th>Product Category</th>
<th>For Gender</th>
<th>Price </th>
</tr>
<%List<Products> products=(List<Products>) request.getAttribute("allprod"); 
for(Products p:products){%>
<tr>
<td><%=p.getPrid() %></td>
<td><%=p.getPrname() %></td>
<td><%=p.getPrcategory() %></td>
<td><%=p.getGender() %></td>
<td><%=p.getPrprice() %></td>
<td><a href="editProduct.jsp?id=<%=p.getPrid()%>&name=<%=p.getPrname() %>&category=<%=p.getPrcategory()%>">Edit Details </a></td>
<td><a href="deleteProduct.jsp?id=<%=p.getPrid()%>">Delete </a></td>
</tr>
<%}%>
</table>
<br><br>
<a href="index.jsp">Logout </a>
</body>
</html>