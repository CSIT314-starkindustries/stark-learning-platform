package com.starkindustries.project.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/participationRatings")
public class ParticipationRatingsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ParticipationRatingsServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/views/participationRatings.jsp").forward(request, response);
	}

}
