package com.starkindustries.project.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/monthlyReport")
public class MonthlyReportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public MonthlyReportServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/views/monthlyReport.jsp").forward(request, response);
	}

}
