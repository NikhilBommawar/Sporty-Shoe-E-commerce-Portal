<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>addProduct</title>
<style>
body {
  background-image: url('4.jpg');
  background-repeat: no-repeat;
  background-size: cover;
}
</style>
</head>
<body>

<br>
<h1>Please fill in the product details</h1>
<br>
<div align="left">
<br/>
<form action="AddProduct">
<p>
Product Name: <input type="text" name="prname">
</p>
<p>
Product Brand: <input type="text" name="brand">
</p>
<p>
<p>
Product Category: <input type="text" name="prcategory">
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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit" value="Add">
</form>
<br>
<a href="index.jsp">Logout </a>
</div>
</body>
</html>