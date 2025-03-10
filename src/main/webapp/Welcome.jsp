<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Page</title>
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
	margin: 2px;
	padding: 10px;
	border: 2px solid gold;
	background: black;
}

.navbar {
	background-color: #f7e97e;
	overflow: hidden;
	display: flex;
	justify-content: flex-end;
	padding: 10px 0;
	height: 60px;
}

.navbar a {
	color: white;
	text-decoration: none;
	padding: 14px 20px;
	font-size: 18px;
}

.navbar a:hover {
	background-color: black;
	border-radius: 5px;
}

h1 {
	color: #f7e97e;
}

.crd {
	background-color: black;
	border: 2px solid gold;
	color: white;
}

a {
	text-decoration: none;
	color: black;
}
</style>
</head>
<body>
	<div class="navbar">
		<a href="About.jsp">About</a> <a href="Contact.jsp">Contact</a> <a
			href="Service.jsp">Services</a> <a href="Help.jsp">Help</a>
	</div>
	<br>
	<h1>
		<center>Your trusted partner for all your Banking needs.
			Let's get started!</center>
	</h1>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="row">
		<div class=" container col-mt-4 card crd" style="width: 300px;">
			<div class="card-header">
				<center>Login</center>
			</div>
			<div class="card-body btn">
				<center>
					<button type="submit" class="bg-warning">
						<a href="Login.jsp" style="text-decoration: none"
							style="color:black">Login into Account</a>
					</button>
				</center>
			</div>
		</div>
		<div class=" container col-mt-4 card crd" style="width: 300px;">
			<div class="card-header">
				<center>Create Account</center>
			</div>
			<div class="card-body btn">
				<center>
					<button type="submit" class="bg-warning">
						<a href="Create Account.jsp">Create Account </a>
					</button>
				</center>
			</div>
		</div>
		<div class="container col-mt-4 card crd" style="width: 300px;">
			<div class="card-header">
				<center>Exit Application</center>
			</div>
			<div class="card-body btn">
				<center>
					<button type="submit" class="bg-warning">
						<a href="Exit.jsp">Exit Application</a>
					</button>
				</center>
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div style="background: #f7e97e; height: 50px; color: black">
		<center>
			<h2>&copy Copy @2025</h2>
		</center>
	</div>
	>

</body>
</html>