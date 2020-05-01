package com.starkindustries.project;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class Comment {
	String comment_id;
	String description;
	String stud_username;
	String question_id;
	String answer_id;
	Date date_posted;
	
	public Comment() {}
	
	public Comment(String comment_id,String description,String stud_username,String question_id,String answer_id,Date date_posted) {
		this.comment_id = comment_id;
		this.description = description;
		this.stud_username = stud_username;
		this.question_id = question_id;
		this.answer_id = answer_id;
		this.date_posted = date_posted;
	}

	public String getComment_id() {
		return comment_id;
	}

	public void setComment_id(String comment_id) {
		this.comment_id = comment_id;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
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

	public String getAnswer_id() {
		return answer_id;
	}

	public void setAnswer_id(String answer_id) {
		this.answer_id = answer_id;
	}

	public Date getDate_posted() {
		return date_posted;
	}

	public void setDate_posted(Date date_posted) {
		this.date_posted = date_posted;
	}
	
	public static List<Comment> getAllCommentList(ResultSet rs) throws SQLException {
		List<Comment> allCommentList = new ArrayList<Comment>();
		while(rs.next()) {
			Comment c = new Comment();
			c.setComment_id(rs.getString("comment_id"));
			c.setDescription(rs.getString("description"));
			c.setDate_posted(rs.getDate("date_posted"));
			c.setStud_username(rs.getString("stud_username"));
			c.setAnswer_id(rs.getString("answer_id"));
			c.setQuestion_id(rs.getString("question_id"));
			allCommentList.add(c);
		}
		return allCommentList;
	}
	
	public static Comment getCommentById(ResultSet rs) throws SQLException {
		Comment c = new Comment();
		rs.next();
		c.setComment_id(rs.getString("comment_id"));
		c.setDescription(rs.getString("description"));
		c.setDate_posted(rs.getDate("date_posted"));
		c.setStud_username(rs.getString("stud_username"));
		c.setAnswer_id(rs.getString("answer_id"));
		c.setQuestion_id(rs.getString("question_id"));
		return c;
	}
	
}
