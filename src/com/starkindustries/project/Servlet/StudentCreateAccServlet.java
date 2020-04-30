package com.starkindustries.project.Servlet;

import java.io.IOException;
import java.net.URISyntaxException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.starkindustries.project.StarkDatabase;

/**
 * Servlet implementation class StudentCreateAccServlet
 */
@WebServlet("/studentCreateAccServlet")
public class StudentCreateAccServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public StudentCreateAccServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("regConfirmPassword");
		
		//check if username is taken
		StarkDatabase db = new StarkDatabase();
		try {
			if(db.createNewUser("student", username, password, db.getConn())) {
				request.setAttribute("created",true);
				request.setAttribute("username", username);
				request.getRequestDispatcher("/studentHome").forward(request,response);
			}else {
				request.setAttribute("created",false);
				request.getRequestDispatcher("/home").forward(request,response);
			}
			
		} catch (SQLException | URISyntaxException e) {
			e.printStackTrace();
		}
	}

}
