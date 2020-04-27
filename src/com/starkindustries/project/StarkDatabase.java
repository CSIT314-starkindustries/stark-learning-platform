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
	
	public boolean createNewUser(String studOrMod, String username, String password, Connection conn) throws SQLException {
		ResultSet rs = getOneUserById(studOrMod,username,conn);
		
		//return empty result
		if(!rs.isBeforeFirst()) {
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
			return true; //new account created
		}else {
			return false; //username taken
		}
			
	}
	
	public boolean studentSuspendToggle(String username, Connection conn) throws SQLException {
		ResultSet rs = new StarkDatabase().getOneUserById("student",username,conn);
		
		if (!rs.next()) return false;
		
		Statement mystmt;
		String query = "";
		
		if (rs.getBoolean("issuspended")) {
			query = String.format("UPDATE student SET issuspended = '%b' WHERE stud_username = '%s'",false,username);
		}
		else query = String.format("UPDATE student SET issuspended = '%b' WHERE stud_username = '%s'",true,username);
		
		mystmt = conn.createStatement();
		mystmt.executeUpdate(query);
		
		return true;
	}
	
	public boolean resetPassword(String studOrMod, String username, Connection conn) throws SQLException {
		int rowsUpdated = 0;
		Statement mystmt;
		String query = "";
		
		String randPass = new Password().passwordGenerate();
		
		if(studOrMod.equalsIgnoreCase("student")) {
			query = String.format("UPDATE student SET stud_password = '%s' WHERE stud_username = '%s'",randPass,username);
		}
		else query = String.format("UPDATE moderator SET mod_password = '%s' WHERE mod_username = '%s'",randPass,username);
		
		mystmt = conn.createStatement();
		rowsUpdated = mystmt.executeUpdate(query);
		
		if (rowsUpdated == 0) return false;
		else return true;
	}
	
	public boolean changePassword(String studOrMod, String username, String pass, Connection conn) throws SQLException {
		int rowsUpdated = 0;
		Statement mystmt;
		String query = "";
		
		if(studOrMod.equalsIgnoreCase("student")) {
			query = String.format("UPDATE student SET stud_password = '%s' WHERE stud_username = '%s'",pass,username);
		}
		else query = String.format("UPDATE moderator SET mod_password = '%s' WHERE mod_username = '%s'",pass,username);
		
		mystmt = conn.createStatement();
		rowsUpdated = mystmt.executeUpdate(query);
		
		if (rowsUpdated == 0) return false;
		else return true;
	}
	
	/* Debug Commands, not currently supported in use cases */
	
	public String retrievePassword(String studOrMod, String username, Connection conn) throws SQLException {
		ResultSet rs;
		Statement mystmt;
		String query = "";
		
		if(studOrMod.equalsIgnoreCase("student")) {
			query = String.format("SELECT stud_password FROM student where stud_username = '%s'",username);
		}
		else query = String.format("SELECT mod_password FROM moderator where mod_username = '%s'",username);
		
		mystmt = conn.createStatement();
		rs = mystmt.executeQuery(query);
		
		if (!rs.next()) return null;
		else if (studOrMod.equalsIgnoreCase("student")) return rs.getString("stud_password");
		else return rs.getString("mod_password");
	}
	
	public void deleteUser(String studOrMod, String username, Connection conn) throws SQLException {
		Statement mystmt;
		String query = "";
		if (studOrMod.equalsIgnoreCase("student")) {
			query = String.format("DELETE FROM student WHERE stud_username = '%s'", username); 
		} else query = String.format("DELETE FROM moderator WHERE mod_username = '%s'", username); 
		
		mystmt = conn.createStatement();
		mystmt.executeUpdate(query);
	}
}
