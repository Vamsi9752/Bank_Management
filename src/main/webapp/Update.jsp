<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.Bank.DAO.*"%>
<%@ page import="com.Bank.DTO.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Update</title>
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
	top: 23%;
}

.one {
	background: black;
	border: 2px solid gold;
	margin: 20px;
	position: relative;
	left: 38%;
	top: 10%;
	height: 400px;
	width: 400px;
}

input {
	padding: 10px;
	border: 2px solid gold;
	color: whitesmoke;
	background: black;
	position: relative;
	left: 20%;
}

label {
	position: relative;
	left: 35%;
	margin: 10px;
	color: whitesmoke;
}

a {
	text-decoration: none;
	color: black;
}

#five {
	position: relative;
	top: 20%;
	left: 39%;
}
</style>
</head>
<body>
	<%HttpSession sess=request.getSession(false);
Customer c=(Customer)sess.getAttribute("success");
String save=(String)sess.getAttribute("updated");
String notsave=(String) sess.getAttribute("notupdate");
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
	<%if(save!=null){ %>
	<center>
		<h3><%=save %></h3>
	</center>
	<%}; %>
	<%if(notsave!=null){ %>
	<center>
		<h3><%=notsave %></h3>
	</center>
	<%}; %>
	<form action="update" class="one">
		<label>Name:</label><br> <input type="text" required
			placeholder="Name" name="name" value=<%=c.getName() %>><br>
		<label>Phone:</label><br> <input type="tel" required
			placeholder="Phone" name="phone" value=<%=c.getPhone() %>><br>
		<label>Mail:</label><br> <input type="text" required
			placeholder="Mail" name="mail" value=<%=c.getMail() %>"><br>
		<button type="submit" class="btn bg-warning" id="five">Submit</button>
	</form>
	<center>
		<button class="btn bg-warning" style="margin: 10px;">
			<a href="Details.jsp">Back</a>
		</button>
	</center>
	</div>
	<div class="four">
		<center>
			<h3>&copy Copy @2025</h3>
		</center>
	</div>
</body>
</html>