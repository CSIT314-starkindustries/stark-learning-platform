package com.starkindustries.project;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Moderator {
	private String username;
	private String password;
	
	public Moderator() {}
	public Moderator(String username, String password) {
		this.username = username;
		this.password= password;
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
	
	//convert moderator resultset to arraylist
	public static List<Moderator> getModeratorList (ResultSet rs) throws SQLException {
		List<Moderator> allModList = new ArrayList<Moderator>();
		while(rs.next()) {
			Moderator mod = new Moderator();
			mod.setUsername(rs.getString("mod_username"));
			mod.setPassword(rs.getString("mod_password"));
			allModList.add(mod);
		}
		return allModList;
	}
	
	// return one mod record or null
	public static Moderator getModerator(ResultSet rs) throws SQLException {
		Moderator mod = new Moderator();
		while(rs.next()) {
			mod.setUsername(rs.getString("mod_username"));
			mod.setPassword(rs.getString("mod_password"));
		}
		return mod;		
	}
}
