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
@WebServlet("/update")
public class Update extends HttpServlet {
 @Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String name=req.getParameter("name");
	long Phone=Long.parseLong(req.getParameter("phone"));
	String mail=req.getParameter("mail");
	HttpSession session=req.getSession(false);
	Customer c=(Customer) session.getAttribute("success");
	c.setName(name);
	c.setPhone(Phone);
	c.setMail(mail);
	CustomerDAO cdao=new CustomerDAOImpl();
	boolean res=cdao.updateCustomer(c);
	if(res)
	{
		session.setAttribute("updated","Details Saved Successfully");
		RequestDispatcher rd=req.getRequestDispatcher("Update.jsp");
		rd.forward(req, resp);
	}
	else {
		session.setAttribute("notupdated","Failed to Save the Details");
		RequestDispatcher rd=req.getRequestDispatcher("Update.jsp");
		rd.forward(req, resp);
	}
	}
}

