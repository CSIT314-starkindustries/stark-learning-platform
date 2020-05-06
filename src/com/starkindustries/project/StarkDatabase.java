package com.starkindustries.project;

import java.net.URI;
import java.net.URISyntaxException;
import java.sql.*;
import java.util.Date;

public class StarkDatabase {
	public StarkDatabase() {
		
	}
	public Connection getConn() throws URISyntaxException, SQLException {
		URI dbUri = new URI(System.getenv("DATABASE_URL"));
		
		String username = dbUri.getUserInfo().split(":")[0];
		String password = dbUri.getUserInfo().split(":")[1];
		String dbUrl = "jdbc:postgresql://" + dbUri.getHost() + ':' + dbUri.getPort() + dbUri.getPath();
		
		return DriverManager.getConnection(dbUrl, username, password);
	}
	
	
	/*
	 * tableName case sensitive for sql search
	 *               List of relations
		 Schema |    Name    | Type  |     Owner
		--------+------------+-------+----------------
		 public | answers    | table | pvcqsusljpeasu
		 public | comments   | table | pvcqsusljpeasu
		 public | moderator  | table | pvcqsusljpeasu
		 public | questions  | table | pvcqsusljpeasu
		 public | student    | table | pvcqsusljpeasu
		 public | user_admin | table | pvcqsusljpeasu
	 * 
	 * 
	 * */
	//return all result based on table name
	public ResultSet getAllRecords(String tableName, Connection conn) {
		Statement mystmt;
		ResultSet rs = null;
		String query = "SELECT * FROM " + tableName;
		try {
			mystmt = conn.createStatement();
			rs = mystmt.executeQuery(query);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	
	// search by student/ua/mod username function 
	public ResultSet getResultByUserId(String tableName, String username, Connection conn) {
		Statement mystmt;
		ResultSet rs = null;
		String query = "";
		if(tableName.equalsIgnoreCase("student")) {
			query = String.format("SELECT * FROM student WHERE stud_username = '%s'", username);
		}else if(tableName.equalsIgnoreCase("moderator")) {
			query = String.format("SELECT * FROM moderator WHERE mod_username = '%s'", username);
		}else if(tableName.equalsIgnoreCase("question") ||tableName.equalsIgnoreCase("questions")) {
			query = String.format("SELECT * FROM questions WHERE stud_username = '%s'", username);
		}else if(tableName.equalsIgnoreCase("answer") ||tableName.equalsIgnoreCase("answers")) {
			query = String.format("SELECT * FROM answers WHERE stud_username = '%s'", username);
		}else if (tableName.equalsIgnoreCase("comment") ||tableName.equalsIgnoreCase("comments"))
			query = String.format("SELECT * FROM comments WHERE stud_username = '%s'", username);
		else {
			query = String.format("SELECT * FROM user_admin WHERE ua_username = '%s'", username); 
		}
		try {
			mystmt = conn.createStatement();
			rs = mystmt.executeQuery(query);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return rs;
		
	}
	
	public ResultSet getSevenDayQuestions(Connection conn) {
		Statement mystmt;
		ResultSet rs = null;
		String query = String.format("SELECT * FROM questions WHERE date_posted BETWEEN '%tF' AND '%tF'",java.sql.Date.valueOf(java.time.LocalDate.now().minusDays(7)),java.sql.Date.valueOf(java.time.LocalDate.now()));
		
		try {
			mystmt = conn.createStatement();
			rs = mystmt.executeQuery(query);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return rs;
	}
	
	// search for one question/ comment/ answer
	public ResultSet getResultByPostId(String quesOrComOrAns,int postId, Connection conn) {
		Statement mystmt;
		ResultSet rs = null;
		String query = "";
		if(quesOrComOrAns.equalsIgnoreCase("question") ||quesOrComOrAns.equalsIgnoreCase("questions")) {
			query = String.format("SELECT * FROM questions WHERE question_id = '%d'", postId);
		}else if(quesOrComOrAns.equalsIgnoreCase("answer") ||quesOrComOrAns.equalsIgnoreCase("answers")) {
			query = String.format("SELECT * FROM answers WHERE answer_id = '%d'", postId);
		}else 
			query = String.format("SELECT * FROM comments WHERE comment_id = '%d'", postId);
		try {
			mystmt = conn.createStatement();
			rs = mystmt.executeQuery(query);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	
	// search for all answers that are children to question
	public ResultSet getAnswersToQuestionId(int q_id, Connection conn) {
		Statement mystmt;
		ResultSet rs = null;
		String query = String.format("SELECT * FROM answers WHERE question_id = '%d'", q_id);
		try {
			mystmt = conn.createStatement();
			rs = mystmt.executeQuery(query);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	
	// search for all comments that are children to question
	public ResultSet getCommentsToQuestionId(int q_id, Connection conn) {
		Statement mystmt;
		ResultSet rs = null;
		String query = String.format("SELECT * FROM comments WHERE question_id = '%d'", q_id);
		try {
			mystmt = conn.createStatement();
			rs = mystmt.executeQuery(query);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	
	public boolean createNewUser(String studOrMod, String username, String password, Connection conn) throws SQLException {
		ResultSet rs = getResultByUserId(studOrMod,username,conn);
		
		//return empty result
		if(!rs.isBeforeFirst()) {
			PreparedStatement mystmt = null;
			String newStudquery = "INSERT INTO student (stud_username, stud_password, total_qn_asked, total_ans_posted, total_comment_posted, issuspended, participation_rating)"
								+ "VALUES (?,?,?,?,?,?,?); ";
			
			String newModquery = "INSERT INTO moderator (mod_username, mod_password)"
					+ "VALUES (?,?); ";
			
			
			if(studOrMod.equalsIgnoreCase("student")) {
				mystmt = conn.prepareStatement(newStudquery);
				mystmt.setString(1,username);
				mystmt.setString(2, password);
				mystmt.setInt(3, 0);
				mystmt.setInt(4,0);
				mystmt.setInt(5,0);
				mystmt.setBoolean(6, false);
				mystmt.setInt(7,0);
				
			}else {
				mystmt = conn.prepareStatement(newModquery);
				mystmt.setString(1,username);
				mystmt.setString(2, password);
			}
			
			mystmt.execute();
			
			return true; //new account created
		}else {
			return false; //username taken
		}
			
	}
	
	public boolean studentSuspendToggle(String username, Connection conn) throws SQLException {
		ResultSet rs = new StarkDatabase().getResultByUserId("student",username,conn);
		
		if (!rs.next()) return false;
		
		Statement mystmt;
		String query = "";
		
		if (rs.getBoolean("issuspended")) {
			query = String.format("UPDATE student SET issuspended = '%b' WHERE stud_username = '%s'",false,username);
		}
		else query = String.format("UPDATE student SET issuspended = '%b' WHERE stud_username = '%s'",true,username);
		
		mystmt = conn.createStatement();
		mystmt.executeUpdate(query);
		
		return true;
	}
	
	// for user admin
	public boolean resetPassword(String studOrMod, String username, Connection conn) throws SQLException {
		int rowsUpdated = 0;
		Statement mystmt;
		String query = "";
		
		String randPass = new Password().passwordGenerate();
		
		if(studOrMod.equalsIgnoreCase("student")) {
			query = String.format("UPDATE student SET stud_password = '%s' WHERE stud_username = '%s'",randPass,username);
		}
		else query = String.format("UPDATE moderator SET mod_password = '%s' WHERE mod_username = '%s'",randPass,username);
		
		mystmt = conn.createStatement();
		rowsUpdated = mystmt.executeUpdate(query);
		
		if (rowsUpdated == 0) return false;
		else return true;
	}
	
	//for user
	public boolean changePassword(String studOrMod, String username, String pass, Connection conn) throws SQLException {
		int rowsUpdated = 0;
		Statement mystmt;
		String query = "";
		
		if(studOrMod.equalsIgnoreCase("student")) {
			query = String.format("UPDATE student SET stud_password = '%s' WHERE stud_username = '%s'",pass,username);
		}
		else query = String.format("UPDATE moderator SET mod_password = '%s' WHERE mod_username = '%s'",pass,username);
		
		mystmt = conn.createStatement();
		rowsUpdated = mystmt.executeUpdate(query);
		if (rowsUpdated == 0) return false;
		else return true;
	}
	
	public boolean postQuestion(String title, String description, String username, Connection conn) throws SQLException {
		int rowsUpdated = 0;
		PreparedStatement mystmt = null;
		String query = "INSERT INTO questions (title, description, total_votes, date_posted, stud_username)"
							+ "VALUES (?,?,?,?,?); ";
		
		mystmt = conn.prepareStatement(query);
		mystmt.setString(1,title);
		mystmt.setString(2,description);
		mystmt.setInt(3,0);
		mystmt.setDate(4,java.sql.Date.valueOf(java.time.LocalDate.now()));
		mystmt.setString(5,username);
		
		rowsUpdated = mystmt.executeUpdate();
		
		if (rowsUpdated == 0) return false;
		else return true;
	}
	
	public boolean editQuestion(int q_id, String title, String description, Connection conn) throws SQLException {
		int rowsUpdated = 0;
		Statement mystmt;
		String query = String.format("UPDATE questions SET title = '%s', description = '%s' WHERE question_id = '%d'",title,description,q_id);
		
		mystmt = conn.createStatement();
		rowsUpdated = mystmt.executeUpdate(query);
		if (rowsUpdated == 0) return false;
		else return true;
	}
	
	public ResultSet searchQuestion(String searchQuery, Connection conn) throws SQLException {
		ResultSet rs;
		Statement mystmt;
		String query = "SELECT * FROM questions WHERE title LIKE '%" + searchQuery + "%'";
		
		mystmt = conn.createStatement();
		rs = mystmt.executeQuery(query);
		return rs;
	}
	
	public boolean postAnswer(String description, String username, int q_id, Connection conn) throws SQLException {
		int rowsUpdated = 0;
		PreparedStatement mystmt = null;
		String query = "INSERT INTO answers (description, total_votes, date_posted, stud_username, question_id)"
							+ "VALUES (?,?,?,?,?); ";
		
		mystmt = conn.prepareStatement(query);
		mystmt.setString(1,description);
		mystmt.setInt(2,0);
		mystmt.setDate(3,java.sql.Date.valueOf(java.time.LocalDate.now()));
		mystmt.setString(4,username);
		mystmt.setInt(5,q_id);
		
		rowsUpdated = mystmt.executeUpdate();
		
		if (rowsUpdated == 0) return false;
		else return true;
	}
	
	public boolean editAnswer(int a_id, String description, Connection conn) throws SQLException {
		int rowsUpdated = 0;
		Statement mystmt;
		String query = String.format("UPDATE answers SET description = '%s' WHERE answer_id = '%d'",description,a_id);
		
		mystmt = conn.createStatement();
		rowsUpdated = mystmt.executeUpdate(query);
		if (rowsUpdated == 0) return false;
		else return true;
	}
	
	public ResultSet searchAnswer(String searchQuery, Connection conn) throws SQLException {
		ResultSet rs;
		Statement mystmt;
		String query = "SELECT * FROM answers WHERE description LIKE '%" + searchQuery + "%'";
		
		mystmt = conn.createStatement();
		rs = mystmt.executeQuery(query);
		return rs;
	}
	
	public boolean postComment(String description, String username, int a_id, int q_id, Connection conn) throws SQLException {
		int rowsUpdated = 0;
		PreparedStatement mystmt = null;
		String query = "INSERT INTO comments (description, date_posted, stud_username, answer_id, question_id)"
							+ "VALUES (?,?,?,?,?); ";
		
		mystmt = conn.prepareStatement(query);
		mystmt.setString(1,description);
		mystmt.setDate(2,java.sql.Date.valueOf(java.time.LocalDate.now()));
		mystmt.setString(3,username);
		
		if (a_id != 0) mystmt.setInt(4,a_id);
		else mystmt.setNull(4, Types.INTEGER);
		
		mystmt.setInt(5,q_id);
		
		rowsUpdated = mystmt.executeUpdate();
		
		if (rowsUpdated == 0) return false;
		else return true;
	}
	
	public boolean editComment(int c_id, String description, Connection conn) throws SQLException {
		int rowsUpdated = 0;
		Statement mystmt;
		String query = String.format("UPDATE comments SET description = '%s' WHERE comment_id = '%d'",description,c_id);
		
		mystmt = conn.createStatement();
		rowsUpdated = mystmt.executeUpdate(query);
		if (rowsUpdated == 0) return false;
		else return true;
	}
	
	public boolean voteQuestion(Question q, String type, Connection conn) throws SQLException {
		int rowsUpdated = 0;
		Statement mystmt;
		
		int val = q.getTotal_votes();
		if (type.equalsIgnoreCase("up")) val++;
		else val--;
		
		
		String query = String.format("UPDATE questions SET total_votes = '%d' WHERE question_id = '%d'",val,q.getQuestion_id());
		
		mystmt = conn.createStatement();
		rowsUpdated = mystmt.executeUpdate(query);
		if (rowsUpdated == 0) return false;
		else return true;
	}
	
	public boolean voteAnswer(Answer a, String type, Connection conn) throws SQLException {
		int rowsUpdated = 0;
		Statement mystmt;
		
		int val = a.getTotal_votes();
		if (type.equalsIgnoreCase("up")) val++;
		else val--;
		
		
		String query = String.format("UPDATE answers SET total_votes = '%d' WHERE answer_id = '%d'",val,a.getAnswer_id());
		
		mystmt = conn.createStatement();
		rowsUpdated = mystmt.executeUpdate(query);
		if (rowsUpdated == 0) return false;
		else return true;
	}
	
	/* Debug Commands, not currently supported in use cases */
	
	public String retrievePassword(String studOrMod, String username, Connection conn) throws SQLException {
		ResultSet rs;
		Statement mystmt;
		String query = "";
		
		if(studOrMod.equalsIgnoreCase("student")) {
			query = String.format("SELECT stud_password FROM student where stud_username = '%s'",username);
		}
		else query = String.format("SELECT mod_password FROM moderator where mod_username = '%s'",username);
		
		mystmt = conn.createStatement();
		rs = mystmt.executeQuery(query);
		
		if (!rs.next()) return null;
		else if (studOrMod.equalsIgnoreCase("student")) return rs.getString("stud_password");
		else return rs.getString("mod_password");
	}
	
	public void deleteUser(String studOrMod, String username, Connection conn) throws SQLException {
		Statement mystmt;
		String query = "";
		if (studOrMod.equalsIgnoreCase("student")) {
			query = String.format("DELETE FROM student WHERE stud_username = '%s'", username); 
		} else query = String.format("DELETE FROM moderator WHERE mod_username = '%s'", username); 
		
		mystmt = conn.createStatement();
		mystmt.executeUpdate(query);
		
	}
}
