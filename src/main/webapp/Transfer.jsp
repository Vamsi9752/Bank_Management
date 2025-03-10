<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.Bank.DTO.Customer"%>
<!DOCTYPE html>
<html>
<head>
<title>Transfer</title>
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
	marign: 40px;
	height: 550px;
	width: 600px;
	position: relative;
	top: 30%;
	left: 32%;
}

a {
	color: black;
	text-decoration: none;
}

.two {
	color: gold;
	background: black;
	border: 2px solid gold;
	margin: 30px;
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
	top: 30%;
}

input {
	background-color: black;
	border: 1px solid gold;
	color: grey;
}
</style>

</head>
<%

HttpSession sess=request.getSession(false);
Customer c=(Customer)sess.getAttribute("success");
String transfer=(String)sess.getAttribute("transfered");
String Not_transfer=(String) sess.getAttribute("not_transfered");
%>
<body>

	<div class="three">
		<div class="col-3">
			<h3>
				Welcome <span style="color: gold"><%=c.getName() %> </span>
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
	<div class="one">
		<div class="card two">
			<div class="card title two">
				<center>
					<h3 style="padding: 10px">Amount Transfering</h3>
				</center>
			</div>
			<div class="card-body">
				<form action="transfer">
					<fieldset>
						<%if (transfer!=null){ %>
						<center>
							<h3><%=transfer %></h3>
						</center>
						<%}; %>
						<%if(Not_transfer!=null){ %>
						<center>
							<h3><%=Not_transfer %></h3>
						</center>
						<%}; %>
						<center>
							<label>Enter the Amount to transfer:</label>
						</center>
						<center>
							<input type="text" placeholder="Amount" required maxlength="8"
								name="money">
						</center>
						<br>
						<center>
							<label>Reciever's Account Number:</label>
						</center>
						<center>
							<input type="text" placeholder="Acc Number" name="racc">
						</center>
						<br>
						<center>
							<label>Enter Your Pin:</label>
						</center>
						<center>
							<input type="text" placeholder="Pin" name="pin">
						</center>
						<div>
							<button type="submit"
								style="position: relative; left: 42.5%; margin: 5px;"
								class="btn bg-success">Submit</button>
						</div>
					</fieldset>
				</form>
				</center>
			</div>

			<div>
				<center>
					<button class="btn bg-warning" style="margin: 10px;">
						<a href="Dashboard.jsp">Back</a>
					</button>
				</center>
			</div>
		</div>

	</div>

	<div class="four">
		<center>
			<h3>&copy Copy @2025</h3>
		</center>
	</div>

</body>

</html>