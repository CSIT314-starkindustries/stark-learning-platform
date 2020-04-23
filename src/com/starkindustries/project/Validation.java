package com.starkindustries.project;

import java.net.URISyntaxException;
import java.sql.*;

public class Validation {
	
	public boolean validateUser(int num, String user, String pass) throws URISyntaxException, SQLException {
		Connection conn = new StarkDatabase().getConn();
		ResultSet rs = null;
		
		if (num == 1) {
			rs = new StarkDatabase().getOneUserById("student",user,conn);
			if (!rs.next() && !pass.equals(rs.getString("stud_password"))) return validationFailed(conn);
		}
		else if (num == 2) {
			rs = new StarkDatabase().getOneUserById("moderator",user,conn);
			if (!rs.next() && !pass.equals(rs.getString("mod_password"))) return validationFailed(conn);
		}
		else if (num == 3) {
			rs = new StarkDatabase().getOneUserById("user_admin",user,conn);
			if (!rs.next() && !pass.equals(rs.getString("ua_password"))) return validationFailed(conn);
		}
		else return validationFailed(conn);
		
		conn.close();
		return true;
	}
	
	public boolean validationFailed(Connection conn) throws SQLException {
		try { conn.close(); } catch (SQLException e) {}
		System.out.println("Username or password is incorrect.");
		return false;
	}
}
