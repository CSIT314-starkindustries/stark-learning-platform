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
		
		List<Question> qnList = Question.getAllQuestionList(db.getResultByUserId("questions", "user137", conn));
		System.out.println(qnList.get(0).getDescription());
	
	
	}
	
}
