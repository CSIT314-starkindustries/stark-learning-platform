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


@WebServlet("/resetPwServlet")
public class ResetPwServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ResetPwServlet() {
        super();
        
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userType = request.getParameter("usertype");
		String userName = request.getParameter("username");
		
		StarkDatabase db = new StarkDatabase();
		try {
			db.resetPassword(userType.toLowerCase(), userName, db.getConn());
		} catch (SQLException | URISyntaxException e) {
			e.printStackTrace();
		}
		
	}

}
