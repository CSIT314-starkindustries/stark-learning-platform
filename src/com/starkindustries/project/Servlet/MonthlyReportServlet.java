package com.starkindustries.project.Servlet;

import java.io.IOException;
import java.net.URISyntaxException;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.Month;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.starkindustries.project.Question;
import com.starkindustries.project.StarkDatabase;

@WebServlet("/monthlyReport")
public class MonthlyReportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public MonthlyReportServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String username = request.getParameter("username");
    	request.setAttribute("loggedInUser", username);
    	
    	int year = Integer.parseInt(request.getParameter("year"));
    	request.setAttribute("requestedYear", year);
    	int month = Integer.parseInt(request.getParameter("month"));
    	String monthStr = Month.of(month).toString();
    	monthStr = monthStr.substring(0,1) + monthStr.substring(1).toLowerCase();
    	request.setAttribute("requestedMonth", monthStr);
    	
    	StarkDatabase db = new StarkDatabase();
    	
    	try {
			// get monthly questions
			List<Question> monthList = Question.getAllQuestionList(db.getMonthlyQuestions(month,year,db.getConn()));
			request.setAttribute("monthList", monthList);

		} catch (URISyntaxException | SQLException e) {
			
			e.printStackTrace();
		}
    	
    	request.getRequestDispatcher("/WEB-INF/views/monthlyReport.jsp").forward(request, response);
	}

}
