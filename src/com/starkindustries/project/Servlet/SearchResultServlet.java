package com.starkindustries.project.Servlet;

import java.io.IOException;
import java.net.URISyntaxException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.starkindustries.project.Question;
import com.starkindustries.project.StarkDatabase;

/**
 * Servlet implementation class SearchResultServlet
 */
@WebServlet("/searchResult")
public class SearchResultServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SearchResultServlet() {
        super();

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String username = request.getParameter("username");
    	request.setAttribute("loggedInUser",username);
    	String searchQuery = request.getParameter("search_param");
    	StarkDatabase db = new StarkDatabase();
    	
    	System.out.println(username);
    	System.out.println(searchQuery);
    	if (searchQuery != null && !searchQuery.equalsIgnoreCase("")) {
    		try {    			
    			List<Question> searchResults = Question.getAllQuestionList(db.searchQuestion(searchQuery, db.getConn()));
    			request.setAttribute("searchResults", searchResults);
        	} catch (SQLException | URISyntaxException e) {
    			e.printStackTrace();
    		}
    	}
    	
    	
    	request.getRequestDispatcher("/WEB-INF/views/searchResult.jsp").forward(request, response);
	}

}