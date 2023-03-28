<%@page import="dto.customer"%>
<%@page import="dao.BankDao"%>
<%@page import="dto.BankAccount"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>check balance</title>
</head>
<body method="post">
<% long acno=(long)request.getSession().getAttribute("acno");
		BankDao bankDao=new BankDao();
		BankAccount  account=bankDao.find(acno);
		customer customer=account.getCustomer();
%>

<h1>Hello <% if(customer.getGender().equals("male")){%>Mr.<%}else{%>Ms.<%}%><%=customer.getName() %></h1>
<h1>Your   <%=account.getAccount_type() %>   account balance is:-  <%=account.getAmount() %></h1>
<br><br>
<a href="AccountHome.jsp"><button>Back</button></a>

</body>
</html>