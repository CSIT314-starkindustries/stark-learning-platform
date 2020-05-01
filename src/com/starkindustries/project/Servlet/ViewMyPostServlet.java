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
import com.starkindustries.project.StarkDatabase;


@WebServlet("/viewMyPostServlet")
public class ViewMyPostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ViewMyPostServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String postType = request.getParameter("postType");
		String stud_username = request.getParameter("username");
		
		StarkDatabase db = new StarkDatabase();
		try {
			Connection conn = db.getConn();
			List<Question> qnList = Question.getAllQuestionList(db.getResultByUserId(postType, stud_username, conn));
			request.setAttribute("myQuestionList", qnList);
			request.setAttribute("loggedInUser", stud_username);
			
		} catch (URISyntaxException | SQLException e) {
			
			e.printStackTrace();
		}
		request.getRequestDispatcher("/WEB-INF/views/studentHome.jsp").forward(request,response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
