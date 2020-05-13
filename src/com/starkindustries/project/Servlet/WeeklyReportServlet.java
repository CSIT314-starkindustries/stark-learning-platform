package com.starkindustries.project.Servlet;

import java.io.IOException;
import java.net.URISyntaxException;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.Month;
import java.time.ZoneId;
import java.util.Calendar;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.starkindustries.project.Question;
import com.starkindustries.project.StarkDatabase;

@WebServlet("/weeklyReport")
public class WeeklyReportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public WeeklyReportServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String username = request.getParameter("username");
    	request.setAttribute("loggedInUser", username);
    	
    	
    	
    	int year = Integer.parseInt(request.getParameter("year"));
    	request.setAttribute("requestedYear", year);
    	int week = Integer.parseInt(request.getParameter("week"));
    	request.setAttribute("requestedWeek", week);
    	
    	Calendar cld = Calendar.getInstance();
    	cld.set(Calendar.YEAR, year);
		cld.set(Calendar.WEEK_OF_YEAR, week);
		cld.set(Calendar.DAY_OF_WEEK,Calendar.MONDAY);
		LocalDate mondayOfWeek = LocalDate.ofInstant(cld.getTime().toInstant(), ZoneId.systemDefault());
		LocalDate sundayOfWeek = mondayOfWeek.plusDays(6);
		
		String weekString = mondayOfWeek + " to " + sundayOfWeek;
		request.setAttribute("weekString", weekString);
    	
    	
    	StarkDatabase db = new StarkDatabase();
    	
    	try {
    		// get weekly questions
			List<Question> weekList = Question.getAllQuestionList(db.getWeeklyQuestions(week,year,db.getConn()));
			request.setAttribute("weekList", weekList);
			
		} catch (URISyntaxException | SQLException e) {
			
			e.printStackTrace();
		}
    	
    	request.getRequestDispatcher("/WEB-INF/views/weeklyReport.jsp").forward(request, response);
	}

}
