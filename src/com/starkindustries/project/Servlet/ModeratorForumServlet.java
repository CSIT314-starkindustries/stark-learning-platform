package com.starkindustries.project.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/moderatorForum")
public class ModeratorForumServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ModeratorForumServlet() {
        super();
        
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String username = request.getParameter("username");
    	request.setAttribute("loggedInUser", username);
		request.getRequestDispatcher("/WEB-INF/views/moderatorForum.jsp").forward(request, response);
	}
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	doGet(request,response);
    }

}
