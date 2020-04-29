package com.starkindustries.project;

import java.net.URI;
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
		StarkDatabase db = new StarkDatabase();
		List<Moderator> studList = Moderator.getModeratorList(db.getAllRecords("moderator", db.getConn()));
		for(Moderator s : studList) {
			System.out.println("user: " + s.getUsername()+ " pw: "  + s.getPassword());
		}
		
		Validation val = new Validation();
		System.out.println(val.validateUser(2,"mod_100", "mod_100"));
		
		System.out.println(UserAdmin.getUserAdmin(db.getOneUserById("user_admin", "ua_100", db.getConn())).getPassword());

	}
}
