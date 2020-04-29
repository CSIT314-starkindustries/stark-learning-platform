package com.starkindustries.project;

import java.time.LocalDate;

public class Comment {
	String comment_id;
	String description;
	String stud_username;
	String question_id;
	String answer_id;
	LocalDate date_posted;
	
	public Comment() {}

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

	public LocalDate getDate_posted() {
		return date_posted;
	}

	public void setDate_posted(LocalDate date_posted) {
		this.date_posted = date_posted;
	}
	
	
}
