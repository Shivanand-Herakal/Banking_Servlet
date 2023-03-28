<%@page import="dto.customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Select Account Type</title>
</head>
<body bgcolor="orange">
<center>
<%customer customer=(customer)session.getAttribute("customer");
if(customer== null){
	response.getWriter().print("<h1> Session Expired Login</h1>");
	request.getRequestDispatcher("login.html").include(request, response);
}
else{
%>
<h1>HELLO </h1><br>
<h1><%=customer.getName() %></h1>
<br>
<h1>SELECT TYPE OF ACCOUNT</h1>
<form action="createbankaccount">
<input type="radio" name="banktype" value="saving" required="required"> <b> SAVING </b> <br>
<input type="radio" name="banktype" value="current" required="required"><b>CURRENT </b> <br>
<button type="reset">Cancle</button>
<button >Submit</button><br><br>

</form>
<%} %>
<a href="login.html" ><button>HOME</button></a>
</center>
</body>
</html>