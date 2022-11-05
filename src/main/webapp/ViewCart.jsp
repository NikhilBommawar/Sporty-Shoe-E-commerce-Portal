
<%@page import="com.example.User"%>
<%@page import="com.example.PurchaseList"%>
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
<title>viewcart</title>
<style>
body {
  background-image: url('6.jpg');
  background-repeat: no-repeat;
  background-size: cover;
}
</style>
</head>

<body>
<br>
<br>
<h1 style="color:blue"><b>Sporty Shoes Portal </b></h1>
<h2> Your cart items are: </h2>
<%float total=0; 
PurchaseList pl=new PurchaseList();
User user=(User) session.getAttribute("customer");
pl.setCustomerid(user.getSrNo());
pl.setCustomername(user.getName());
int i=0;


%>
<table border="1">
<tr>
<th>Product Id</th>
<th>Product Name</th>
<th>Price</th>
</tr>
<% int length=GlobalCart.cart.size(); 
String[] pname=new String[length];
float[] price=new float[length];
for(Products P:GlobalCart.cart) {%>
	<tr>
	<td><%=P.getPrid() %></td>
    <td><%=P.getPrname() %></td>
    <td><%=P.getPrprice() %> </td>
	</tr>   

<%
total=total+P.getPrprice();
pname[i]=P.getPrname();
price[i]=P.getPrprice();
i+=1;
}%>
</table>
<%pl.setProductname(pname);
  pl.setPrice(price);
  pl.setTotalprice(total);
  session.setAttribute("purchaselist", pl);  
%>

<h2>Total Price: <%=total %> </h2>

<form action="paymentmode.jsp">
<input type="hidden" value=<%= total%> name="total">
<input type="submit" value="Proceed for Payment">
</form>
<br><br>
<a href="index.jsp">Logout </a>
</body>
</html>