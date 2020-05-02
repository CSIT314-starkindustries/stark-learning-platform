package com.starkindustries.project;

import java.sql.Connection;
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

	public static void main(String[] args) throws URISyntaxException, SQLException  {
		StarkDatabase db = new StarkDatabase();
		Connection conn = db.getConn();
		
		List<Comment> alist = getCommentList();
		for(Comment a : alist) {
			String stmt = "INSERT INTO comments(description,date_posted,stud_username,answer_id,question_id) "
					+ "VALUES(?,?,?,?,?)";
			
			PreparedStatement pstmt = conn.prepareStatement(stmt);
			pstmt.setString(1, a.getDescription());
			pstmt.setDate(2, a.getDate_posted());
			pstmt.setObject(3, a.getStud_username());
			
			if(a.getAnswer_id() == 0) {
				pstmt.setNull(4, java.sql.Types.INTEGER);
			}else {
				pstmt.setInt(4, a.getAnswer_id());
			}
			
			pstmt.setInt(5, a.getQuestion_id());
			pstmt.executeUpdate();
		}

		conn.close();
		System.out.println("done");
	}
	
	public static int createRandomIntBetween(int start, int end) {
        return start + (int) Math.round(Math.random() * (end - start));
    }
	
	public static List<Comment> getCommentList() throws URISyntaxException, SQLException {
		StarkDatabase db = new StarkDatabase();
		Connection conn = db.getConn();
		List<Student> studList = Student.getStudList(db.getAllRecords("student", conn));
		
		List<Answer> ansList = Answer.getAllAnswerList(db.getAllRecords("answers", conn));
		
		List<Question> qnList = Question.getAllQuestionList(db.getAllRecords("questions", conn));
		List<Comment> cList = new ArrayList<Comment>();
		
		int totalCommentCount = 163;
		int indexCount = 100;
		

		
		
		while(!(totalCommentCount <= 0)) {
			for(Student s : studList) {
				for(int i = 0; i < s.getTotalCommentPosted(); i++) {
					int ansOrQn = createRandomIntBetween(0, 1);
					
					String description = "This is a comment";
					
					String str="2020-01-01";  
				    Date date_posted=Date.valueOf(str);
				    
				    String stud_username = s.getUsername();
				    int answer_id =0;
				    int question_id=0;
					// comment for answer
					if(ansOrQn == 1) {
						//get random answer
						int randomAns = createRandomIntBetween(0, ansList.size()-1);
						answer_id = ansList.get(randomAns).getAnswer_id();
						question_id = ansList.get(randomAns).getQuestion_id();
						
					}else {
						// comment for question
						// question id need to be avaliable
						// answer id == null
						int randomQn = createRandomIntBetween(0, qnList.size()-1);
						question_id = qnList.get(randomQn).getQuestion_id();
					}
					Comment c = new Comment(description,stud_username,question_id,answer_id,date_posted);
					cList.add(c);
					indexCount++;	
				}
				totalCommentCount = totalCommentCount - s.getTotalCommentPosted();
				
			}
		}
		
		/*
		for(Comment a : cList) {
			System.out.println(a.getComment_id());
			System.out.println(a.getDescription());
			System.out.println(a.getDate_posted());
			System.out.println(a.getStud_username());
			System.out.println(a.getQuestion_id());
			System.out.println(a.getAnswer_id());
			System.out.println();
			System.out.println("=====================================");
		}*/
		conn.close();
		return cList;
		
	}
}
