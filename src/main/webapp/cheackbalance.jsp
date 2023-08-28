<%@page import="dto.customer"%>
<%@page import="dao.BankDao"%>
<%@page import="dto.BankAccount"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Check Balance</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-image: url("./1622984959906826-0.png");
        background-repeat: no-repeat;
        background-size: cover;
      
    }

 

    h1 {
        color: red;
        text-align: center;
        margin-top: 50px;
    }

    .button {
        display: inline-block;
        background-color: #4CAF50;
        border: none;
        color: white;
        text-align: center;
        padding: 10px 20px;
        text-decoration: none;
        margin-top: 20px;
        cursor: pointer;
        border-radius: 5px;
        transition: background-color 0.3s;
    }

    .button:hover {
        background-color: pink;
    }
</style>
</head>
<body method="post">
<%
    long acno = (long) request.getSession().getAttribute("acno");
    BankDao bankDao = new BankDao();
    BankAccount account = bankDao.find(acno);
    customer customer = account.getCustomer();
%>

<h1>Hello <% if (customer.getGender().equals("male")) { %>Mr.<% } else { %>Ms.<% } %><%= customer.getName() %></h1>
<h1>Your <%= account.getAccount_type() %> account balance is: <%= account.getAmount() %></h1>
<br><br>
<a href="AccountHome.jsp" class="button">Back</a>

</body>
</html>
