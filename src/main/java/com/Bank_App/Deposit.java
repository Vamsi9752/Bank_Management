package com.Bank_App;

import java.util.Scanner;

import com.Bank.DAO.CustomerDAO;
import com.Bank.DAO.CustomerDAOImpl;
import com.Bank.DAO.TransactionDAO;
import com.Bank.DAO.TransactionDAOImpl;
import com.Bank.DTO.Customer;
import com.Bank.DTO.Transaction;
import com.Bank_Connector.TransactionId;

public class Deposit {
public static boolean deposit(Customer c)
{
	CustomerDAO cdao=new CustomerDAOImpl();
	TransactionDAO tdao=new TransactionDAOImpl();
	Scanner sc=new Scanner(System.in);
	System.out.println("Enter the amount to be deposited: ");
	double amount=sc.nextDouble();
	c.setBal(c.getBal()+amount);
	boolean res=cdao.updateCustomer(c);
	if(res)
	{
		Transaction t=new Transaction();
		t.setTransactionId(TransactionId.generateTransactionId());
		t.setUser(c.getAccno());
		t.setRec_acc(c.getAccno());
		t.setTransaction("CREDITED");
		t.setAmount(amount);
		t.setBalance(c.getBal());
		boolean res1=tdao.insertTransaction(t);
		if(res1)
		{
			return true;
			
		}
		
	}
	return false;
}
}
