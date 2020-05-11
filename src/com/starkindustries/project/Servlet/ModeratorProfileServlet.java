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

import com.starkindustries.project.Moderator;
import com.starkindustries.project.StarkDatabase;


@WebServlet("/moderatorProfile")
public class ModeratorProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ModeratorProfileServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String username = request.getParameter("username");
    	request.setAttribute("loggedInUser", username);
		request.getRequestDispatcher("/WEB-INF/views/moderatorProfile.jsp").forward(request, response);
	}
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String currentPw = request.getParameter("currentPassword");
    	String newPw = request.getParameter("newPassword");
    	String username = request.getParameter("username");
    	
    	//get userpassword
    	StarkDatabase db = new StarkDatabase();
    	try {
    		Connection conn = db.getConn();
			Moderator m = Moderator.getModerator(db.getResultByUserId("moderator", username, conn));
			if(m.getPassword().equals(currentPw)) {
				request.setAttribute("pwChangedSuccess",db.changePassword("moderator", username, newPw, conn));
				request.setAttribute("loggedInUser", username);
				
			}else {
				request.setAttribute("isPwChanged",false);
				request.setAttribute("loggedInUser", username);
			}
			conn.close();
		} catch (SQLException | URISyntaxException e) {
			
			e.printStackTrace();
		}
    	request.getRequestDispatcher("/WEB-INF/views/moderatorProfile.jsp").forward(request, response);
    	
    }
    

}
