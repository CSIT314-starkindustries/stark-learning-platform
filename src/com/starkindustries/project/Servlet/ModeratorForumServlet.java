package com.starkindustries.project.Servlet;

import java.io.IOException;
import java.net.URISyntaxException;
import java.sql.Connection;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.Calendar;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.starkindustries.project.Question;
import com.starkindustries.project.StarkDatabase;
import com.starkindustries.project.Student;

@WebServlet("/moderatorForum")
public class ModeratorForumServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ModeratorForumServlet() {
        super();
        
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String username = request.getParameter("username");
    	request.setAttribute("loggedInUser", username);
    	
    	StarkDatabase db = new StarkDatabase();
    	
    	try {
			Connection conn = db.getConn();
			
			LocalDate current = LocalDate.now();
			int year = current.getYear();
			int month = current.getMonthValue();
			Calendar cld = Calendar.getInstance();
			int week = cld.get(Calendar.WEEK_OF_YEAR);
			
			//get yearly questions
			List<Question> yearList = Question.getAllQuestionList(db.getYearlyQuestions(year,conn));
			request.setAttribute("yearList", yearList);
			
			// get monthly questions
			List<Question> monthList = Question.getAllQuestionList(db.getMonthlyQuestions(month,year,conn));
			request.setAttribute("monthList", monthList);
			
			// get weekly questions
			List<Question> weekList = Question.getAllQuestionList(db.getWeeklyQuestions(week,year,conn));
			request.setAttribute("weekList", weekList);
			
			//get participation list
			List<Student> participationList = Student.getStudList(db.getParticipationList(conn));
			request.setAttribute("studList", participationList);
			
			conn.close();
		} catch (URISyntaxException | SQLException e) {
			
			e.printStackTrace();
		}
    	
		request.getRequestDispatcher("/WEB-INF/views/moderatorForum.jsp").forward(request, response);
	}
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	doGet(request,response);
    }

}
