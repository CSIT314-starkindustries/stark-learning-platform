package com.starkindustries.project.Servlet;

import java.io.IOException;
import java.net.URISyntaxException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.starkindustries.project.StarkDatabase;
import com.starkindustries.project.Student;

@WebServlet("/participationRatings")
public class ParticipationRatingsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ParticipationRatingsServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String username = request.getParameter("username");
    	request.setAttribute("loggedInUser", username);
    	
    	StarkDatabase db = new StarkDatabase();
    	
    	try {
			//get participation list
			List<Student> participationList = Student.getStudList(db.getParticipationList(db.getConn()));
			request.setAttribute("studList", participationList);
			
		} catch (URISyntaxException | SQLException e) {
			
			e.printStackTrace();
		}
    	
    	request.getRequestDispatcher("/WEB-INF/views/participationRatings.jsp").forward(request, response);
	}

}
