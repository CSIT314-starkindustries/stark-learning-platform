package com.starkindustries.project;

import java.net.URISyntaxException;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;
import java.util.List;


public class Main {

	public static void main(String[] args) throws URISyntaxException, SQLException {
		
		System.out.println("Login as (Number):");
		System.out.println("1: Student");
		System.out.println("2: Moderator");
		System.out.println("3: User Admin");
		System.out.print("Enter Number: ");
		Scanner input = new Scanner(System.in);
		int num = input.nextInt();
		
		System.out.print("Username: ");
		String user = input.next();
		
		System.out.print("Password: ");
		String pass = input.next();
		
		boolean success = new Validation().validateUser(num,user,pass);
		
		if (success) {
			System.out.println("User Validation successful.");
		}
		else {
			System.out.println("User Validation failed.");
		}
		
		/*
		Connection conn = new StarkDatabase().getConn();
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("select * from public.user_admin");
		while (rs.next()) {
			String username = rs.getString("ua_username");
			String password = rs.getString("ua_password");
			System.out.println(username + " " + password);
		}
		conn.close();
		*/
		/*
		 * 1. login to useradmin
		 * - check username and password
		 * 
		 * 
		 * 2. register/create user account (done)
		 * - check if username taken
		 * 
		 * 
		 * 3. suspend or unsuspend user
		 * - get user suspend status by username
		 * - update isSuspended to true or false
		 * 
		 * 
		 * 4. reset username password
		 * - get user info by username
		 * - update password
		 *
		 *
		 * 5. view all student and moderator info (done)
		 * - get all user info
		 * */ 
	}
}
