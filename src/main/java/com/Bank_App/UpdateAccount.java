package com.Bank_App;

import java.util.Scanner;

import com.Bank.DTO.Customer;
import com.Bank.DAO.CustomerDAO;
import com.Bank.DAO.CustomerDAOImpl;

public class UpdateAccount {

	public static void updateAccount(Customer c)
	{
		Scanner sc=new Scanner(System.in);
		int choice=0;
		CustomerDAO cdao=new CustomerDAOImpl();
		System.out.println("Enter the Field to Update");
		do
		{
			System.out.println("1.Name");
			System.out.println("2.Phone Number");
			System.out.println("3.Email ID");
			choice=sc.nextInt();
			switch(choice)
			{
			case 1:
			{
				System.out.println("Enter the new name: ");
				c.setName(sc.next());
				boolean res=cdao.updateCustomer(c);
				if(res)
				{
					System.out.println("Name updated to  "+c.getName()+" Successfully");
				}
				else
				{
					System.out.println("Failed to Update the Name...!");
				}
				break;
			}
			case 2:
			{
				System.out.println("Enter the Phone Number to be Updated");
				c.setPhone(sc.nextLong());
				boolean res=cdao.updateCustomer(c);
				if(res)
				{
					System.out.println("Phone Number updated to "+c.getPhone()+" Successfuly");
				}
				else
				{
					System.out.println("Failed to update the phone Number");
				}
				break;
			}
			case 3:
			{
				System.out.println("Enter the Email ID to be Updated");
				c.setMail(sc.next());
				boolean res=cdao.updateCustomer(c);
				if(res)
				{
					System.out.println("Mail ID updated to "+c.getMail()+" Successfully");
				}
				else
				{
					System.out.println("Failed to Update the Mail Id....!");
				}
				break;
			}
			case 4:
			{
				System.out.println("Exit to Main Menu");
				break;
			}
			default:
				System.out.println("Invalid choice. Enter the correct choice");
			}
		}while(choice!=4);
	}
}

