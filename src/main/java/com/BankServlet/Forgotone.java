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
@WebServlet("/forgotone")
public class Forgotone extends HttpServlet {
  @Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	  System.out.println(req.getParameter("mail"));
	String mail=req.getParameter("mail");
	long phone=Long.parseLong(req.getParameter("phone"));
	int pass=Integer.parseInt(req.getParameter("pass"));
	int c_pass=Integer.parseInt(req.getParameter("c_pass"));
	CustomerDAO cdao=new CustomerDAOImpl();
	Customer c=cdao.getCustomer(phone, mail);
	System.out.println(c);
	HttpSession session=req.getSession(false);
	if(pass==c_pass)
	{
		c.setPin(c_pass);
		boolean res=cdao.updateCustomer(c);
	if(res)
	{
		session.setAttribute("forgotone","Password is Updated Successfully");
		RequestDispatcher rd=req.getRequestDispatcher("Forgot1.jsp");
		rd.forward(req, resp);
	}
	else
	{
		session.setAttribute("forgottwo"," Failed to Update the Password");
		RequestDispatcher rd=req.getRequestDispatcher("Forgot1.jsp");
		rd.forward(req, resp);
	}
	
    }
}
}
