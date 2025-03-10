<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.Bank.DTO.Customer"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="com.Bank.DTO.Transaction"%>
<%@ page import="com.Bank.DAO.*"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<title>Delete Users</title>
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
	top: 70%;
}

.one {
	background: black;
	position: relative;
	left: 26%;
	border: 2px solid gold;
	margin: 20px;
	width: 500px;
	color: whitesmoke;
}

th, td {
	padding: 10px;
	border: 2px solid gold;
}

a {
	text-decoration: none;
	color: black;
}
</style>
</head>
<body>
	<%HttpSession sess=request.getSession(false);
Customer c=(Customer)sess.getAttribute("success");
CustomerDAO cdao= new CustomerDAOImpl();
ArrayList Al=(ArrayList) cdao.getCustomer();
Iterator it=Al.iterator(); %>
	<div class="three">
		<div class="col-3">
			<h3>
				Welcome <span style="color: gold"><%=c.getName()+"(Admin)" %>
				</span>
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

	<table border=2 class="one">
		<tr>
			<th>ACC_NO</th>
			<th>NAME</th>
			<th>BALANCE</th>
			<th>DELETE</th>
		</tr>
		<%while(it.hasNext()){
      		Customer c1=(Customer)it.next();%>
		<tr>
			<%if(c.getAccno()==5){ %>
			<td><%=c1.getAccno() %></td>
			<td><%=c1.getName() %></td>
			<td><%=c1.getBal() %></td>
			<td>
				<form action="delete">
					<input type="hidden" name="delete" value=<%= c1.getAccno() %>>
					<button type="submit" class="btn bg-danger">Delete</button>
				</form>
			</td>
		<tr>
			<%}; %>
			<%}; %>
		
	</table>
	<br>
	<center>
		<button class="btn bg-warning">
			<a href="Dashboard.jsp">Back</a>
		</button>
	</center>
	<br>
	<div class="four">
		<center>
			<h3>&copy Copy @2025</h3>
		</center>
	</div>
</body>
</html>