<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About Us</title>

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
	border: 2px solid gold;
	background: black;
	padding: 10px;
}

.bank {
	padding: 5px;
	display: flex;
	justify-content: flex-start;
}

.nav {
	background: #3b3939;
	display: flex;
	justify-content: flex-end;
}

.ma {
	padding-left: 300px;
	padding-right: 30px;
	padding-bottom: 30px;
	color: gold;
}

.ba {
	display: flex;
	justify-content: center;
}
</style>

</head>
<body>

	<div class="container-fluid nav">
		<div class="col-3"></div>
		<div class="bank col-3" style="color: black;">
			<h4>Bank App</h4>
		</div>
		<div class="col-3"></div>
		<div class="col-3">
			<button class="btn bg-warning" style="margin: 5px;">
				<a href="Welcome.jsp">Back<a>
			</button>
		</div>

	</div>
	<br>
	<br>
	<h1 style="color: gold;">
		<center>About Us</center>
	</h1>
	<div class="row ba" style="padding: 60px;">
		<div class="card"
			style="background: black; width: 300px; border: 2px solid gold; margin: 10px;">
			<div class="card-header" style="color: blue;">
				<center>
					<h4>Our Company</h4>
				</center>
			</div>
			<div class="card-body" style="color: whitesmoke;">
				<center>We are a leading provider of innovative banking
					solutions, committed to enhancing the customer experience.</center>
			</div>
		</div>
		<div class="card"
			style="background: black; width: 300px; border: 2px solid gold; margin: 10px;">
			<div class="card-header" style="color: blue;">
				<center>
					<h4>Our Mission</h4>
				</center>
			</div>
			<div class="card-body" style="color: whitesmoke;">
				<center>To provide secure, efficient, and innovative
					banking services, empowering customers to achieve their financial
					goals.</center>
			</div>
		</div>
		<div class="card"
			style="background: black; width: 300px; border: 2px solid gold; margin: 10px;">
			<div class="card-header" style="color: blue;">
				<center>
					<h4>Our Values</h4>
				</center>
			</div>
			<div class="card-body" style="color: whitesmoke;">
				<center>Integrity, Innovation, Customer-centricity, and
					Excellence guide our operations and customer relations.</center>
			</div>
		</div>

	</div>
	<div class="ma">
		<h1>Frequently Asked Questions (FAQs)</h1>
		<h6>What is your company's mission</h6>
		<h6>How do we ensure customer security?</h6>
		<h6>Can I open an account online?</h6>
		<h6>How can I contact customer support?</h6>
	</div>
</body>
</html>