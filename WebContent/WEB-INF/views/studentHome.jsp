<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Student Home</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/all.css"> 
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/studentHome.css">		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/studentHome.js"></script>
	</head>
	
	<body>
		<!-- Start of Page Container -->
		<div class="pageCon">
		
			<!-- Start of Navbar -->			
			<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
				<a class="navbar-brand" href="home">Stark Industries</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
				  <span class="navbar-toggler-icon"></span>
				</button>
			
				<div class="navbar-nav navbar-collapse collapse row" id="navbarColor01">
					<div class="nav-item col-sm-2"></div>
					<div class="nav-item col-sm-6">
						<form class="form-inline my-2 my-lg-0 mx-auto">
							<input class="form-control mr-sm-2 w-75" type="text" placeholder="Search" style="form-control: width: 100%;">
						  	<button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
						</form>
					</div>
					<div class="nav-item col-sm-4 text-sm-left text-md-right text-lg-right">
						<div class="dropdown" role="group">
							<button id="userSettingToggleBtn" type="button" class="btn btn-link dropdown-toggle" data-toggle="dropdown">${loggedInUser}</button>
						    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userSettingToggleBtn">
						    
						      	<a class="dropdown-item" href="/studentProfileServlet?username=${loggedInUser}" id="userProfileLink">
						      		<span class="mr-3"><i class="fas fa-user-cog"></i></span>View Profile
						      	</a>
						      	<a class="dropdown-item" href="/studentHome?username=${loggedInUser}" id="studentHomeLink">
						      		<span class="mr-3"><i class="fas fa-chalkboard"></i></span>My Forum
						      	</a>
						      	<a class="dropdown-item" href="home" id="logoutLink">
						      		<span class="mr-3"><i class="fas fa-sign-out-alt"></i></span>Logout
						      	</a>
						      	
							</div>
						</div>
					</div>
					<div class="nav-item col-sm-4 d-sm-block d-md-none">
		                <div class="dropdown">
			                <button class="btn btn-link dropdown-toggle" id="smallerscreenmenu" data-toggle="dropdown">View Options</button>
			                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="smallerscreenmenu">
			                    <a class="dropdown-item" href="#">Most Recent Questions</a>
			                    <a class="dropdown-item" href="#">All Questions</a>
			          	        <a class="dropdown-item" href="#">My Questions</a>
			                    <a class="dropdown-item" href="#">My Answers</a>
			                    <a class="dropdown-item" href="#">My Comments</a>
			                </div>
		                </div>
		            </div>
			    </div>
			</nav>
			<!-- End of Navbar -->			
			
			<!-- Start of Contents -->
			<div class="container-fluid">
				<div class="row">
					<div class="sidebar-container col-sm-2 d-none d-md-block">
						<div class="list-group">
							<div class="list-group-item sidebar-separator-title text-muted d-flex w-100 align-items-center justify-content-center" style="background-color: #ebf7f6; height: 35px;">
			                  <small class="font-weight-bold">GENERAL</small>
			               	</div>
				            <a href="#mostRecentQnsTab" class="list-group-item list-group-item-action flex-column active" id="mostRecentQnsTab" data-toggle="tab" data-target="#mostRecentQnsPane">
				                <div class="d-flex w-100 justify-content-center align-items-center">
				                	<span class="mr-3"><i class="fas fa-fist-raised"></i></span>
				                    <span>Most Recent<br>Questions</span>
				                </div>
				            </a>
				            <a href="#allQnsTab" class="list-group-item list-group-item-action flex-column"  id="allQnsTab" data-toggle="tab" data-target="#allQnsPane">
				                <div class="d-flex w-100 justify-content-center align-items-center">
				                    <span class="mr-3"><i class="fas fa-question-circle"></i></span>
				                    <span>All Questions</span>
				                </div>
				            </a>
				            <div class="list-group-item sidebar-separator-title text-muted d-flex w-100 align-items-center justify-content-center" style="background-color: #ebf7f6; height: 35px;">
			                  <small class="font-weight-bold">PERSONAL</small>
			               	</div>
			               	
				            <a href="/viewMyPostServlet?postType=questions&username=${loggedInUser}" class="list-group-item list-group-item-action flex-column" id="myQnsTab" data-toggle="tab" data-target="#myQnsPane">
				                <div class="d-flex w-100 justify-content-center align-items-center">
				                    <span class="mr-3"><i class="far fa-question-circle"></i></span>
				                    <span>My Questions</span>
				                </div>
				            </a>				            
				            <a href="#myAnsTab" class="list-group-item list-group-item-action flex-column" id="myAnsTab" data-toggle="tab" data-target="#myAnsPane">
				                <div class="d-flex w-100 justify-content-center align-items-center">
				                    <span class="mr-3"><i class="fas fa-hands-helping"></i></span>
				                    <span style="padding-right: 15px;">My Answers</span>
				                </div>
				            </a>
				            <a href="#myCommentsTab" class="list-group-item list-group-item-action flex-column" id="myCommentsTab" data-toggle="tab" data-target="#myCommentsPane">
				                <div class="d-flex w-100 justify-content-center align-items-center">
				                    <span class="mr-3"><i class="fas fa-comment"></i></span>
				                    <span>My Comments</span>
				                </div>
				            </a>
						</div>
					</div>
					
					<!-- Tab Contents Container-->
					<div class="col">			
						
						<!-- Tab Panes -->
						<div id="myTabContent" class="tab-content">	
								
							<!-- Most Recent Question Pane -->
							<div class="tab-pane fade show active" id="mostRecentQnsPane">
								<div class="row" style="padding-top: 2%; padding-bottom: 2%; background: #F2F2F2;">
									<!-- Header -->
									<div class="col-sm-4 text-left">
										<h4>Most Recent Questions</h4>
									</div>
									<div class="col-sm-4 mx-auto">
										<form>
											<fieldset>
												<div class="form-group row">											
										    		<label for="sortSelect" class="col-form-label col-sm-3 text-center" style="font-weight: bold;">Sort By</label>
												    <div class="col-sm-8 text-left">
												      	<select class="form-control" id="sortSelect">
												        	<option>A - Z</option>
												        	<option>Z - A</option>
												    	</select>
												    </div>
												</div>										      	
											</fieldset>
										</form>
									</div>
									<div class="col-sm-4 d-flex align-items-center justify-content-center">
										<div class="col-sm-6"></div>
										<div class="col text-right">
											<button type="button" class="btn btn-primary btn-block mb-2" data-toggle="modal" data-target="#askQns_modal">
												<span style="padding-right: 10%;"><i class="far fa-question-circle"></i></span>Ask Question
											</button>
										</div>
									</div>
								</div>
								
								<div class="row">
									<!-- Most Recent Qns Table -->
									<table class="table table-hover text-center table-responsive-md">
									  	<thead>
									    	<tr class="d-flex">
									      		<th scope="col" class="col-4">
									      			Questions
									      			<span style="padding-left: 2%;"><i class="far fa-question-circle"></i></span>
									      		</th>
									      		<th scope="col" class="col-2">
									      			Asked By
									      			<span style="padding-left: 2%;"><i class="far fa-user-circle"></i></span>
									      		</th>
									      		<th scope="col" class="col-2">
									      			Question Votes
									      			<span style="padding-left: 2%;"><i class="far fa-thumbs-up"></i></span>
									      		</th>
									      		<th scope="col" class="col-2">
									      			Answers
									      			<span style="padding-left: 2%;"><i class="far fa-comment-alt"></i></span>
									      		</th>
									      		<th scope="col" class="col-2">
									      			Views
									      			<span style="padding-left: 2%;"><i class="far fa-eye"></i></span>
									      		</th>									      		
									    	</tr>
									  	</thead>
									  	<tbody>
									    	<tr class="d-flex" id="mostRecentQnsTableRow">
									      		<td class="col-4 text-left" id="qnsIdCol">
									      			<a href="viewQuestion" style="color: #065590;" id="qnsId">
									      				Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
									      			</a>
									      		</td>
									      		<td class="col-2 text-center" id="userIdCol">
									      			<a href="viewStudentProfile" id="userIdProfile">User123</a>
									      		</td>
									      		<td class="col-2 text-center" id="qnsVoteCountCol">0</td>
									      		<td class="col-2 text-center" id="ansCountCol">0</td>
									      		<td class="col-2 text-center" id="viewCountCol">0</td>
									    	</tr>
										</tbody>
									</table>
								</div>			
						  	</div>		
						  	
						  	<!-- All Questions Pane -->
						  	<div class="tab-pane fade" id="allQnsPane" style="padding-bottom: 3%;">
								<div class="row" style="padding-top: 2%; padding-bottom: 2%; background: #F2F2F2;">
									<!-- Header -->
									<div class="col-sm-4 text-left">
										<h4>All Questions</h4>
									</div>
									<div class="col-sm-4 mx-auto">
										<form>
											<fieldset>
												<div class="form-group row">											
										    		<label for="sortSelect" class="col-form-label col-sm-3 text-center" style="font-weight: bold;">Sort By</label>
												    <div class="col-sm-8 text-left">
												      	<select class="form-control" id="sortSelect">
												        	<option>A - Z</option>
												        	<option>Z - A</option>
												    	</select>
												    </div>
												</div>										      	
											</fieldset>
										</form>
									</div>
									<div class="col-sm-4 d-flex align-items-center justify-content-center">
										<div class="col-sm-6"></div>
										<div class="col text-right">
											<button type="button" class="btn btn-primary btn-block mb-2" data-toggle="modal" data-target="#askQns_modal">
												<span style="padding-right: 10%;"><i class="far fa-question-circle"></i></span>Ask Question
											</button>
										</div>
									</div>
								</div>
								
								<div class="row">
									<!-- All Qns Table -->
									<table class="table table-hover text-center table-responsive-md">
									  	<thead>
									    	<tr class="d-flex">
									      		<th scope="col" class="col-4">
									      			Questions
									      			<span style="padding-left: 2%;"><i class="far fa-question-circle"></i></span>
									      		</th>
									      		<th scope="col" class="col-2">
									      			Asked By
									      			<span style="padding-left: 2%;"><i class="far fa-user-circle"></i></span>
									      		</th>
									      		<th scope="col" class="col-2">
									      			Question Votes
									      			<span style="padding-left: 2%;"><i class="far fa-thumbs-up"></i></span>
									      		</th>
									      		<th scope="col" class="col-2">
									      			Answers
									      			<span style="padding-left: 2%;"><i class="far fa-comment-alt"></i></span>
									      		</th>
									      		<th scope="col" class="col-2">
									      			Views
									      			<span style="padding-left: 2%;"><i class="far fa-eye"></i></span>
									      		</th>													      		
									    	</tr>
									  	</thead>
									  	<tbody>
									    	<tr class="d-flex" id="allQnsTableRow">
									      		<td class="col-4 text-left" id="qnsIdCol">
									      			<a href="viewQuestion" style="color: #065590;" id="qnsId">
									      				Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
									      			</a>
									      		</td>								      		
									      		<td class="col-2 text-center" id="userIdCol">
									      			<a href="viewStudentProfile" id="userIdProfile">User111</a>
									      		</td>
									      		<td class="col-2 text-center" id="qnsVoteCountCol">3</td>
									      		<td class="col-2 text-center" id="ansCountCol">2</td>
									      		<td class="col-2 text-center" id="viewCountCol">10</td>
									    	</tr>
										</tbody>
									</table>
								</div>															
						  	</div>			  	
						  	
						  	<!-- My Questions Pane -->
						  	<div class="tab-pane fade" id="myQnsPane" style="padding-bottom: 3%;">
								<div class="row" style="padding-top: 2%; padding-bottom: 2%; background: #F2F2F2;">
									<!-- Header -->
									<div class="col-sm-4 text-left">
										<h4>My Questions</h4>
									</div>
									<div class="col-sm-4 mx-auto">
										<form>
											<fieldset>
												<div class="form-group row">											
										    		<label for="sortSelect" class="col-form-label col-sm-3 text-center" style="font-weight: bold;">Sort By</label>
												    <div class="col-sm-8 text-left">
												      	<select class="form-control" id="sortSelect">
												        	<option>A - Z</option>
												        	<option>Z - A</option>
												    	</select>
												    </div>
												</div>										      	
											</fieldset>
										</form>
									</div>
									<div class="col-sm-4 d-flex align-items-center justify-content-center">
										<div class="col-sm-6"></div>
										<div class="col text-right">
											<button type="button" class="btn btn-primary btn-block mb-2" data-toggle="modal" data-target="#askQns_modal">
												<span style="padding-right: 10%;"><i class="far fa-question-circle"></i></span>Ask Question
											</button>
										</div>
									</div>
								</div>
								
								<div class="row">
									<!-- My Qns Table -->
									<table class="table table-hover text-center table-responsive-md">
									  	<thead>
									    	<tr class="d-flex">
									      		<th scope="col" class="col-4">
									      			My Questions
									      			<span style="padding-left: 2%;"><i class="far fa-question-circle"></i></span>
									      		</th>
									      		<th scope="col" class="col-2">
									      			My Question Votes
									      			<span style="padding-left: 2%;"><i class="far fa-thumbs-up"></i></span>
									      		</th>
									      		<th scope="col" class="col-2">
									      			Answers
									      			<span style="padding-left: 2%;"><i class="far fa-comment-alt"></i></span>
									      		</th>
									      		<th scope="col" class="col-2">
									      			Views
									      			<span style="padding-left: 2%;"><i class="far fa-eye"></i></span>
									      		</th>
									      		<th scope="col" class="col-2">
									      			My Question Comments
									      			<span style="padding-left: 2%;"><i class="far fa-comments"></i></span>
									      		</th>									      											      		
									    	</tr>
									  	</thead>
									  	<tbody>
									  	
									  		<c:forEach items="${myQuestionList}" var="user" varStatus="loop">
									  	
										  		<!-- For each loop here. pass in question list here -->
										    	<tr class="d-flex" id="myQnsTableRow">
										      		<td class="col-4 text-left" id="qnsIdCol">
														<a href="viewQuestion" style="color: #065590;" id="qnsId">
										      				${user.title}
										      			</a>									      		
										      		</td>
										      		<td class="col-2 text-center" id="qnsVoteCountCol">${user.total_votes}</td>
										      		<td class="col-2 text-center" id="ansCountCol">0</td>
										      		<td class="col-2 text-center" id="viewCountCol">20</td>
										      		<td class="col-2 text-center" id="qnsCommentCountCol">0</td>
										    	</tr>
										    	
										    	<!-- End For each loop-->	  
									    	</c:forEach>
									    	 	
										</tbody>
									</table>
								</div>															
						  	</div>
						  	
						  	<!-- My Answers Pane -->
						  	<div class="tab-pane fade" id="myAnsPane" style="padding-bottom: 3%;">
								<div class="row" style="padding-top: 2%; padding-bottom: 2%; background: #F2F2F2;">
									<!-- Header -->
									<div class="col-sm-4 text-left">
										<h4>My Answers</h4>
									</div>
									<div class="col-sm-4 mx-auto">
										<form>
											<fieldset>
												<div class="form-group row">											
										    		<label for="sortSelect" class="col-form-label col-sm-3 text-center" style="font-weight: bold;">Sort By</label>
												    <div class="col-sm-8 text-left">
												      	<select class="form-control" id="sortSelect">
												        	<option>A - Z</option>
												        	<option>Z - A</option>
												    	</select>
												    </div>
												</div>										      	
											</fieldset>
										</form>
									</div>
									<div class="col-sm-4 d-flex align-items-center justify-content-center">
										<div class="col-sm-6"></div>
										<div class="col text-right">
											<button type="button" class="btn btn-primary btn-block mb-2" data-toggle="modal" data-target="#askQns_modal">
												<span style="padding-right: 10%;"><i class="far fa-question-circle"></i></span>Ask Question
											</button>
										</div>
									</div>
								</div>
								
								<div class="row">
									<!-- My Ans Table -->
									<table class="table table-hover text-center table-responsive-md">
									  	<thead>
									    	<tr class="d-flex">
									      		<th scope="col" class="col-3">
									      			Questions
									      			<span style="padding-left: 2%;"><i class="far fa-question-circle"></i></span>
									      		</th>
									      		<th scope="col" class="col-2">
									      			Asked By
									      			<span style="padding-left: 2%;"><i class="far fa-user-circle"></i></span>
									      		</th>
									      		<th scope="col" class="col-1">
									      			Views
									      			<span style="padding-left: 2%;"><i class="far fa-eye"></i></span>
									      		</th>
									      		<th scope="col" class="col-2">
									      			My Answers
									      			<span style="padding-left: 2%;"><i class="far fa-comment-alt"></i></span>
									      		</th>
									      		<th scope="col" class="col-2">
									      			My Answer Votes
									      			<span style="padding-left: 2%;"><i class="far fa-thumbs-up"></i></span>
									      		</th>
									      		<th scope="col" class="col-2">
									      			My Answer Comments
									      			<span style="padding-left: 2%;"><i class="far fa-comments"></i></span>
									      		</th>
									    	</tr>
									  	</thead>
									  	<tbody>
									    	<tr class="d-flex" id="myAnsTableRow">
									      		<td class="col-3 text-left" id="qnsIdCol">
													<a href="viewQuestion" style="color: #065590;" id="qnsId">
									      				Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
									      			</a>									      		
									      		</td>
									      		<td class="col-2 text-center" id="userIdCol">
									      			<a href="viewStudentProfile" id="userIdProfile">User122</a>
									      		</td>
									      		<td class="col-1 text-center" id="viewCountCol">4</td>
									      		<td class="col-2 text-center" id="viewMyAnsCol">
									      			<a href="#" id="viewMyAns" data-toggle="modal" data-target="#viewMyAns_modal">View My Answer</a>
									      		</td>
									      		<td class="col-2 text-center" id="ansVoteCountCol">3</td>
									      		<td class="col-2 text-center" id="ansCommentCountCol">0</td>
									    	</tr>
										</tbody>
									</table>
								</div>															
						  	</div>
						  	
						  	<!-- My Comments Pane -->
						  	<div class="tab-pane fade" id="myCommentsPane" style="padding-bottom: 3%;">
								<div class="row" style="padding-top: 2%; padding-bottom: 2%; background: #F2F2F2;">
									<!-- Header -->
									<div class="col-sm-4 text-left">
										<h4>My Comments</h4>
									</div>
									<div class="col-sm-4 mx-auto">
										<form>
											<fieldset>
												<div class="form-group row">											
										    		<label for="sortSelect" class="col-form-label col-sm-3 text-center" style="font-weight: bold;">Sort By</label>
												    <div class="col-sm-8 text-left">
												      	<select class="form-control" id="sortSelect">
												        	<option>A - Z</option>
												        	<option>Z - A</option>
												    	</select>
												    </div>
												</div>										      	
											</fieldset>
										</form>
									</div>
									<div class="col-sm-4 d-flex align-items-center justify-content-center">
										<div class="col-sm-6"></div>
										<div class="col text-right">
											<button type="button" class="btn btn-primary btn-block mb-2" data-toggle="modal" data-target="#askQns_modal">
												<span style="padding-right: 10%;"><i class="far fa-question-circle"></i></span>Ask Question
											</button>
										</div>
									</div>
								</div>
								
								<div class="row">
									<!-- My Comments Table -->
									<table class="table table-hover text-center table-responsive-md">
									  	<thead>
									    	<tr class="d-flex">
									      		<th scope="col" class="col-4">
									      			Questions
									      			<span style="padding-left: 2%;"><i class="far fa-question-circle"></i></span>
									      		</th>
									      		<th scope="col" class="col-2">
									      			Asked By
									      			<span style="padding-left: 2%;"><i class="far fa-user-circle"></i></span>
									      		</th>
									      		<th scope="col" class="col-1">
									      			Votes
									      			<span style="padding-left: 2%;"><i class="far fa-thumbs-up"></i></span>
									      		</th>
									      		<th scope="col" class="col-2">
									      			Answers
									      			<span style="padding-left: 2%;"><i class="far fa-comment-alt"></i></span>
									      		</th>
									      		<th scope="col" class="col-1">
									      			Views
									      			<span style="padding-left: 2%;"><i class="far fa-eye"></i></span>
									      		</th>									      		
									      		<th scope="col" class="col-2">
									      			My Comments
									      			<span style="padding-left: 2%;"><i class="far fa-comment"></i></span>
									      		</th>
									    	</tr>
									  	</thead>
									  	<tbody>
									    	<tr class="d-flex" id="myCommentsTableRow">
									      		<td class="col-4 text-left" id="qnsIdCol">
									      			<a href="viewQuestion"  style="color: #065590;" id="qnsId">
									      				Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
									      			</a>
									      		</td>
									      		<td class="col-2 text-center" id="userIdCol">
									      			<a href="viewStudentProfile" id="userId">User121</a>
									      		</td>
									      		<td class="col-1 text-center" id="voteCountCol">0</td>
									      		<td class="col-2 text-center" id="ansCountCol">1</td>	
									      		<td class="col-1 text-center" id="viewCountCol">1</td>
									      		<td class="col-2 text-center" id="viewMyCommentCol">								      										      		
													<a href="#" id="viewMyComment" data-toggle="modal" data-target="#viewMyComment_modal">View My Comments</a>
												</td>									      		
									    	</tr>
										</tbody>
									</table>
								</div>															
						  	</div>						  	
					  	</div>
						<!-- End of Tab Panes -->						
					</div>					
					<!-- End of Tab Contents Container -->
				</div>
				
				
				<!-- Ask Qns Modal -->
				<div class="modal fade" id="askQns_modal" tabindex="-1" role="dialog" aria-labelledby="modal" aria-hidden="true">
					<div class="modal-dialog modal-dialog-centered modal-lg" role="document">
					    <div class="modal-content">
					      	<div class="modal-header text-center">
						        <h4 class="modal-title w-100">Ask A Question</h4>
						        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
						          <span aria-hidden="true">&times;</span>
						        </button>
					      	</div>
					      	<div class="modal-body mx-3">
					      		<form id="askQnsForm" class="needs-validation" novalidate>
		 							<fieldset>
		 								<div class="form-group row">
		 									<div class="col-sm-1"></div>
		 									<div class="col-sm-10">
		 										<label for="qnsTitle"><b>Title</b></label>
										      	<input type="text" class="form-control" id="qnsTitle" aria-describedby="qnsTitleHelp" placeholder="Enter title" contenteditable="true">
										      	<small id="qnsTitleHelp" class="form-text text-muted">Be specific</small>		 										
		 									</div>
										    <div class="col-sm-1"></div>	
										</div>
										<div class="form-group row">
		 									<div class="col-sm-1"></div>
										    <div class="col-sm-10">
										    	<label for="qnsBody"><b>Body</b></label>
      											<textarea class="form-control" id="qnsBody" aria-describedby="qnsBodyHelp" rows="10" contenteditable="true" style="resize: none;"></textarea>
										    	<small id="qnsBodyHelp" class="form-text text-muted">Describe in detail and include all information related to your question</small>	
										    </div>
											<div class="col-sm-1"></div>			
										</div>
										
										<div class="modal-footer" style="text-align: center;">
								        	<button type="submit" class="btn btn-primary mr-auto" id="#postQnsBtn" style="margin: auto; display: block;">Post Question</button>			        	
								    	</div>
		 							</fieldset>
		 						</form>
							</div>					    	
					    </div>
					</div>
				</div>

				
				<!-- View My Answer Modal -->
				<div class="modal fade" id="viewMyAns_modal" tabindex="-1" role="dialog" aria-labelledby="modal" aria-hidden="true">
					<div class="modal-dialog modal-dialog-centered modal-lg" role="document">
					    <div class="modal-content">
					      	<div class="modal-header text-center">
						        <h4 class="modal-title w-100">My Answer</h4>
						        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
						          <span aria-hidden="true">&times;</span>
						        </button>
					      	</div>
					      	<div class="modal-body mx-3">
					      		<form id="viewMyAnsForm">
		 							<fieldset>
		 								<div class="form-group row">
		 									<div class="col-sm-1"></div>
										    <div class="col-sm-10">
										    	<label for="qnsIdText"><b>Question:</b></label>
      											<textarea class="form-control text-left" id="qnsIdText" rows="5" readonly style="resize: none;">Qns answered by the student will be displayed here</textarea>
										    </div>
											<div class="col-sm-1"></div>			
										</div>
		 								<div class="form-group row">
		 									<div class="col-sm-1"></div>
										    <div class="col-sm-10">
										    	<label for="myAnsText"><b>My Answer:</b></label>
      											<textarea class="form-control text-left" id="myAnsText" rows="10" readonly style="resize: none;">Ans posted by the student will be displayed here</textarea>
										    </div>
											<div class="col-sm-1"></div>			
										</div>
		 							</fieldset>
		 						</form>
							</div>
					    	<div class="modal-footer" style="text-align: center;">
					        	<button type="button" class="btn btn-secondary mr-auto" data-dismiss="modal"  style="margin: auto; display: block;">Close</button>			        	
					    	</div>
					    </div>
					</div>
				</div>
				
				
				<!-- View My Comment Modal -->
				<div class="modal fade" id="viewMyComment_modal" tabindex="-1" role="dialog" aria-labelledby="modal" aria-hidden="true">
					<div class="modal-dialog modal-dialog-centered modal-lg modal-dialog-scrollable" role="document">
					    <div class="modal-content">
					      	<div class="modal-header text-center">
						        <h4 class="modal-title w-100">My Comments</h4>
						        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
						          <span aria-hidden="true">&times;</span>
						        </button>
					      	</div>
					      	<div class="modal-body mx-3">
					      		<!-- Container for My Comments for Questions -->
					      		<div class="container-fluid" style="padding-bottom: 5%;">		
					      			<h5><b>My Comments for Questions</b></h5>		      			
			 						<div class="list-group myCommentsQnsCon">
									  	<a href="viewQuestion" id="viewQnsId_QnsComment" class="list-group-item list-group-item-action flex-column align-items-start" style="background: #F2F2F2;">
									    	<div class="d-flex justify-content-between">
									    		<div class="row">
									      			<h5 class="col-sm-10 mb-1" id="myCommentQnsTitle" style="color: #065590;"><b>Question Title....Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</b></h5>
									      			<small class="col-sm-2 text-right" id="qnsDate">22-4-2020</small>								    			
									    		</div>
									    	</div>
									    	<hr>
									    	<div class="myCommentQnsCon">
										    	<div class="row">
										    		<p id="myCommentId" class="col mb-1">My comment....Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>
										    	</div>
										    	<div class="row">
										    		<small class="col-sm-4 text-left">Date of comment:<span id="dateTimeOfMyComment" style="padding-left: 3%;">27-4-2020</span></small>									    		
										    	</div>
										    </div>									   
									  	</a>
									</div>
								</div>	
								
								<!-- Container for My Comments for Answers -->
					      		<div class="container-fluid" style="padding-bottom: 5%;">	
					      			<h5><b>My Comments for Answers</b></h5>			      			
			 						<div class="list-group myCommentsAnsCon">
									  	<a href="viewQuestion" id="viewQnsId_AnsComment" class="list-group-item list-group-item-action flex-column align-items-start" style="background: #F2F2F2;">
									    	<div class="d-flex justify-content-between">
									    		<div class="row">
									      			<h5 class="col-sm-10 mb-1" id="myCommentAnsTitle" style="color: #065590;"><b>Answer Title....Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</b></h5>
									      			<small class="col-sm-2 text-right" id="qnsDate">22-4-2020</small>
									    		</div>
									    	</div>
									    	<hr>
									    	<div class="myCommentAnsCon">
										    	<div class="row">
										    		<p id="myCommentId" class="col mb-1">My comment....Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>
										    	</div>
										    	<div class="row">
										    		<small class="col-sm-4 text-left">Date of comment:<span id="dateTimeOfMyComment" style="padding-left: 3%;">27-4-2020</span></small>									    		
										    	</div>
										    </div>
									  	</a>
									</div>
								</div>								
									
							</div>
					    	<div class="modal-footer" style="text-align: center;">
					        	<button type="button" class="btn btn-secondary mr-auto" data-dismiss="modal"  style="margin: auto; display: block;">Close</button>			        	
					    	</div>
					    </div>
					</div>
				</div>
				
			</div>
			<!-- End of Contents -->			
		</div>
		<!-- End of Page Container -->
		
		<!-- Start of Footer -->
		<div class="navbar navbar-dark bg-primary id="footer">
			<div class="container-fluid">
				<footer class="footer" style="min-width: 100%;">
					<div class="row ">
						<div class="col-sm-6" >
							<h6 style="color: white;">© 2020 Copyright Stark Industries</h6>
						</div>
						<div class="col-sm-6">
							<button type="button" onclick="scrollToTopFunction()" id="scrollToTopBtn">
						    	<i class="fas fa-arrow-alt-circle-up fa-2x"></i>
						    </button>
						</div>
				  	</div>
				</footer>
			</div>	
		</div>
		<!-- End of Footer -->

		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>      	
	
	</body>
</html>