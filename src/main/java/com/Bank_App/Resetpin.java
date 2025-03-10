package com.Bank_App;

import java.util.Scanner;

import com.Bank.DAO.CustomerDAO;
import com.Bank.DAO.CustomerDAOImpl;
import com.Bank.DTO.Customer;

public class Resetpin {
	public static void resetPin(Customer c)
	{
		Scanner sc=new Scanner(System.in);
	     CustomerDAO cdao=new CustomerDAOImpl();
		System.out.println("Enter your Phone Number: ");
		long phone=sc.nextLong();
		System.out.println("Enter your Mail_id");
		String mail=sc.next();
		if(phone==c.getPhone()&& mail.equals(c.getMail()))
		{
			System.out.println("Set a New Pin");
			int pin=sc.nextInt();
			System.out.println("Confirm the pin");
			int confirm=sc.nextInt();
			if(pin==confirm)
			{
				c.setPin(pin);
				boolean res=cdao.updateCustomer(c);
				if(res)
				{
					System.out.println("Pin Updated Successfully");
				}
				else
				{
					System.out.println("Failed to update the pin");
				}
			}
			else
			{
				System.out.println("Incorrect Phone number or Mail_ID");
			}
		}
	}

}
