package com.starkindustries.project.Servlet;

import java.io.IOException;
import java.net.URISyntaxException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.starkindustries.project.StarkDatabase;
import com.starkindustries.project.Validation;


@WebServlet(urlPatterns="/loginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/searchServlet").forward(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password"); 
		String userType = request.getParameter("usertype");
		
		Validation validator = new Validation();
		
		StarkDatabase db = new StarkDatabase();
		try {
			if(userType.equalsIgnoreCase("user_admin") && validator.validateUser(3, username, password)) {
				request.getRequestDispatcher("/WEB-INF/views/userAdmin.jsp").forward(request,response);
			}else {
				request.setAttribute("invalid_acc", "Invalid account");
				request.getRequestDispatcher("/WEB-INF/views/home.jsp").forward(request,response);
			}
				
		} catch (URISyntaxException | SQLException e) {
			
			e.printStackTrace();
	
		}
		
	}
}
