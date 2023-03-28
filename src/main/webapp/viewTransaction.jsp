<%@page import="dto.customer"%>
<%@page import="dto.Transaction"%>
<%@page import="java.util.List"%>
<%@page import="dto.BankAccount"%>
<%@page import="dao.BankDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View transcation</title>
</head>
<body bgcolor="skyblue">
<% customer customer=(customer) request.getSession().getAttribute("customer");
	if(customer== null){
		response.getWriter().print("<h1> Session Expired Login</h1>");
		request.getRequestDispatcher("login.html").include(request, response);
	}
	else {
		%>


<% long acno=(long)request.getSession().getAttribute("acno");
		BankDao bankDao=new BankDao();
		BankAccount  account=bankDao.find(acno);
		List<Transaction>list=account.getTransactions();
		%>
		<h1>Account Nos:-<%=account.getAccount_no()%></h1>
		<h1>Account Type:-<%=account.getAccount_type()%></h1><br>
		
<table border="1" bgcolor="red">
<h1>Transaction</h1>
<tr bgcolor="yellow">   
<th>Transcation Id</th>
<th>Deposit</th>
<th>Withdraw</th>
<th>Balance</th>
<th>Date/Time</th>
</tr>
<%for(Transaction transaction:list) { %>
<tr> 
<th><%=transaction.getId()%></th>
<th><%=transaction.getDeposit() %></th>
<th><%=transaction.getWithdraw() %></th>
<th><%=transaction.getBalance() %></th>
<th><%=transaction.getDateTime() %></th>
<%} %>
</tr>
</table>
<br>
<br>
<a href="AccountHome.jsp"><button>Bank</button></a>
<%} %>
</body>
</html>