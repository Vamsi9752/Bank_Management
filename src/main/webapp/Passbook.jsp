<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.Bank.DTO.Customer"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="com.Bank.DTO.Transaction"%>
<%@ page import="com.Bank.DAO.*"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PassBook</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>
<style>
body {
	margin: 10px;
	border: 2px solid gold;
	background: black;
	padding: 10px;
}

.three {
	height: 50px;
	display: flex;
	background: grey;
	color: black;
	padding: 10px;
}

.four {
	background: grey;
	height: 40px;
	position: relative;
	top: 73%;
}

.one {
	background: whitesmoke;
	position: relative;
	left: 25%;
}

.one {
	border: 2px solid gold;
	margin: 20px;
}

th, td {
	padding: 10px;
	border: 2px solid gold;
}

a {
	text-decoration: none;
	color: black;
}
</style>
</head>
<body>
	<%HttpSession sess=request.getSession(false);
Customer c=(Customer)sess.getAttribute("success");
TransactionDAO tdao= new TransactionDAOImpl();
ArrayList Al=(ArrayList)tdao.getTransaction(c.getAccno());
Iterator it=Al.iterator();
%>
	<div class="three">
		<div class="col-3">
			<h3>
				Welcome <span style="color: gold"><%=c.getName() %></span>
			</h3>
		</div>
		<div class="col-3"></div>
		<div class="col-3"></div>
		<div class="col-3">
			<button class="btn bg-warning">
				<a href="Login.jsp">Back</a>
			</button>
		</div>
	</div>
	<form action="passbook">
		<table border:2 class="one">
			<tr>
				<th>TRAN_ID</th>
				<th>USER_ACC</th>
				<th>REC_ACC</th>
				<th>TRAN_DATE</th>
				<th>TRAN_TYPE</th>
				<th>AMOUNT</th>
				<th>BALANCE</th>
			</tr>

			<%while(it.hasNext()) {
	Transaction t1=(Transaction)it.next();
	%>
			<tr>
				<td><center><%=t1.getTransactionId()%></center></td>
				<td><center><%=t1.getUser()%></center></td>
				<td><center><%=t1.getRec_acc() %></center></td>
				<td><center><%=t1.getDate() %></center></td>
				<td><center><%=t1.getTransaction()%></center></td>
				<td><center><%=t1.getAmount() %></center></td>
				<td><center><%=t1.getBalance() %></center></td>
			</tr>

			<%}; %>

		</table>
		<center>
			<button class="btn bg-warning" style="margin: 10px;">
				<a href="Dashboard.jsp">Back</a>
			</button>
		</center>
	</form>
	<div class="four">
		<center>
			<h3>&copy Copy @2025</h3>
		</center>
	</div>
</body>
</html>