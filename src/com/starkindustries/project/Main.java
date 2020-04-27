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
		
		List <Moderator> modList = Moderator.getModeratorList((db.getAllRecords("moderator", db.getConn())));
		
		for(Moderator mod : modList) {
			System.out.println(mod.getPassword());
		}
	}
}
