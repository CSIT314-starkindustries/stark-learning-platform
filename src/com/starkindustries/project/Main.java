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
		
		/*String test = new Password().passwordGenerate();
		boolean check = new Password().passwordCheck(test);
		System.out.println("Does password meet requirements?");
		System.out.print(check);*/
		
		Scanner input = new Scanner(System.in);
		Connection conn = new StarkDatabase().getConn();
		
		while (true) {
			System.out.println("------------------");
			System.out.println("Main Menu");
			System.out.println("1: Account Validation Test");
			System.out.println("2: User Suspension Test");
			System.out.println("3: Reset Password Test:");
			System.out.println("4: Change Password Test:");
			System.out.println("5: Misc Debug");
			System.out.println("6: Exit");
			System.out.print("Enter Number to test: ");
			
			int num = input.nextInt();
		
			if (num == 1) {
				ValidationTest(input,conn);
				//ValidationTest(input);
			}
			else if (num == 2) {
				UserSuspensionTest(input,conn);
				//UserSuspensionTest(input);
			}
			else if (num == 3) {
				ResetPasswordTest(input,conn);
				//ResetPasswordTest(input);
			}
			else if (num == 4) {
				ChangePasswordTest(input,conn);
				//ChangePasswordTest(input);
			}
			else if (num == 5) {
				MiscDebugTest(input,conn);
				//MiscDebugTest(input);
			}
			else if (num == 6) {
				System.out.println("System exiting...");
				break;
			}
		}
		
		input.close();
		conn.close();
		
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
	
	public static void ValidationTest(Scanner input, Connection conn) throws URISyntaxException, SQLException {
		System.out.println("------------------");
		System.out.println("Login as (Number):");
		System.out.println("1: Student");
		System.out.println("2: Moderator");
		System.out.println("3: User Admin");
		System.out.print("Enter Number: ");
		int num = input.nextInt();
		
		System.out.print("Username: ");
		String user = input.next();
		
		System.out.print("Password: ");
		String pass = input.next();
		
		boolean success = new Validation().validateUser(num,user,pass);
		
		if (success) {
			System.out.println("User Validation successful.");
		}
		else System.out.println("User Validation failed.");
		
	}
	
	public static void UserSuspensionTest(Scanner input, Connection conn) throws URISyntaxException, SQLException {
		System.out.println("------------------");
		System.out.print("Enter Student Username: ");
		String user = input.next();
		
		//Connection conn = new StarkDatabase().getConn();
		
		boolean success = new StarkDatabase().studentSuspendToggle(user,conn);
		
		if (success) {
			System.out.println("Student Suspension successful.");
		}
		else System.out.println("Student Suspension failed.");
		
	}
	
	public static void ResetPasswordTest(Scanner input, Connection conn) throws URISyntaxException, SQLException {
		System.out.println("------------------");
		System.out.println("Choose Option:");
		System.out.println("1. Reset Student Password:");
		System.out.println("2. Reset Moderator Password:");
		System.out.print("Enter Number: ");
		int num = input.nextInt();
		
		System.out.print("Enter Username: ");
		String user = input.next();
		
		//Connection conn = new StarkDatabase().getConn();
		
		boolean success;
		if (num == 1) success = new StarkDatabase().resetPassword("student",user,conn);
		else success = new StarkDatabase().resetPassword("moderator",user,conn);
		
		if (success) {
			System.out.println("Reset Password successful.");
		}
		else System.out.println("Reset Password failed.");
		
	}
	
	public static void ChangePasswordTest(Scanner input, Connection conn) throws URISyntaxException, SQLException {
		System.out.println("------------------");
		System.out.println("Choose Option:");
		System.out.println("1. Change Student Password:");
		System.out.println("2. Change Moderator Password:");
		System.out.print("Enter Number: ");
		int num = input.nextInt();
		
		System.out.print("Username: ");
		String user = input.next();
		String pass = "";
		boolean goodPassword = false;
		
		do {
			System.out.println("------------------");
			System.out.println("Please ensure that the new password contains at least 8 characters, and contain at least:");
			System.out.println("1. One Upper Case Letter");
			System.out.println("2. One Lower Case Letter");
			System.out.println("3. One Number");
			System.out.print("Enter New Password: ");
			pass = input.next();
			goodPassword = new Password().passwordCheck(pass);
			if (!goodPassword) {
				System.out.println("New Password does not meet the requirements.");
				pass = "";
			}
		} while (!goodPassword);
		
		//Connection conn = new StarkDatabase().getConn();
		
		boolean success;
		if (num == 1) success = new StarkDatabase().changePassword("student",user,pass,conn);
		else success = new StarkDatabase().changePassword("moderator",user,pass,conn);
		
		if (success) {
			System.out.println("Change Password successful.");
		}
		else System.out.println("Change Password failed.");
	}
	
	public static void MiscDebugTest(Scanner input, Connection conn) throws URISyntaxException, SQLException {
		System.out.println("------------------");
		System.out.println("Choose Option:");
		System.out.println("1. Get All Records:");
		System.out.println("2. Get Singular Record:");
		System.out.println("3. Retrieve User Password:");
		System.out.println("4. Create User:");
		System.out.println("5. Delete User:");
		System.out.print("Enter Number: ");
		int num = input.nextInt();
		
		//Connection conn = new StarkDatabase().getConn();
		
		if (num == 1) {
			System.out.println("------------------");
			System.out.println("Choose Option:");
			System.out.println("1. Student:");
			System.out.println("2. Moderator:");
			System.out.print("Enter Number: ");
			num = input.nextInt();
			if (num == 1) {
				ResultSet rs = new StarkDatabase().getAllRecords("student", conn);
				System.out.println("------------------");
				while (rs.next()) {
					System.out.print(rs.getString("stud_username") + " ");
					System.out.print(rs.getString("stud_password") + " ");
					System.out.print(rs.getInt("total_qn_asked") + " ");
					System.out.print(rs.getInt("total_ans_posted") + " ");
					System.out.print(rs.getInt("total_comment_posted") + " ");
					System.out.print(rs.getBoolean("issuspended") + " ");
					System.out.println(rs.getInt("participation_rating"));
				}
			}
			else if (num == 2) {
				ResultSet rs = new StarkDatabase().getAllRecords("moderator", conn);
				System.out.println("------------------");
				while (rs.next()) {
					System.out.print(rs.getString("mod_username") + " ");
					System.out.println(rs.getString("mod_password"));
				}
			}
		}
		else if (num == 2) {
			System.out.println("------------------");
			System.out.println("Choose Option:");
			System.out.println("1. Student:");
			System.out.println("2. Moderator:");
			System.out.println("3. User Admin:");
			System.out.print("Enter Number: ");
			num = input.nextInt();
			
			System.out.print("Enter Username: ");
			String user = input.next();
			if (num == 1) {
				ResultSet rs = new StarkDatabase().getOneUserById("student",user,conn);
				System.out.println("------------------");
				while (rs.next()) {
					System.out.print(rs.getString("stud_username") + " ");
					System.out.print(rs.getString("stud_password") + " ");
					System.out.print(rs.getInt("total_qn_asked") + " ");
					System.out.print(rs.getInt("total_ans_posted") + " ");
					System.out.print(rs.getInt("total_comment_posted") + " ");
					System.out.print(rs.getBoolean("issuspended") + " ");
					System.out.println(rs.getInt("participation_rating"));
				}
			}
			else if (num == 2) {
				ResultSet rs = new StarkDatabase().getOneUserById("moderator",user,conn);
				System.out.println("------------------");
				while (rs.next()) {
					System.out.print(rs.getString("mod_username") + " ");
					System.out.println(rs.getString("mod_password"));
				}
			}
			else if (num == 3) {
				ResultSet rs = new StarkDatabase().getOneUserById("user_admin",user,conn);
				System.out.println("------------------");
				while (rs.next()) {
					System.out.print(rs.getString("ua_username") + " ");
					System.out.println(rs.getString("ua_password"));
				}
			}
		}
		else if (num == 3) {
			System.out.println("------------------");
			System.out.println("Choose Option:");
			System.out.println("1. Student:");
			System.out.println("2. Moderator:");
			System.out.print("Enter Number: ");
			num = input.nextInt();
			
			System.out.print("Enter Username: ");
			String user = input.next();
			String retrievedPass = null;
			
			if (num == 1) retrievedPass = new StarkDatabase().retrievePassword("student",user,conn);
			else retrievedPass = new StarkDatabase().retrievePassword("moderator",user,conn);
			
			if (retrievedPass != null) {
				System.out.println("Retrieve Password successful.");
				System.out.println("Retrieved password is: " + retrievedPass);
			}
			else System.out.println("Retrieve Password failed.");
		}
		else if (num == 4) {
			System.out.println("------------------");
			System.out.println("Choose Option:");
			System.out.println("1. Student:");
			System.out.println("2. Moderator:");
			System.out.print("Enter Number: ");
			num = input.nextInt();
			
			System.out.print("Enter Username: ");
			String user = input.next();
			
			System.out.print("Enter Password: ");
			String pass = input.next();
			
			if (num == 1) new StarkDatabase().createNewUser("student",user,pass,conn);
			else new StarkDatabase().createNewUser("moderator",user,pass,conn);
		}
		else if (num == 5) {
			System.out.println("------------------");
			System.out.println("Choose Option:");
			System.out.println("1. Student:");
			System.out.println("2. Moderator:");
			System.out.print("Enter Number: ");
			num = input.nextInt();
			
			System.out.print("Enter Username: ");
			String user = input.next();
			
			if (num == 1) new StarkDatabase().deleteUser("student",user,conn);
			else new StarkDatabase().deleteUser("moderator",user,conn);
		}
		
		//conn.close();
	}
}
