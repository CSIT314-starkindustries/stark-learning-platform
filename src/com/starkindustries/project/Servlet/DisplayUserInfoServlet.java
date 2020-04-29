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

import com.starkindustries.project.*;


@WebServlet("/displayUserServlet")
public class DisplayUserInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public DisplayUserInfoServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userType = request.getParameter("userRadioBox");
		
		StarkDatabase db = new StarkDatabase();
		ResultSet rs = null;
		try {
			if(userType.equalsIgnoreCase("student")) {
				rs = db.getAllRecords("student", db.getConn());
				List<Student> studentList = Student.getStudList(rs);
				request.setAttribute("userInfo", studentList);
				request.setAttribute("userType", "Student");
			}else {
				rs = db.getAllRecords("moderator", db.getConn());
				List<Moderator> modList = Moderator.getModeratorList(rs);
				request.setAttribute("userInfo", modList);
				request.setAttribute("userType", "Moderator");
			}	
		} catch (URISyntaxException | SQLException e) {
			e.printStackTrace();
		}
		
		request.getRequestDispatcher("/WEB-INF/views/userAdmin.jsp").forward(request,response);
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/searchServlet").forward(request,response);
		
	}
}
