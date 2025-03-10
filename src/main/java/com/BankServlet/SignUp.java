package com.BankServlet;

import java.io.IOException;


import com.Bank.DAO.CustomerDAO;
import com.Bank.DAO.CustomerDAOImpl;
import com.Bank.DTO.Customer;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/create")
public class SignUp extends HttpServlet {
  @Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String name=req.getParameter("name");
	String mail=req.getParameter("mail");
	long mobile=Long.parseLong(req.getParameter("mobile"));
	int pin=Integer.parseInt(req.getParameter("pin"));
	int c_pin=Integer.parseInt(req.getParameter("c_pin"));
	Customer c=null;
	boolean res;
	CustomerDAO cdao=new CustomerDAOImpl();
	HttpSession session=req.getSession(true);
	if(pin==c_pin)
	{
		c=new Customer();
		c.setName(name);
		c.setMail(mail);
		c.setPhone(mobile);
		c.setPin(pin);
		 res=cdao.insertCustomer(c);
		 if(res)
		 {

			 session.setAttribute("success","Account Created");
			 RequestDispatcher rd=req.getRequestDispatcher("Create Account.jsp");
				rd.forward(req, resp);
		 }
		 else {
			 session.setAttribute("fail","Failed to Create Acccount");
			 RequestDispatcher rd=req.getRequestDispatcher("Create Account.jsp");
				rd.forward(req, resp);
		 }
	}
	else {
		session.setAttribute("pin","pin and Confirm Pin must be Same");
		RequestDispatcher rd=req.getRequestDispatcher("Create Account.jsp");
		rd.forward(req, resp);
	}
}
}
