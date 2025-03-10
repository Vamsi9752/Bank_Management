package com.Bank_App;

import java.util.List;
import java.util.Scanner;

import com.Bank.DAO.CustomerDAO;
import com.Bank.DAO.CustomerDAOImpl;
import com.Bank.DTO.Customer;

public class Welcome {

	public static void main(String[] args) {
		int choice=0;
		Scanner sc=new Scanner(System.in);
		System.out.println("<======Welcome to New Bank======>");
		do {
			System.out.println("1.Customer Login");
			System.out.println("2.Create Account");
			System.out.println("3.Login as admin");
			System.out.println("4.Exit");
			choice=sc.nextInt();
			switch(choice)
			{
			case 1:{
				Login.login();
				break;
			}
			case 2:
			{
				SignUp.signup();
				break;
			}
			case 4:
			{
				System.out.println("Exiting the Application...Thank You");
				break;
			}
			case 3:
			{
				Login.login();
				
			}
			default:
				System.out.println("Invalid input.Please try again!");
			}
		}while(choice!=3);
		
	
	}

}
