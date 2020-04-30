package com.starkindustries.project;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.net.URISyntaxException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class Main {
	public static void main(String[]args) throws URISyntaxException, SQLException {
		StarkDatabase db = new StarkDatabase();
		Connection conn = db.getConn();
		
		List<Comment> comList = Comment.getAllCommentList(db.getAllRecords("comments", conn));
		for(Comment c : comList) {
			System.out.println(c.getComment_id());
			System.out.println(c.getDescription());
			System.out.println(c.getDate_posted());
			System.out.println(c.getStud_username());
			System.out.println(c.getAnswer_id());
			System.out.println(c.getQuestion_id());
			System.out.println("================================");
		}
		
		Comment c = Comment.getCommentById(db.getResultByPostId("comments", "c100", conn));
		System.out.println(c.getComment_id());
		System.out.println(c.getDescription());
		System.out.println(c.getDate_posted());
		System.out.println(c.getStud_username());
		System.out.println(c.getAnswer_id());
		System.out.println(c.getQuestion_id());
		System.out.println("================================");
	}
	
	
	
	
}
