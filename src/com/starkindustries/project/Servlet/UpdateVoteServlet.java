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


@WebServlet("/updateVoteServlet")
public class UpdateVoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public UpdateVoteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String postType = request.getParameter("postType");
		int post_id = Integer.parseInt(request.getParameter("postId"));
		int question_id = Integer.parseInt(request.getParameter("question_id"));
		String voteType = request.getParameter("voteType");
		
		String username = request.getParameter("username");
    	request.getSession().setAttribute("loggedInUser",username);
		
		StarkDatabase db = new StarkDatabase();
		
		try {
			Connection conn = db.getConn();
			if(postType.equalsIgnoreCase("questions")) {
				Question q = Question.getQuestionById(db.getResultByPostId("questions", question_id, conn));
				db.voteQuestion(q, voteType, conn);
			}else {
				Answer a = Answer.getAnswerById(db.getResultByPostId("answers", post_id, conn));
				db.voteAnswer(a, voteType, conn);
			}
			
			Question question = Question.getQuestionById(db.getResultByPostId("question",question_id, conn));
			request.getSession().setAttribute("question", question);
			request.getSession().setAttribute("questionId", question.getQuestion_id());
			
			List<Answer> answerList = Answer.getAllAnswerList(db.getAnswersToQuestionId(question_id, conn));
			request.getSession().setAttribute("answerList", answerList);
			
			List<Comment> commentList = Comment.getAllCommentList(db.getCommentsToQuestionId(question_id, conn));
			request.getSession().setAttribute("commentList", commentList);
			
			conn.close();
			
		} catch (URISyntaxException | SQLException e) {
			
			e.printStackTrace();
		}
		response.setContentType("text/plain"); 
		response.getWriter().write("you have voted");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
