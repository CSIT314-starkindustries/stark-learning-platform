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
 * Servlet implementation class StudentHomeServlet
 */
@WebServlet("/studentProfileServlet")
public class StudentProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public StudentProfileServlet() {
        super();

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String username = request.getParameter("username");
    	request.setAttribute("loggedInUser", username);
    	StarkDatabase db = new StarkDatabase();
    	Student s;
		try {
			Connection conn = db.getConn();
			s = Student.getStudent(db.getResultByUserId("student", username,  conn));
			request.setAttribute("user_part_rating",s.getParticipation_rating());
			
			conn.close();
		} catch (SQLException | URISyntaxException e) {
			
			e.printStackTrace();
		}
    	
		request.getRequestDispatcher("/WEB-INF/views/studentProfile.jsp").forward(request, response);
	}
    
    protected void doPost(HttpServletRequest request , HttpServletResponse response) throws ServletException, IOException {
    	String currentPw = request.getParameter("currentPassword");
    	String newPw = request.getParameter("newPassword");
    	String username = request.getParameter("username");
    	
    	//get userpassword
    	StarkDatabase db = new StarkDatabase();
    	try {
    		Connection conn = db.getConn();
			Student s = Student.getStudent(db.getResultByUserId("student", username, conn));
			if(s.getPassword().equals(currentPw)) {
				request.setAttribute("pwChangedSuccess",db.changePassword("student", username, newPw, conn));
				request.setAttribute("loggedInUser", username);
				request.setAttribute("user_part_rating",s.getParticipation_rating());
			}else {
				request.setAttribute("isPwChanged",false);
				request.setAttribute("loggedInUser", username);
			}
			conn.close();
		} catch (SQLException | URISyntaxException e) {
			
			e.printStackTrace();
		}
    	request.getRequestDispatcher("/WEB-INF/views/studentProfile.jsp").forward(request, response);
    }

}
