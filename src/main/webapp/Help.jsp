<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Help</title>
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
	color: black;
}

.bar {
	display: flex;
	justify-content: center;
	padding-bottom: 50px;
}

.na {
	height: 30px;
	background: #3b3939;
	margin-top: 30px;
}
</style>
</head>
<body>
	<div class="nav ">
		<div class="col-3"></div>
		<div class="col-3" style="padding: 5px;">
			<h4>Bank App</h4>
		</div>
		<div class="col-3"></div>
		<div class="col-3" style="padding: 5px;">
			<button type="submit" class="bg-warning btn">
				<a href="Welcome.jsp">Back<a>
			</button>
		</div>
	</div>

	<h1 style="padding: 40px; color: gold;">
		<center>Help & Support</center>
	</h1>
	<div class="bar ">
		<div class="card"
			style="background: black; margin: 20px; border: 2px solid gold; padding: 5px; width: 300px;">
			<div class="card-heading" style="padding: 5px; color: blue;">
				<center>
					<h4>Contact Support</h4>
				</center>
			</div>
			<div class="card-body" style="color: whitesmoke;">
				<center>Need immediate help? Call us at +91 63051 785XX</center>
			</div>
		</div>
		<div class="card"
			style="background: black; margin: 20px; border: 2px solid gold; padding: 5px; width: 300px;">
			<div class="card-heading" style="padding: 5px; color: blue;">
				<center>
					<h4>Email Us</h4>
				</center>
			</div>
			<div class="card-body" style="color: whitesmoke;">
				<center>Send your queries to vamsikrishna97526@gmail.com</center>
			</div>
		</div>
		<div class="card"
			style="background: black; margin: 20px; border: 2px solid gold; padding: 5px; width: 300px;">
			<div class="card-heading" style="padding: 5px; color: blue;">
				<center>
					<h4>Live Chat</h4>
				</center>
			</div>
			<div class="card-body" style="color: whitesmoke;">
				<center>Chat with our agent here (24/7 Support)</center>
			</div>
		</div>
	</div>
	<div class="da" style="color: gold; padding-left: 250px;">
		<h1>Frequently Asked Questions (FAQs)</h1>
		<h4>How can I reset my password?</h4>
		<h4>How do I check my account balance?</h4>
		<h4>Can I transfer money internationally?</h4>
		<h4>What should I do if my card is lost?</h4>
	</div>
	<div class="na">
		<h4 style="color: black;">
			<center>&copy Copy @2025</center>
		</h4>
	</div>
</body>
</html>