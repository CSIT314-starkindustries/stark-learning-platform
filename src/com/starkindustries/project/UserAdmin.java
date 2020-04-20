package com.starkindustries.project;

import java.sql.ResultSet;
import java.sql.SQLException;

public class UserAdmin {
	private String username;
	private String password;
	
	public UserAdmin() {}
	public UserAdmin(String username, String password) {
		this.username = username;
		this.password = password;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	// return one mod record or null
	public static UserAdmin getUserAdmin(ResultSet rs) throws SQLException {
		UserAdmin ua = new UserAdmin();
		while(rs.next()) {
			ua.setUsername(rs.getString("ua_username"));
			ua.setPassword(rs.getString("ua_password"));
		}
		return ua;		
	}	
}
