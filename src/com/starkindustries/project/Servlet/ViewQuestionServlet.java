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

import com.starkindustries.project.Question;
import com.starkindustries.project.Answer;
import com.starkindustries.project.Comment;
import com.starkindustries.project.StarkDatabase;

@WebServlet("/viewQuestion")
public class ViewQuestionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ViewQuestionServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String username = request.getParameter("username");
    	request.setAttribute("loggedInUser",username);
    	
    	int q_id = Integer.parseInt(request.getParameter("question_id"));
		
		StarkDatabase db = new StarkDatabase();
		try {
			Connection conn = db.getConn();
			
			Question question = Question.getQuestionById(db.getResultByPostId("question",q_id, conn));
			request.setAttribute("question", question);
			request.setAttribute("questionId", question.getQuestion_id());
			
			List<Answer> answerList = Answer.getAllAnswerList(db.getAnswersToQuestionId(q_id, conn));
			request.setAttribute("answerList", answerList);
			
			List<Comment> commentList = Comment.getAllCommentList(db.getCommentsToQuestionId(q_id, conn));
			request.setAttribute("commentList", commentList);
			
			
			conn.close();
		} catch (SQLException | URISyntaxException e) {
			
			e.printStackTrace();
		}
		
		request.getRequestDispatcher("/WEB-INF/views/viewQuestion.jsp").forward(request, response);
	}
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String username = request.getParameter("username");
    	request.setAttribute("loggedInUser",username);
    	StarkDatabase db = new StarkDatabase();
    	int q_id = 0;
		try {
			Connection conn = db.getConn();
			
			if (request.getParameter("postQnBtn") != null) {
	    		String title = request.getParameter("qnsTitle-val");
	    		String desc = request.getParameter("qnsBody-val");
	    		System.out.println(title + " " + desc);
	    		db.postQuestion(title, desc, username, conn);
	    		q_id = Question.getQuestionById(db.searchQuestion(desc, conn)).getQuestion_id();
	    	}
	    	if (request.getParameter("postAnsBtn") != null) {
	    		q_id = Integer.parseInt(request.getParameter("answer-qid-val"));
	    		String desc = request.getParameter("ansBody-val");
	    		System.out.println(q_id + " " + desc);
	    		db.postAnswer(desc, username, q_id, conn);
	    	}
	    	if (request.getParameter("postComBtn") != null) {
	    		q_id = Integer.parseInt(request.getParameter("comment-qid-val"));
	    		int a_id = Integer.parseInt(request.getParameter("comment-aid-val"));
	    		String desc = request.getParameter("commentBody-val");
	    		System.out.println(q_id + " " + a_id + " " + desc);
	    		db.postComment(desc, username, a_id, q_id, conn);
	    	}
	    	if (request.getParameter("editQnBtn") != null) {
	    		q_id = Integer.parseInt(request.getParameter("edit-qns-id-val"));
	    		String title = request.getParameter("edit-qns-title-val");
	    		String desc = request.getParameter("edit-qns-body-val");
	    		System.out.println(q_id + " " + title + " " + desc);
	    		db.editQuestion(q_id, title, desc, conn);
	    	}
	    	if (request.getParameter("editAnsBtn") != null) {
	    		int a_id = Integer.parseInt(request.getParameter("edit-ans-id-val"));
	    		String desc = request.getParameter("edit-ans-body-val");
	    		System.out.println(a_id + " " + desc);
	    		db.editAnswer(a_id, desc, conn);
	    		q_id = Answer.getAnswerById(db.getResultByPostId("answer", a_id, conn)).getQuestion_id();
	    	}
	    	if (request.getParameter("editComBtn") != null) {
	    		int c_id = Integer.parseInt(request.getParameter("edit-com-id-val"));
	    		String desc = request.getParameter("edit-com-body-val");
	    		System.out.println(c_id + " " + desc);
	    		db.editComment(c_id, desc, conn);
	    		q_id = Comment.getCommentById(db.getResultByPostId("comment", c_id, conn)).getQuestion_id();
	    	}
	    	
	    	if (q_id != 0) {
	    		Question question = Question.getQuestionById(db.getResultByPostId("question",q_id, conn));
				request.setAttribute("question", question);
				
				List<Answer> answerList = Answer.getAllAnswerList(db.getAnswersToQuestionId(q_id, conn));
				request.setAttribute("answerList", answerList);
				
				List<Comment> commentList = Comment.getAllCommentList(db.getCommentsToQuestionId(q_id, conn));
				request.setAttribute("commentList", commentList);
	    	}
			
	    	conn.close();
		} catch (SQLException | URISyntaxException e) {
			
			e.printStackTrace();
		}
    	
    	request.getRequestDispatcher("/WEB-INF/views/viewQuestion.jsp").forward(request, response);
	}


}
