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
		
		if(db.createNewUser("student", "user110", "user150", db.getConn())) {
			System.out.println("new account created");
		}else {
			System.out.println("username taken");
		}
		

	}
}
