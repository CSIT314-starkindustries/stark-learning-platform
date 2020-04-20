package com.starkindustries.project;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Student {
	private String username;
	private String password;
	private int totalQnAsked;
	private int totalAnsPosted;
	private int totalCommentPosted;
	private boolean isSuspended;
	private int participation_rating;
	
	public Student() {}
	
	public Student(String username, String password, int totalQnAsked,
					int totalAnsPosted, int totalCommentPosted, boolean isSuspended,
					int participation_rating) {
		
		this.username = username;
		this.password = password;
		this.totalQnAsked = totalQnAsked;
		this.totalAnsPosted = totalAnsPosted;
		this.totalCommentPosted = totalCommentPosted;
		this.isSuspended = isSuspended;
		this.participation_rating= participation_rating;
	}
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getTotalQnAsked() {
		return totalQnAsked;
	}

	public void setTotalQnAsked(int totalQnAsked) {
		this.totalQnAsked = totalQnAsked;
	}

	public int getTotalAnsPosted() {
		return totalAnsPosted;
	}

	public void setTotalAnsPosted(int totalAnsPosted) {
		this.totalAnsPosted = totalAnsPosted;
	}

	public int getTotalCommentPosted() {
		return totalCommentPosted;
	}

	public void setTotalCommentPosted(int totalCommentPosted) {
		this.totalCommentPosted = totalCommentPosted;
	}

	public boolean isSuspended() {
		return isSuspended;
	}

	public void setSuspended(boolean isSuspended) {
		this.isSuspended = isSuspended;
	}

	public int getParticipation_rating() {
		return participation_rating;
	}

	public void setParticipation_rating(int participation_rating) {
		this.participation_rating = participation_rating;
	}
	
	//convert student resultset to arraylist  return a list of student
	public static List<Student> getStudList (ResultSet rs) throws SQLException {
		List<Student> allStudList = new ArrayList<Student>();
		while(rs.next()) {
			Student student = new Student();
			student.setUsername(rs.getString("stud_username"));
			student.setPassword(rs.getString("stud_password"));
			student.setTotalQnAsked(rs.getInt("total_qn_asked"));
			student.setTotalAnsPosted(rs.getInt("total_ans_posted"));
			student.setTotalCommentPosted(rs.getInt("total_comment_posted"));
			student.setSuspended(rs.getBoolean("issuspended"));
			student.setParticipation_rating(rs.getInt("participation_rating"));
			allStudList.add(student);
		}
		return allStudList;
	}
	
	// return one student record or null
	public static Student getStudent(ResultSet rs) throws SQLException {
		Student student = new Student();
		while(rs.next()) {
			student.setUsername(rs.getString("stud_username"));
			student.setPassword(rs.getString("stud_password"));
			student.setTotalQnAsked(rs.getInt("total_qn_asked"));
			student.setTotalAnsPosted(rs.getInt("total_ans_posted"));
			student.setTotalCommentPosted(rs.getInt("total_comment_posted"));
			student.setSuspended(rs.getBoolean("issuspended"));
			student.setParticipation_rating(rs.getInt("participation_rating"));
		}
		return student;	
	}
}
