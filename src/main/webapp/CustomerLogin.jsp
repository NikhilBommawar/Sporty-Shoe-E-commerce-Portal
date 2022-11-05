<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CustomerLogin</title>
</head>
<body>
<div align="center">
<jsp:include page="index.jsp"></jsp:include>
<br>
<h1 style="color:tomato">>Welcome Dear Customer</h1>
<br/>
<form action="VerifyUser">
User Type: <input type="text" value="<%=request.getParameter("utype") %>" name="utype" readonly><br/>
UserName: <input type="text" name="uname"><br/>
Password: <input type="password" name="password"><br/>
<input type="submit" value="Login">
</form>
If new Customer  <a href="register.jsp"> Click hete to Register </a>
</div>
</body>
</html>