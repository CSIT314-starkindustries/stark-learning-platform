package com.starkindustries.project.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URISyntaxException;
import java.sql.Connection;
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


@WebServlet("/createUserServlet")
public class CreateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public CreateUserServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("newUserID");
		String password = request.getParameter("newUserPassword");
		String userType = request.getParameter("studOrModRadio");
		
		StarkDatabase db = new StarkDatabase();
		try {
			request.setAttribute("created",db.createNewUser(userType.toLowerCase(), username, password, db.getConn()));
		} catch (SQLException | URISyntaxException e) {
			e.printStackTrace();
		}
		request.getRequestDispatcher("/WEB-INF/views/userAdmin.jsp").forward(request,response);
	}

}
