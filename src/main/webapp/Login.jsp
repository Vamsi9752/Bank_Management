<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
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
	padding: 20px;
}

.log {
	border: 2px solid gold;
	padding: 30px;
	margin-left: 600px;
	margin-right: 600px;
}

label {
	color: grey;
}

.foot {
	background: grey;
	color: black;
	height: 40px;
	margin-top: 120px;
}

input {
	border: 2px solid gold;
	background: grey;
}

a {
	text-decoration: none;
	color: gold;
}
</style>
</head>
<body>
<body>
	<center>
		<h1 style="color: gold">Welcome to Login Page</h1>
	</center>
	<br>
	<br>
	<div class="log">
		<form action="login">
			<fieldset>
				<label>Account Number: </label><br> <input type="text" required
					placeholder="Account Number" name="acc"><br>
				<br> <label>Enter Your Pin: </label><br> <input
					type="password" required placeholder="Pin" name="pin"><br>
				<br>
				<center>
					<button type="submit" class="btn bg-warning">Login</button>
				</center>
			</fieldset>
		</form>
		<br>
		<center>
			<a href="Create Account.jsp">Create New Account ? </a>
		</center>
		<br>
		<center>
			<a href="Forgot pin.jsp">Forgot Pin</a> &nbsp &nbsp
			<button class="btn bg-danger">
				<a href="Welcome.jsp">Back</a>
			</button>
		</center>
	</div>
	<div class="foot">
		<center>
			<h3>&copy Copy @2025</h3>
		</center>
	</div>
</body>
</body>
</html>