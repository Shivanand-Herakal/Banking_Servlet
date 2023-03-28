<%@page import="javax.security.auth.login.AccountException"%>
<%@page import="dto.BankAccount"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Select Account</title>
<style>
/* Styles for the body */
body {
  background-color: gold;
  font-family: Arial, sans-serif;
}

/* Styles for the heading */
h1 {
  font-size: 36px;
  font-weight: bold;
  text-align: center;
  margin-top: 50px;
  opacity: 0;
  animation: fadeIn 1s ease-in-out forwards;
}

/* Styles for the button */
button {
  background-color: red;
  border: none;
  color: #fff;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  border-radius: 5px;
  margin-top: center;
  opacity: 0;
  animation: fadeIn 1s ease-in-out forwards;
}

button:hover {
  background-color: #003366;
  animation: pulse 1s ease-in infinite;
}

/* Animation keyframes */
@keyframes fadeIn {
  from {
    opacity: 0;
    transform: translateX(-50px);
  }
  to {
    opacity: 1;
    transform: translateX(0);
  }
}

@keyframes pulse {
  from {
    transform: scale(1);
  }
  to {
    transform: scale(1.1);
  }
}

</style>
</head>
<body bgcolor="gold">
<center>
<%List<BankAccount> list=(List<BankAccount>)request.getAttribute("list");
if(list.isEmpty()){
	 %>
	 <h1>No Active Account Found</h1>
	 <%}else{ %>
	 <h1>Select Bank Account</h1>
	 <%for(BankAccount account:list){ %>
	 <a href="Setaccount?acno=<%= account.getAccount_no()%>"><button><%=account.getAccount_no() %></button></a> <br><br>

	 <%} %>
	 <%} %>
	 <br>
	 
	<a href="Customerhome.html"><button>Back</button></a>
	</center>
</body>
</html>