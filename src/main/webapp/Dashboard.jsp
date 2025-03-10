<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.Bank.DTO.Customer"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DashBoard</title>
</head>
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

.one {
	height: 50px;
	display: flex;
	background: grey;
	color: black;
	padding: 10px;
}

.two {
	width: 200px;
	height: 200px;
	border: 2px solid gold;
	padding: 5px;
	background: black;
	color: black;
}

.three {
	display: flex;
	justify-content: space-around;
	margin: 40px;
}

a {
	color: black;
	text-decoration: none;
}

.four {
	background: grey;
	height: 40px;
}
</style>
<body>

	<% HttpSession sess=request.getSession(false);
Customer c=(Customer) sess.getAttribute("success");
if(c!=null){%>
	<div class="one">
		<div class="col-3">
			<h3>
				Welcome <span style="color: gold"><%=c.getName()%></span>
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
	<div class="three">
		<div class="card two">
			<div class="card-title" style="background: gold;">
				<center>Deposit</center>
			</div>
			<div class="card-body">
				<center>
					<button style="background: gold; margin: 30px">
						<a href="Deposit.jsp">Click Here</a>
					</button>
				</center>
			</div>
		</div>
		<div class="card two">
			<div class="card-title" style="background: gold;">
				<center>Check Balance</center>
			</div>
			<div class="card-body">
				<center>
					<button style="background: gold; margin: 30px">
						<a href="CheckBalance.jsp">Click Here</a>
					</button>
				</center>
			</div>
		</div>
		<div class="card two">
			<div class="card-title" style="background: gold;">
				<center>Passbook</center>
			</div>
			<div class="card-body">
				<center>
					<button style="background: gold; margin: 30px">
						<a href="Passbook.jsp">Click Here</a>
					</button>
				</center>
			</div>
		</div>
	</div>

	<div class="three">
		<div class="card two">
			<div class="card-title" style="background: gold;">
				<center>Reset Pin</center>
			</div>
			<div class="card-body">
				<center>
					<button style="background: gold; margin: 30px">
						<a href="Forgot1.jsp">Click Here</a>
					</button>
				</center>
			</div>
		</div>
		<div class="card two">
			<div class="card-title" style="background: gold;">
				<center>Transfer Amount</center>
			</div>
			<div class="card-body">
				<center>
					<button style="background: gold; margin: 30px">
						<a href="Transfer.jsp">Click Here</a>
					</button>
				</center>
			</div>
		</div>
		<div class="card two">
			<div class="card-title" style="background: gold;">
				<center>Get Details & Update</center>
			</div>
			<div class="card-body">
				<center>
					<button style="background: gold; margin: 30px">
						<a href="Details.jsp">Click Here</a>
					</button>
				</center>
			</div>
		</div>
	</div>
	<%if (c.getAccno()==5 ){ %>
	<div class="three">
		<div class="card two">
			<div class="card-title" style="background: gold;">
				<center>View Users</center>
			</div>
			<div class="card-body">
				<center>
					<button style="background: gold; margin: 30px">
						<a href="Users.jsp">Click Here</a>
					</button>
				</center>
			</div>
		</div>
		<div class="card two">
			<div class="card-title" style="background: gold;">
				<center>Get All Transactions</center>
			</div>
			<div class="card-body">
				<center>
					<button style="background: gold; margin: 30px">
						<a href="GetTransactions.jsp">Click Here</a>
					</button>
				</center>
			</div>
		</div>
		<div class="card two">
			<div class="card-title" style="background: gold;">
				<center>Delete Customers</center>
			</div>
			<div class="card-body">
				<center>
					<button style="background: gold; margin: 30px">
						<a href="Delete.jsp">Click Here</a>
					</button>
				</center>
			</div>
		</div>
	</div>

	<%}; %>
	<div class="four">
		<center>
			<h3>&copy Copy @2025</h3>
		</center>
	</div>
	<%};%>
</body>
</html>