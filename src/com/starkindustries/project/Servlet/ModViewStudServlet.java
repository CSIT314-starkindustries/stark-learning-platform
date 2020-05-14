package com.starkindustries.project.Servlet;

import java.io.IOException;
import java.net.URISyntaxException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.starkindustries.project.StarkDatabase;
import com.starkindustries.project.Student;

/**
 * Servlet implementation class ModViewStudServlet
 */
@WebServlet("/modViewStudServlet")
public class ModViewStudServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModViewStudServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String username = request.getParameter("username");
    	String view_username = request.getParameter("view_username");
    	request.setAttribute("view_username", view_username);
    	request.setAttribute("loggedInUser", username);
    	StarkDatabase db = new StarkDatabase();
    	Student s;
		try {
			Connection conn = db.getConn();
			s = Student.getStudent(db.getResultByUserId("student", view_username, conn));
			request.setAttribute("user_part_rating",s.getParticipation_rating());
			
			conn.close();
		} catch (SQLException | URISyntaxException e) {
			
			e.printStackTrace();
		}
    	
		request.getRequestDispatcher("/WEB-INF/views/modViewStudentProfile.jsp").forward(request, response);
	}


}
