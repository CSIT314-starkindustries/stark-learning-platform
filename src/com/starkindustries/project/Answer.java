package com.starkindustries.project;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Answer {
	String answer_id;
	String description;
	int total_votes;
	String stud_username;
	String question_id;
	Date date_posted;
	
	public Answer() {}
	
	public Answer(String answer_id,String description,int total_votes,String stud_username,String question_id,Date date_posted) {
		this.answer_id = answer_id;
		this.description = description;
		this.total_votes = total_votes;
		this.stud_username = stud_username;
		this.question_id = question_id;
		this.date_posted = date_posted;
	}

	public String getAnswer_id() {
		return answer_id;
	}

	public void setAnswer_id(String answer_id) {
		this.answer_id = answer_id;
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

	public String getQuestion_id() {
		return question_id;
	}

	public void setQuestion_id(String question_id) {
		this.question_id = question_id;
	}

	public Date getDate_posted() {
		return date_posted;
	}

	public void setDate_posted(Date date_posted) {
		this.date_posted = date_posted;
	}
	
	//get all ans in arraylist form
	public static List<Answer> getAllAnswerList(ResultSet rs) throws SQLException {
		List<Answer> allAnswerList = new ArrayList<Answer>();
		while(rs.next()) {
			Answer a = new Answer();
			a.setAnswer_id(rs.getString("answer_id"));
			a.setDescription(rs.getString("description"));
			a.setTotal_votes(rs.getInt("total_votes"));
			a.setDate_posted(rs.getDate("date_posted"));
			a.setStud_username(rs.getString("stud_username"));
			a.setQuestion_id(rs.getString("question_id"));
			allAnswerList.add(a);
		}
		return allAnswerList;
	}
	
	//get all ans by student user id
	public static Answer getAnswerById(ResultSet rs) throws SQLException {
		Answer a = new Answer();
		rs.next();
		a.setAnswer_id(rs.getString("answer_id"));
		a.setDescription(rs.getString("description"));
		a.setTotal_votes(rs.getInt("total_votes"));
		a.setDate_posted(rs.getDate("date_posted"));
		a.setStud_username(rs.getString("stud_username"));
		a.setQuestion_id(rs.getString("question_id"));
		return a;
	}
}
