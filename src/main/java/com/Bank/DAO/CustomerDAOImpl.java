package com.Bank.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.Bank.DTO.Customer;
import com.Bank_Connector.ConnectionFactory;


public class CustomerDAOImpl implements CustomerDAO {

	public boolean insertCustomer(Customer c) {
	  PreparedStatement ps=null;
	  Connection con=ConnectionFactory.requestConnection();
	  String query="INSERT INTO CUSTOMER (NAME,PHONE,MAIL,PIN) VALUES(?,?,?,?);";
		int res=0;
		try {
			//con.setAutoCommit(false);
			ps=con.prepareStatement(query);
			ps.setString(1,c.getName());
			ps.setLong(2,c.getPhone());
			ps.setString(3,c.getMail());
			ps.setInt(4,c.getPin());
			res=ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(res>0)
		{
			try {
				con.commit();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return true;
		}
		else
		{
			try {
				con.rollback();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	  return false;
	}

	public Customer getCustomer(long phone, String mail) {
		PreparedStatement ps=null;
		Connection con=ConnectionFactory.requestConnection();
		ResultSet rs=null;
		Customer c=null;
		String query="SELECT * FROM CUSTOMER WHERE PHONE=? AND MAIL=?;";
		try {
			ps=con.prepareStatement(query);
			ps.setLong(1,phone);
			ps.setString(2,mail);
			rs=ps.executeQuery();
			if(rs.next())
			{
				c=new Customer();
				c.setAccno(rs.getInt(1));
				c.setName(rs.getString(2));
				c.setPhone(rs.getLong(3));
				c.setMail(rs.getString(4));
				c.setBal(rs.getDouble(5));
				c.setPin(rs.getInt(6));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return c;
	}
	public boolean updateCustomer(Customer c)
	{
		PreparedStatement ps=null;
		Connection con=ConnectionFactory.requestConnection();
		int res=0;
		String query="UPDATE CUSTOMER SET NAME=?,PHONE=?,MAIL=?,BALANCE=?,PIN=? WHERE ACC_NO=?;";
		try {
			con.setAutoCommit(false);
			ps=con.prepareStatement(query);
			ps.setString(1,c.getName());
			ps.setLong(2, c.getPhone());
			 ps.setString(3, c.getMail());
			 ps.setDouble(4, c.getBal());
			 ps.setInt(5, c.getPin());
			 ps.setLong(6, c.getAccno());
             res=ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(res>0)
		{
			try {
				con.commit();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return true;
		}
		else
		{
			try {
				con.rollback();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return false;
	}
	public boolean deleteCustomer(Customer c) {
		 PreparedStatement ps=null;
		 Connection con=ConnectionFactory.requestConnection();
		 int res=0;
		 String query="DELETE FROM CUSTOMER WHERE ACC_NO=?";
		 try {
		 con.setAutoCommit(false);
		 ps=con.prepareStatement(query);
		 ps.setLong(1, c.getAccno());
		 res=ps.executeUpdate();
		 
		 } catch (SQLException e) {
		 // TODO Auto-generated catch block
		 e.printStackTrace();
		 }
		 if(res>0)
		 {
		 try {
		 con.commit();
		 } catch (SQLException e) {
		 // TODO Auto-generated catch block
		 e.printStackTrace();
		 }
		 return true;
		 }
		 else
		 {
		 try {
		 con.rollback();
		 } catch (SQLException e) {
		 // TODO Auto-generated catch block
		 e.printStackTrace();
		 }
		 return false;
		 }
		}

	@Override
	public Customer getCustomer(long accno, int pin) {
		Connection con=ConnectionFactory.requestConnection();
		PreparedStatement ps=null;
		ResultSet rs=null;
		Customer c=null;
		String query="SELECT * FROM CUSTOMER WHERE ACC_NO=? AND PIN=?;";
		try {
			ps=con.prepareStatement(query);
			ps.setLong(1,accno);
			ps.setInt(2, pin);
			rs=ps.executeQuery();
			if(rs.next())
			{
				c=new Customer();
				c.setAccno(rs.getInt(1));
				c.setName(rs.getString(2));
				c.setPhone(rs.getLong(3));
				c.setMail(rs.getString(4));
				c.setBal(rs.getDouble(5));
				c.setPin(rs.getInt(6));
			
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}
		
		return c;
	}

	@Override
	public Customer getCustomer(long accno) {
		Connection con=ConnectionFactory.requestConnection();
		PreparedStatement ps=null;
		ResultSet rs=null;
		Customer c=null;
		String query="SELECT * FROM CUSTOMER WHERE ACC_NO=?";
		try {
			ps=con.prepareStatement(query);
			ps.setLong(1, accno);
			rs=ps.executeQuery();
			if(rs.next())
			{
				c=new Customer();
				c.setAccno(rs.getLong(1));
				c.setName(rs.getString(2));
				c.setPhone(rs.getLong(3));
				c.setMail(rs.getString(4));
				c.setBal(rs.getDouble(5));
				c.setPin(rs.getInt(6));
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return c;
	}

	@Override
	public List getCustomer() {
		PreparedStatement ps=null;
		Connection con=ConnectionFactory.requestConnection();
		ArrayList<Customer> customers=new ArrayList<Customer>();
		ResultSet rs=null;
		Customer c=null;
		String query="SELECT * FROM CUSTOMER;";
		try {
			ps=con.prepareStatement(query);
			rs=ps.executeQuery();
			while(rs.next())
			{
				c=new Customer();
				c.setAccno(rs.getInt(1));
				c.setName(rs.getString(2));
				c.setPhone(rs.getLong(3));
				c.setMail(rs.getString(4));
				c.setBal(rs.getDouble(5));
				c.setPin(rs.getInt(6));
				customers.add(c);
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return customers;
	}
	}
