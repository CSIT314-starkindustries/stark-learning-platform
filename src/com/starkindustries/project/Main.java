package com.starkindustries.project;

import java.io.*;
import java.net.URISyntaxException;
import java.sql.*;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class Main {

	public static void main(String[] args) throws URISyntaxException, SQLException  {
		StarkDatabase db = new StarkDatabase();
		
		//db.postAnswer("this is another answer","user120",32,db.getConn());
		db.postComment("This is first answer comment","user125",244,32,db.getConn());
		db.postComment("This is second answer comment","user127",245,32,db.getConn());
		
		/*List<Question> qList = Question.getAllQuestionList(db.getSevenDayQuestions(db.getConn()));
		for (Question q : qList) {
			System.out.print(q.getQuestion_id() + " ");
			System.out.print(q.getTitle() + " ");
			System.out.print(q.getDescription() + " ");
			System.out.print(q.getTotal_votes() + " ");
			System.out.print(q.getDate_posted() + " ");
			System.out.println(q.getStud_username() + " ");
		}
		System.out.println("----------");
		
		
		//-----Question Test------
		//db.postQuestion("default title","this is a default question","user129",db.getConn());
		
		ResultSet rs = db.searchQuestion("default",db.getConn());
		List<Question> qList = Question.getAllQuestionList(rs);
		for (Question q : qList) {
			System.out.print(q.getQuestion_id() + " ");
			System.out.print(q.getTitle() + " ");
			System.out.print(q.getDescription() + " ");
			System.out.print(q.getTotal_votes() + " ");
			System.out.print(q.getDate_posted() + " ");
			System.out.println(q.getStud_username() + " ");
		}
		System.out.println("----------");
		
		db.editQuestion(370,"new title", "new default question", db.getConn());
		db.voteQuestion(qList.get(3), "up", db.getConn());
		db.voteQuestion(qList.get(4), "down", db.getConn());
		
		rs = db.searchQuestion("default",db.getConn());
		qList = Question.getAllQuestionList(rs);
		for (Question q : qList) {
			System.out.print(q.getQuestion_id() + " ");
			System.out.print(q.getTitle() + " ");
			System.out.print(q.getDescription() + " ");
			System.out.print(q.getTotal_votes() + " ");
			System.out.print(q.getDate_posted() + " ");
			System.out.println(q.getStud_username() + " ");
		}
		System.out.println("----------");
		
		//------Answer Test-----
		//db.postAnswer("default answer","user121",370,db.getConn());
		
		rs = db.searchAnswer("default",db.getConn());
		List<Answer> aList = Answer.getAllAnswerList(rs);
		for (Answer a : aList) {
			System.out.print(a.getAnswer_id() + " ");
			System.out.print(a.getDescription() + " ");
			System.out.print(a.getTotal_votes() + " ");
			System.out.print(a.getDate_posted() + " ");
			System.out.print(a.getStud_username() + " ");
			System.out.println(a.getQuestion_id() + " ");
		}
		System.out.println("----------");
		
		db.editAnswer(243,"new default answer", db.getConn());
		db.voteAnswer(aList.get(0), "up", db.getConn());
		db.voteAnswer(aList.get(1), "down", db.getConn());
		
		rs = db.searchAnswer("default",db.getConn());
		aList = Answer.getAllAnswerList(rs);
		for (Answer a : aList) {
			System.out.print(a.getAnswer_id() + " ");
			System.out.print(a.getDescription() + " ");
			System.out.print(a.getTotal_votes() + " ");
			System.out.print(a.getDate_posted() + " ");
			System.out.print(a.getStud_username() + " ");
			System.out.println(a.getQuestion_id() + " ");
		}
		System.out.println("----------");
		
		//-----Comment Test-----
		//db.postComment("default comment","user123",0,373,db.getConn());
		//db.postComment("default comment","user123",243,371,db.getConn());
		
		Statement mystmt = db.getConn().createStatement();
		rs = mystmt.executeQuery("SELECT * FROM comments WHERE description LIKE '%default%'");
		while (rs.next()) {
			System.out.println(rs.getInt("comment_id") + " " + rs.getString("description") + " " + rs.getDate("date_posted") + " " + 
					   		   rs.getString("stud_username") + " " + rs.getInt("answer_id") + " " + rs.getInt("question_id"));
		}
		System.out.println("----------");
		
		db.editComment(168,"new default comment", db.getConn());
		
		mystmt = db.getConn().createStatement();
		rs = mystmt.executeQuery("SELECT * FROM comments WHERE description LIKE '%default%'");
		while (rs.next()) {
			System.out.println(rs.getInt("comment_id") + " " + rs.getString("description") + " " + rs.getDate("date_posted") + " " + 
					   		   rs.getString("stud_username") + " " + rs.getInt("answer_id") + " " + rs.getInt("question_id"));
		}
		*/
	}
}
