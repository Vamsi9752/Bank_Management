package com.Bank_App;

import java.util.Scanner;

import com.Bank.DTO.Customer;

public class App {
public static void options(Customer c)
{
	Scanner sc=new Scanner(System.in);
	int choice=0;
	System.out.println("Welcome "+c.getName());
	System.out.println("Enter your choice:");
	do {
		
			 System.out.println("1. Check Balance");
			 System.out.println("2. Deposit");
			 System.out.println("3. Transfer the amount");
			 System.out.println("4. Passbook");
			 System.out.println("5. Update your account");
			 System.out.println("6. Reset PIN");
			 System.out.println("7. Admin Access");
			 System.out.println("8. Go back to main menu");
			 choice=sc.nextInt();
			 switch(choice)
			 {
			 case 1:
			 System.out.println("Your balance is Rs."+c.getBal());
			 break;
			
			 
			 case 2: 
				 Deposit.deposit(c);
			 break;
			 
			 case 3: 
				 TransferAmount.transferAmount(c);
			 break;
			 
			 case 4: 
				 Passbook.getpassbook(c);
			 break;
			 
			 case 5:
				 UpdateAccount.updateAccount(c);
			 break;
			 
			 case 6: 
				 Resetpin.resetPin(c);
			 break;
			 case 7:
				 if(c.getAccno()==1)
					{
						Admin.admin(c);
					}
			 
			 case 8:
				 System.out.println("Entering to main menu");
			 break;
			 
			 default:System.out.println("Invalid choice. Enter the correct choice!");
			 }
		} while(choice!=7);
	
}
}
