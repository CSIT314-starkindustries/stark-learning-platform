package com.starkindustries.project;

import java.time.LocalDate;

public class Answer {
	String answer_id;
	String description;
	int total_votes;
	String stud_username;
	String question_id;
	LocalDate date_posted;
	
	public Answer() {}

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

	public LocalDate getDate_posted() {
		return date_posted;
	}

	public void setDate_posted(LocalDate date_posted) {
		this.date_posted = date_posted;
	}
}
