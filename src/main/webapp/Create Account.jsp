<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up</title>
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

.form {
	display: flex;
	justify-content: center;
	border: 2px solid gold;
	margin-left: 600px;
	margin-right: 600px;
	margin-top: 10px;
	padding-top: 50px;
	padding-bottom: 20px;
	padding-left: 20px;
	padding-right: 20px;
	color:;
}

label {
	color: gold;
}

input {
	background: grey;
}

.one {
	color: gold;
}
</style>
</head>
<body>
	<center>
		<h1 style="color: gold; padding: 10px;">Sign-Up form</h1>
	</center>
	<br>
	<%HttpSession sess=request.getSession(false);
String success=(String)sess.getAttribute("success");
if(success!=null){%>
	<center>
		<h3 class="one"><%=success %></h3>
	</center>
	<% };%>
	<% String fail=(String)sess.getAttribute("fail");
if(fail!=null){%>
	<center>
		<h3 class="one"><%=fail %></h3>
	</center>
	<%}; %>

	<% String pin=(String)sess.getAttribute("pin");
  if(pin!=null){%>
	<center>
		<h3 class="one"><%=pin %></h3>
	</center>
	<%}; %>
	<div class="form">
		<form action="create">
			<fieldset>
				<label>Full Name </label><br> <input type="text"
					placeholder="Name" name="name" required maxlength="20"><br>
				<label>Email</label><br> <input type="email" required
					placeholder="E-mail" name="mail" maxlength="20"><br>
				<label>Mobile Number</label><br> <input type="tel" required
					placeholder="Phone Number" name="mobile"><br> <label>Pin</label><br>
				<input type="password" required placeholder="Pin" name="pin"><br>
				<label>Confirm Pin </label><br> <input type="password" required
					placeholder="Confirm Password" name="c_pin"><br>
				<br>
				<center>
					<button type="submit" class="btn bg-warning">Create
						Account</button>
				</center>
				<br>
			</fieldset>
		</form>
	</div>
	<br>
	<center>
		<p style="color: whitesmoke;">
			Already you have Account ?
			<button type="submit" class="btn bg-warning">
				<a href="Login.jsp" style="text-decoration: none">Login</a>
			</button>
		</p>
	</center>

</body>
</html>