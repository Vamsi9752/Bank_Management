<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact Us</title>
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
	margin: 5px;
	border: 2px solid gold;
	padding: 5px;
}

.nav {
	height: 50px;
	background: #3b3939;
	padding: 5px;
}

.crd {
	width: 50%;
	display: flex;
	justify-content: center;
	background: #3b3939;
	margin-top: 70px;
	margin-left: 400px;
	border: 2px solid gold;
}

input {
	background: #3b3939;
	padding: 5px;
	margin: 20px;
	width: 500px;
	border: 2px solid gold;
}

.na {
	height: 30px;
	background: #3b3939;
	margin-top: 30px;
}
</style>
</head>
<body>
<body>
	<div class="nav">
		<div class="col-3"></div>
		<div class="col-3" style="color: black;">
			<h4>Bank App</h4>
		</div>
		<div class="col-3"></div>
		<div class="col-3">
			<button class="bg-warning btn">
				<a href="Welcome.jsp">Back<a>
		</div>
	</div>
	<div>
		<div class="card crd">
			<div class="card-heading" style="color: gold; padding: 5px;">
				<h2>
					<center>Contact Admin</center>
				</h2>
			</div>
			<div class="card-body " style="color: black;">
				<h4>
					<center>Email: vamsikrishna9752@gmail.com</center>
				</h4>
				<h4>
					<center>Phone: 63051785XX</center>
				</h4>
				<h4>
					<center>Address: Benguluru</center>
				</h4>
				<form>
					<center>
						<input type="text" required placeholder="Your Name"
							maxlength="30px"><br> <input type="email" required
							placeholder="Your Email" maxlength="30px"><br> <input
							type="text" placeholder="Your Message" size:30px><br>
						<button type="submit" class="btn bg-warning">
							<center>Submit Message</center>
						</button>
					</center>
				</form>
			</div>
		</div>
		<div class="na">
			<h4 style="color: black;">
				<center>&copy Copy @2025</center>
			</h4>
		</div>
	</div>
</body>
</html>