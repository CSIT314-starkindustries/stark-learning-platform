package com.starkindustries.project;

import java.net.URI;
import java.net.URISyntaxException;
import java.sql.*;

public class StarkDatabase {
	public StarkDatabase() {
		
	}
	public Connection getConn() throws URISyntaxException, SQLException {
		URI dbUri = new URI(System.getenv("DATABASE_URL"));
		
		String username = dbUri.getUserInfo().split(":")[0];
		String password = dbUri.getUserInfo().split(":")[1];
		String dbUrl = "jdbc:postgresql://" + dbUri.getHost() + ':' + dbUri.getPort() + dbUri.getPath();
		
		return DriverManager.getConnection(dbUrl, username, password);
	}
	
	//return resultset obj that contains all the info of stud or mod
	public ResultSet getAllRecords(String studOrMod, Connection conn) {
		Statement mystmt;
		ResultSet rs = null;
		String query = "SELECT * FROM " + studOrMod;
		try {
			mystmt = conn.createStatement();
			rs = mystmt.executeQuery(query);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	
	// search by username function 
	public ResultSet getOneUserById(String studOrModorAdmin, String username, Connection conn) {
		Statement mystmt;
		ResultSet rs = null;
		String query = "";
		if(studOrModorAdmin.equalsIgnoreCase("student")) {
			query = String.format("SELECT * FROM student WHERE stud_username = '%s'", username);
		}else if(studOrModorAdmin.equalsIgnoreCase("moderator")) {
			query = String.format("SELECT * FROM moderator WHERE mod_username = '%s'", username); 
		}else {
			query = String.format("SELECT * FROM user_admin WHERE ua_username = '%s'", username); 
		}
		
		try {
			mystmt = conn.createStatement();
			rs = mystmt.executeQuery(query);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	
	public void createNewUser(String studOrMod, String username, String password, Connection conn) throws SQLException {
		PreparedStatement mystmt = null;
		String newStudquery = "INSERT INTO student (stud_username, stud_password, total_qn_asked, total_ans_posted, total_comment_posted, issuspended, participation_rating)"
							+ "VALUES (?,?,?,?,?,?,?); ";
		
		String newModquery = "INSERT INTO moderator (mod_username, mod_password)"
				+ "VALUES (?,?); ";
		
		
		if(studOrMod.equalsIgnoreCase("student")) {
			mystmt = conn.prepareStatement(newStudquery);
			mystmt.setString(1,username);
			mystmt.setString(2, password);
			mystmt.setInt(3, 0);
			mystmt.setInt(4,0);
			mystmt.setInt(5,0);
			mystmt.setBoolean(6, false);
			mystmt.setInt(7,0);
			
		}else {
			mystmt = conn.prepareStatement(newModquery);
			mystmt.setString(1,username);
			mystmt.setString(2, password);
		}
		
		mystmt.execute();	
	}
}
