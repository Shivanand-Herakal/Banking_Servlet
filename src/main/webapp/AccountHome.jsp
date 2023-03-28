<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
/* Styles for the buttons */
button {
  background-color: #007bff;
  border: none;
  color: #fff;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  border-radius: 5px;
  margin: 20px;
  position: relative;
  overflow: hidden;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
}

/* Animation for the buttons */
button:hover {
  animation: moveIn 0.5s ease-out forwards;
}

/* Keyframes for the animation */
@keyframes moveIn {
  0% {
    opacity: 0;
    transform: translateY(50px);
  }
  100% {
    opacity: 1;
    transform: translateY(0);
  }
}

</style>
</head>
<body bgcolor="gold">
<a href="Deposit.html"><button>Deposit</button></a><br><br>
<a href="withdraw.html"><button>Withdraw</button></a><br><br>
<a href="cheackbalance.jsp"><button>Check Balance</button></a><br><br>
<a href="viewTransaction.jsp"><button>View Transaction</button></a><br><br>
<a href="logout"><button>Logout</button></a><br><br>


</body>
</html>