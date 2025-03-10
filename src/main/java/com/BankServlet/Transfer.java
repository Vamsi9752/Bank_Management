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
@WebServlet("/transfer")
public class Transfer extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println(req.getParameter("money"));
		long amount=Long.parseLong(req.getParameter("money"));
		long r_acc=Long.parseLong(req.getParameter("racc"));
		int pin=Integer.parseInt(req.getParameter("pin"));
		HttpSession session=req.getSession(false);
		Customer customer =(Customer)session.getAttribute("success");
		CustomerDAO cdao=new CustomerDAOImpl();
		TransactionDAO tdao=new TransactionDAOImpl();
		Transaction t1=new Transaction();
		Transaction t2=new Transaction();
		if(pin==customer.getPin())
		{
			Customer r_customer=cdao.getCustomer(r_acc);
			customer.setBal(customer.getBal()-amount);
			boolean c_res=cdao.updateCustomer(customer);
			if(c_res)
			{
				t1.setTransactionId(TransactionId.generateTransactionId());
				t1.setUser(customer.getAccno());
				 t1.setRec_acc(r_customer.getAccno());
				 t1.setTransaction("DEBITED");
				 t1.setAmount(amount);
				 t1.setBalance(customer.getBal());
				 boolean res1=tdao.insertTransaction(t1);
				 r_customer.setBal(r_customer.getBal()+amount);
				 boolean r_res=cdao.updateCustomer(r_customer);
				 if(r_res)
				 {
					 t2=new Transaction();
					 t2.setTransactionId(t1.getTransactionId());
					 t2.setUser(r_customer.getAccno());
					 t2.setRec_acc(customer.getAccno());
					 t2.setTransaction("CREDITED"); 
					 t2.setAmount(amount);
					 t2.setBalance(r_customer.getBal());
					 boolean res2=tdao.insertTransaction(t2);	 
			    }
			if(c_res&& r_res )
			{
				session.setAttribute("transfered","Amount is Transfered Successfully");
				RequestDispatcher rd=req.getRequestDispatcher("Transfer.jsp");
				rd.forward(req, resp);
			}
			else {
				session.setAttribute("not_transfered","Filed to transfer the Amount");
				RequestDispatcher rd=req.getRequestDispatcher("Transfer.jsp");
				rd.forward(req, resp);
			}
		}
	}

}
}
