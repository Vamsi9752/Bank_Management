package com.Bank_App;

import com.Bank.DTO.Customer;

import java.util.Scanner;

import com.Bank.DAO.CustomerDAO;
import com.Bank.DAO.CustomerDAOImpl;
import com.Bank.DAO.TransactionDAO;
import com.Bank.DAO.TransactionDAOImpl;
import com.Bank.DTO.Transaction;
import com.Bank_Connector.TransactionId;

public class TransferAmount {
public static void transferAmount(Customer c)// Here c refers to the account which you logged in
{
	CustomerDAO cdao=new CustomerDAOImpl();
	Transaction t1=null;//sender transaction details
	Transaction t2=null;//Receiver transaction details
	TransactionDAO tdao=new TransactionDAOImpl();
	Scanner sc=new Scanner(System.in);
	System.out.println("Enter the amount to be transfered");
	double amount=sc.nextDouble();
	System.out.println("Enter the Receiver Account Number: ");
	long receiver_AccNo=sc.nextLong();//receiver data;
	Customer receiver=cdao.getCustomer(receiver_AccNo);
	if(c.getAccno()!=receiver.getAccno()&& c.getBal()>0&&c.getBal()>amount&& amount>0)
	{
		System.out.println("Enter the PIN: ");
		int pin=sc.nextInt();
		if(pin==c.getPin())
		{
			c.setBal(c.getBal()-amount);
			boolean c_res=cdao.updateCustomer(c);
			if(c_res)
			{
				t1=new Transaction();
				t1.setTransactionId(TransactionId.generateTransactionId());
				t1.setUser(c.getAccno());
				 t1.setRec_acc(receiver.getAccno());
				 t1.setTransaction("DEBITED");
				 t1.setAmount(amount);
				 t1.setBalance(c.getBal());
				 boolean res1=tdao.insertTransaction(t1);
				 //amount is getting debited from sender account
				 receiver.setBal(receiver.getBal()+amount);
				 boolean receiver_res=cdao.updateCustomer(receiver);
				 if(receiver_res)
				 {
					 t2=new Transaction();
					 t2.setTransactionId(t1.getTransactionId());
					 t2.setUser(receiver.getAccno());
					 t2.setRec_acc(c.getAccno());
					 t2.setTransaction("CREDITED"); 
					  t2.setAmount(amount);
					 t2.setBalance(receiver.getBal());
					 boolean res2=tdao.insertTransaction(t2);
				 }
			
			//amount is getting credited to receiver account
			if(c_res&& receiver_res)
			{
				System.out.println("Trasancation is Succesfull");
			}
			else
			{
				System.out.println("Transantion failed....!");
			}
		}
	}
	}
	else
	{
		System.out.println("Transaction Failed......!");
	}
	
	}
}
