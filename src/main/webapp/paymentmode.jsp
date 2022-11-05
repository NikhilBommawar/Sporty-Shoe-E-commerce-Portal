<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<jsp:include page="ViewCart.jsp"></jsp:include>
<body>
<br>
Please select your payment mode <br>
<form action="pay.jsp">
<input type="hidden" value=<%=request.getParameter("total") %> name="total" >
<select name="paymode">
<option value="null" >Select </option>
<option value= "debit">Debit Card </option>
<option value="credit" >Credit Card </option>
<option value="netbanking" >Net Banking </option>
<option value="phonepay" >Phone Pay </option>
</select>
<input type="submit">
</form>
<br><br>
<a href="index.jsp">Logout </a>
</body>
</html>