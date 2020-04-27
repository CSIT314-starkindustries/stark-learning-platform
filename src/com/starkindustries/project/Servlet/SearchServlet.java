package com.starkindustries.project.Servlet;

import java.io.IOException;
import java.net.URISyntaxException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.starkindustries.project.Moderator;
import com.starkindustries.project.StarkDatabase;
import com.starkindustries.project.Student;

@WebServlet("/searchServlet")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SearchServlet() {
        super();

    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("searchUserName");
		
		
		StarkDatabase db = new StarkDatabase();
		ResultSet rs = null;
		try {
			if(username.contains("user")) {
				rs = db.getOneUserById("student", username, db.getConn());
				List<Student> studentList = Student.getStudList(rs);
				request.setAttribute("userInfo", studentList);
				request.setAttribute("userType", "Student");
			}else {
				rs = db.getOneUserById("moderator",username, db.getConn());
				List<Moderator> modList = Moderator.getModeratorList(rs);
				request.setAttribute("userInfo", modList);
				request.setAttribute("userType", "Moderator");
			}
			
		} catch (URISyntaxException | SQLException e) {
			e.printStackTrace();
		}
		request.getRequestDispatcher("/WEB-INF/views/userAdmin.jsp").forward(request,response);
	}

}