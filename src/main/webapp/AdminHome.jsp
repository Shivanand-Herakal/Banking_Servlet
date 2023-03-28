<%@page import="dto.BankAccount"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AdminHome page</title>
<style>
/* Set background color for the page */
body {
  background-color: skyblue;
}

/* Set styles for the table */
table {
  border-collapse: collapse;
  margin: 20px auto;
  font-size: 16px;
  font-weight: bold;
  color: white;
  animation: rainbow 18s ease-in-out infinite;
}

/* Set styles for table headers */
th {
  padding: 10px;
  background-color:lavender;
}

/* Set styles for table rows */
tr:nth-child(even) {
  background-color: #444;
}

tr:nth-child(odd) {
  background-color: #222;
}

/* Set styles for table cells */
td {
  padding: 10px;
}

/* Define animation for the table */
@keyframes rainbow {
  0% {
    color: red;
  }
  45% {
    color: pink;
  }
  60% {
    color: chartreuse;
  }
  75% {
    color: green;
  }
  85% {
    color: blue;
  }
  80% {
    color: turquoise;
  }
  100% {
    color: violet;
  }
}

</style>
</head>
<body bgcolor="skyblue">

<% List<BankAccount>list=(List<BankAccount>)request.getAttribute("list"); %>
<table border="1" bgcolor="red">
<tr bgcolor="yellow">   
<th >Account Number</th>
<th>Account Type</th>
<th>Customer Name</th>
<th>Customer ID</th>
<th>Status</th>
<th>Change Status</th>
</tr>

<% for(BankAccount account:list) { %>
<tr> 
<th><%=account.getAccount_no() %></th>
<th><%=account.getAccount_type() %></th>
<th><%=account.getCustomer().getName() %></th>
<th><%=account.getCustomer().getCust_id() %></th>
<th><%=account.isStatus() %></th>
<th><a href="ChangeStatus? accountno=<%=account.getAccount_no()%>"><button>Change Status</button></a></th>
</tr>
<%} %>

</table>
<br></br>
<a href="home.html"><button bgcolor="pink">LogOut</button></a>
</body>
</html>