package com.starkindustries.project.Servlet;

import java.io.IOException;
import java.net.URISyntaxException;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.starkindustries.project.Question;
import com.starkindustries.project.StarkDatabase;

@WebServlet("/topVotedQns")
public class TopVotedQnsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public TopVotedQnsServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String username = request.getParameter("username");
    	request.setAttribute("loggedInUser", username);
    	
    	int year = Integer.parseInt(request.getParameter("year"));
    	request.setAttribute("requestedYear", year);
    	
    	StarkDatabase db = new StarkDatabase();
    	
    	try {
    		//get yearly questions
			List<Question> yearList = Question.getAllQuestionList(db.getYearlyQuestions(year,db.getConn()));
			request.setAttribute("yearList", yearList);
			
		} catch (URISyntaxException | SQLException e) {
			
			e.printStackTrace();
		}
    	
    	request.getRequestDispatcher("/WEB-INF/views/topVotedQns.jsp").forward(request, response);
	}

}
