<%@page import="com.example.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div align="center">

<% User user=(User) request.getAttribute("user"); %>
<h3 style="color:green"> <%=user.getName() %> registered Successfully as <%=user.getUser_type() %> </h3>
<jsp:include page="index.jsp"></jsp:include>
</div>
</body>
</html>