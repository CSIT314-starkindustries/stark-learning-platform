package com.starkindustries.project;

import java.net.URISyntaxException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;


public class Main {

	public static void main(String[] args) throws URISyntaxException, SQLException {
		
		/*
		 * 1. login to useradmin
		 * - validateAcc(username,password)
		 * 
		 * 
		 * 
		 * 2. register/create user account (done)
		 * - validateUser(username)
		 * 
		 * 
		 * 3. suspend or unsuspend user
		 * - update isSuspended to true or false
		 * 
		 * 
		 * 4. reset username password
		 * - update password
		 *
		 *
		 * 5. view all student and moderator info (done)
		 * 
		 * */ 
		
		StarkDatabase db = new StarkDatabase(); 
		Connection conn = db.getConn();
		ResultSet rs = db.getAllRecords("student", conn);
		List<Student> studList = Student.getStudList(rs);
		for(Student stud : studList) {
			
			System.out.println(stud.getUsername());
		}
	}
}
