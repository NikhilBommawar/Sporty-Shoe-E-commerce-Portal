<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AdminLogin</title>
</head>
<body>
<div align="center">
<jsp:include page="index.jsp"></jsp:include>
<br>
<h1 style="color:blue"><b>Welcome to Sporty Shoes </b></h1>
<h3 style="color:tomato">>Welcome Admin</h3>
<br/>

<form action="VerifyUser">
User Type: <input type="text" value="<%=request.getParameter("utype") %>" name="utype" readonly><br><br/>
UserName: <input type="text" name="uname"><br><br/>
Password: <input type="password" name="password"><br><br/>
<input type="submit" value="Login">
</form>
If new Admin <a href="register.jsp"> Click here to Register </a>
<br><br>
<a href="index.jsp">Logout </a>
</div>
</body>
</html>