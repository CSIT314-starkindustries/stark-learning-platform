package com.starkindustries.project;

import java.net.URISyntaxException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class Question {
	String question_id;
	String title;
	String description;
	int total_votes;
	String stud_username;
	Date date_posted;
	
	public Question () {}
	public Question(String question_id,String title,String description,int total_votes,String stud_username,Date date_posted) {
		this.question_id = question_id;
		this.title = title;
		this.description = description;
		this.total_votes = total_votes;
		this.stud_username = stud_username;
		this.date_posted = date_posted;
	}
	
	public String getQuestion_id() {
		return question_id;
	}

	public void setQuestion_id(String question_id) {
		this.question_id = question_id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getTotal_votes() {
		return total_votes;
	}

	public void setTotal_votes(int total_votes) {
		this.total_votes = total_votes;
	}

	public String getStud_username() {
		return stud_username;
	}

	public void setStud_username(String stud_username) {
		this.stud_username = stud_username;
	}

	public Date getDate_posted() {
		return date_posted;
	}

	public void setDate_posted(Date date_posted) {
		this.date_posted = date_posted;
	}
	
	//get all question in arraylist form
	public static List<Question> getAllQuestionList(ResultSet rs) throws SQLException {
		List<Question> allQuestionList = new ArrayList<Question>();
		while(rs.next()) {
			Question q = new Question();
			q.setQuestion_id(rs.getString("question_id"));
			q.setTitle(rs.getString("title"));
			q.setDescription(rs.getString("description"));
			q.setTotal_votes(rs.getInt("total_votes"));
			q.setDate_posted(rs.getDate("date_posted"));
			q.setStud_username(rs.getString("stud_username"));
			
			allQuestionList.add(q);
		}
		return allQuestionList;
	}
	
	public static Question getQuestionById(ResultSet rs) throws SQLException {
		Question q = new Question();
		rs.next();
		q.setQuestion_id(rs.getString("question_id"));
		q.setTitle(rs.getString("title"));
		q.setDescription(rs.getString("description"));
		q.setTotal_votes(rs.getInt("total_votes"));
		q.setDate_posted(rs.getDate("date_posted"));
		q.setStud_username(rs.getString("stud_username"));
		return q;
	}
}
