<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>editProduct</title>
<style>
body {
  background-image: url('3.jpg');
  background-repeat: no-repeat;
  background-size: cover;
}
</style>
</head>
<body>

<br>
<h1>Please fill in the product details to be updated</h1>
<br>
<div align="left">
<br/>
<form action="EditProduct">
<p>
Product ID: <input type="text" value=<%=request.getParameter("id") %> name="prid" readonly>
</p>
<p>
Product Name: <input type="text" value=<%=request.getParameter("name")%> name="prname">
</p>
<p>
Product Brand: <input type="text" name="brand">
</p>
<p>
<p>
Product Category: <input type="text" value=<%=request.getParameter("category")%>  name="prcategory">
</p>
<p>
Gender: <select name="gender">
<option value="not selected">Select</option>
        <option value="Male">Male</option>
        <option value="Female">Female</option>
        </select>
</p>
<p>
Price: <input type="text" name="prprice">
</p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit" value="Edit">
</form>
<br><br>
<a href="index.jsp">Logout </a>
</div>
</body>
</html>