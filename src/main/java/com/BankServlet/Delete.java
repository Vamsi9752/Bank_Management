package com.BankServlet;

import java.io.IOException;

import com.Bank.DAO.CustomerDAO;
import com.Bank.DAO.CustomerDAOImpl;
import com.Bank.DTO.Customer;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/delete")
public class Delete extends HttpServlet {
 @Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	 
	 long acc=Long.parseLong(req.getParameter("delete"));
	 
	 CustomerDAO cdao=new CustomerDAOImpl();
	  Customer C=cdao.getCustomer(acc);
	  Customer admin=cdao.getCustomer(5);
	  admin.setBal(admin.getBal() + C.getBal());
	  cdao.updateCustomer(admin);
	  boolean res=cdao.deleteCustomer(C);
			
 }
}
