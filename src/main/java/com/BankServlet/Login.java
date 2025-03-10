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
@WebServlet("/login")
public class Login extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		long  Acc=Long.parseLong(req.getParameter("acc"));
		int pin=Integer.parseInt(req.getParameter("pin"));
		
		HttpSession session=req.getSession();
		Customer c=new Customer();
		CustomerDAO cdao= new CustomerDAOImpl();
		Customer customer=cdao.getCustomer(Acc, pin);
		
		if(customer!=null)
		{
			c.setAccno(customer.getAccno());
			c.setBal(customer.getBal());
			c.setMail(customer.getMail());
			c.setName(customer.getName());
			c.setPhone(customer.getPhone());
			c.setPin(customer.getPin());
			
			session.setAttribute("success", c);
			RequestDispatcher rd=req.getRequestDispatcher("Dashboard.jsp");
			rd.forward(req, resp);
		}
		
	}
}
