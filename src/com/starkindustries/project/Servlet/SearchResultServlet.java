package com.starkindustries.project.Servlet;

import java.io.IOException;
import java.net.URISyntaxException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.starkindustries.project.Answer;
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
    			Connection conn = db.getConn();
    			List<Question> qSearchResults = Question.getAllQuestionList(db.searchQuestion(searchQuery, conn));
    			List<Answer> aSearchResults = Answer.getAllAnswerList(db.searchAnswer(searchQuery, conn));
    			if (aSearchResults.size() > 0) {
    				qSearchResults.addAll(Question.getAllQuestionList(db.searchAnswerQuestion(aSearchResults, conn)));
    				Set<Question> qSet = new LinkedHashSet<>(qSearchResults);
        			qSearchResults.clear();
        			qSearchResults.addAll(qSet);
    			}
    			
    			request.setAttribute("searchResults", qSearchResults);
        	} catch (SQLException | URISyntaxException e) {
    			e.printStackTrace();
    		}
    	}
    	
    	
    	request.getRequestDispatcher("/WEB-INF/views/searchResult.jsp").forward(request, response);
	}

}