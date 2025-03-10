<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Service & Support</title>
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
	background: black;
	margin: 10px;
	border: 2px solid gold;
	padding: 10px;
}

.nav {
	background: #3b3939;
	width: 100%;
	height: 50px;
	display: flex;
}

.crd {
	background: black;
	color: whitesmoke;
	width: 300px;
	padding: 5px;
	margin: 20px;
	border: 2px solid gold;
}

.bar {
	display: flex;
	justify-content: center;
}
</style>
</head>
<body>
	<div class="container-fluid nav ">
		<div class="col-3"></div>
		<div class="col-3 ">
			<h4 style="color: black; margin: 5px;">Bank App</h4>
		</div>
		<div class="col-3"></div>
		<div class="col-3">
			<button class=" btn bg-warning" type="submit" style="margin: 5px;">
				<a href="Welcome.jsp">Back<a>
			</button>
		</div>
	</div>
	<div class="bar row" style="padding: 40px">
		<div class="card crd ">
			<div class="card-heading" style="color: blue;">
				<center>Account Management</center>
			</div>
			<div class="card-body">
				<center>Easily open, close, and manage your bank accounts
					with secure online access.</center>
			</div>
		</div>
		<div class="card crd">
			<div class="card-heading" style="color: blue;">
				<center>Online Banking</center>
			</div>
			<div class="card-body">
				<center>Access your account, pay bills, and transfer money
					anytime, anywhere.</center>
			</div>
		</div>
		<div class="card crd">
			<div class="card-heading" style="color: blue;">
				<center>Loan Services</center>
			</div>
			<div class="card-body">
				<center>Apply for personal, home, or business loans with
					flexible interest rates.</center>
			</div>
		</div>
		<div class="card crd">
			<div class="card-heading" style="color: blue;">
				<center>Credit & Debit Cards</center>
			</div>
			<div class="card-body">
				<center>Get instant approval for credit and debit cards
					with exciting rewards.</center>
			</div>
		</div>
		<div class="bar row" style="padding: 40px">
			<div class="card crd ">
				<div class="card-heading" style="color: blue;">
					<center>Fixed Deposits</center>
				</div>
				<div class="card-body">
					<center>Earn high-interest rates with our safe and secure
						fixed deposit schemes.</center>
				</div>
			</div>
			<div class="card crd">
				<div class="card-heading" style="color: blue;">
					<center>Mobile Banking</center>
				</div>
				<div class="card-body">
					<center>Banking on the go! Manage transactions via our
						mobile banking app.</center>
				</div>
			</div>
			<div class="card crd">
				<div class="card-heading" style="color: blue;">
					<center>Money Transfers</center>
				</div>
				<div class="card-body">
					<center>Send and receive money worldwide with fast and
						secure transactions.</center>
				</div>
			</div>
			<div class="card crd">
				<div class="card-heading" style="color: blue;">
					<center>24/7 Customer Support</center>
				</div>
				<div class="card-body">
					<center>Our team is available 24/7 to assist you with your
						banking needs.</center>
				</div>
			</div>
		</div>
		<div
			style="background: #3b3939; height: 40px; padding: 5px; color: black;">
			<center>
				<h4>&copy Copy @2025</h4>
			</center>
		</div>
</body>
</html>