<%@page import="com.example.PurchaseList"%>
<%@page import="com.example.GlobalCart"%>
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
<%User user=(User) session.getAttribute("customer"); 
  PurchaseList pl=(PurchaseList) session.getAttribute("purchaselist");
  float[] price=pl.getPrice();
  String[] names=pl.getProductname();
  
%>   
<br><br>
<h1 style="color:blue"><b>Sporty Shoes Portal </b></h1>
<br>
<h2 style="color:green"> Congratulations <%=user.getName() %>, Order Placed Successfully </h2>

<h3>Purchase Details </h3>
<table border="1">
<tr>
<th>Customer ID </th>
<th>Customer Name </th>
<th>Product Purchased </th>
<th> Price </th>
<th>Total Price  </th>
</tr>
<tr>
<td><%=pl.getCustomerid() %></td>
<td><%=pl.getCustomername() %></td>
<td><%for(int i=0;i<price.length;i++){%>
      <%=names[i]%> 
       <br>
       <%}%>
</td>

<td><%for(int i=0;i<price.length;i++){%>
      <%=price[i] %>  
       <br>
       <%}%>
</td>
<td><%=pl.getTotalprice() %></td>
</tr>
</table><br>


<%
GlobalCart.cart.clear(); 
  session.removeAttribute("customer");
%>
<a href="index.jsp">Logout </a>

</body>
</html>