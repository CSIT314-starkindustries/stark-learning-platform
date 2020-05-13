package com.starkindustries.project.Servlet;

import java.io.IOException;
import java.net.URISyntaxException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.starkindustries.project.Answer;
import com.starkindustries.project.Comment;
import com.starkindustries.project.Question;
import com.starkindustries.project.StarkDatabase;

/**
 * Servlet implementation class StudentHomeServlet
 */
@WebServlet("/studentHome")
public class StudentHomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public StudentHomeServlet() {
        super();

    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	StarkDatabase db = new StarkDatabase();
    	String username = request.getParameter("username");
    	
    	
    	try {
			Connection conn = db.getConn();
			
			//get questions in last 7 days
			List<Question> sevenDayQnList = Question.getAllQuestionList(db.getSevenDayQuestions(conn));
			request.setAttribute("sevenDayQuestionList", sevenDayQnList);
			
			// get all question
			List<Question> allQnList = Question.getAllQuestionList(db.getAllRecords("questions", conn));
			request.setAttribute("allQuestionList", allQnList);
			
			// get user question
			List<Question> qnList = Question.getAllQuestionList(db.getResultByUserId("questions", username, conn));
			request.setAttribute("myQuestionList", qnList);
			
			//get user answer
			List<Answer> ansList = Answer.getAllAnswerList(db.getResultByUserId("answers", username, conn));
			request.setAttribute("myAnswerList", ansList);
			
			//get user comment
			List<Comment> commentList = Comment.getAllCommentList(db.getResultByUserId("comments", username, conn));
			request.setAttribute("myCommentList", commentList);
			
			conn.close();
		} catch (URISyntaxException | SQLException e) {
			
			e.printStackTrace();
		}
    	
		request.getRequestDispatcher("/WEB-INF/views/studentHome.jsp").forward(request, response);
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String username = request.getParameter("loggedInUser");
    	request.setAttribute("loggedInUser",username);
		request.getRequestDispatcher("/WEB-INF/views/studentHome.jsp").forward(request, response);
	}

}
