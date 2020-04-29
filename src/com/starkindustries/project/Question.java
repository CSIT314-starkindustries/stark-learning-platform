package com.starkindustries.project;

import java.time.LocalDate;

public class Question {
	String question_id;
	String title;
	String description;
	int total_votes;
	String stud_username;
	LocalDate date_posted;
	
	public Question () {}

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

	public LocalDate getDate_posted() {
		return date_posted;
	}

	public void setDate_posted(LocalDate date_posted) {
		this.date_posted = date_posted;
	}
	
	
}
