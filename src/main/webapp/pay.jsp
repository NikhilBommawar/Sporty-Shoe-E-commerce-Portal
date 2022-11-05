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
<h3> Payable Amount:  <%=request.getParameter("total") %> </h3>
<% String s=request.getParameter("paymode");
if(s.contentEquals("debit")){%>
<form action="done.jsp">
 Debit Card Number: <input type="text"><br>
 Password: <input type="text"><br>
  <input type="submit">
 </form>
<%}%>

<% if(s.contentEquals("credit")){%>
<form action="done.jsp">
 Credit Card Number: <input type="text"><br>
 Password: <input type="text"><br>
 <input type="submit">
 </form>
<%}%>

<% if(s.contentEquals("netbanking")){%>
<form action="done.jsp">
 NetBanking UserID: <input type="text"><br>
 Password: <input type="text"><br>
 <input type="submit">
 </form>
<%}%>
<% if(s.contentEquals("phonepay")){%>
<form action="done.jsp">
 Phone Pay Number: <input type="text"><br>
 Password: <input type="text"><br>
 <input type="submit">
 </form>
<%}%>
<br><br>
<a href="index.jsp">Logout </a>
</body>
</html>