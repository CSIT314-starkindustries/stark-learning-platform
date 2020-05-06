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


@WebServlet("/suspendServlet")
public class SuspendServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public SuspendServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		StarkDatabase db = new StarkDatabase();
		

		try {
			Connection conn = db.getConn();
			db.studentSuspendToggle(username, db.getConn());
			conn.close();
		} catch (SQLException | URISyntaxException e) {
			
			e.printStackTrace();
		}
		
	}
}
