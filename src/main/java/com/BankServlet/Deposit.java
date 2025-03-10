package com.BankServlet;

import java.io.IOException;

import com.Bank.DAO.CustomerDAO;
import com.Bank.DAO.CustomerDAOImpl;
import com.Bank.DAO.TransactionDAO;
import com.Bank.DAO.TransactionDAOImpl;
import com.Bank.DTO.Customer;
import com.Bank.DTO.Transaction;
import com.Bank_Connector.TransactionId;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/deposit")
public class Deposit extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 long amount=Long.parseLong(req.getParameter("amount"));
		 HttpSession sess=req.getSession(false);
		 Customer customer=(Customer)sess.getAttribute("success"); 
		 customer.setBal(customer.getBal()+amount);
		 CustomerDAO cdao=new CustomerDAOImpl();
		 TransactionDAO tdao=new TransactionDAOImpl();
		 boolean res=cdao.updateCustomer(customer);
		 if(res)
			{
				Transaction t=new Transaction();
				t.setTransactionId(TransactionId.generateTransactionId());
				t.setUser(customer.getAccno());
				t.setRec_acc(customer.getAccno());
				t.setTransaction("CREDITED");
				t.setAmount(amount);
				t.setBalance(customer.getBal());
				boolean res1=tdao.insertTransaction(t);
				if(res1)
				{
					sess.setAttribute("deposited", "Amount is Deposited Succesfully");
					RequestDispatcher rd=req.getRequestDispatcher("Deposit.jsp");
					rd.forward(req, resp);
				}
				else {
					sess.setAttribute("Nodeposit", "Amount is not Deposited");
					RequestDispatcher rd=req.getRequestDispatcher("Deposit.jsp");
					rd.forward(req, resp);
				}
					
				}
		 
	}

}
