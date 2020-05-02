<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Search Result</title>
		<link rel="stylesheet" href="/StarkLearningApp/css/bootstrap.min.css">
		<link rel="stylesheet" href="/StarkLearningApp/css/bootstrap.css">
		<link rel="stylesheet" href="/StarkLearningApp/css/all.css"> 
		<link rel="stylesheet" href="/StarkLearningApp/css/searchResult.css">		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script type="text/javascript" src="/StarkLearningApp/js/searchResult.js"></script>
		
	</head>
	
	<body>
		<!-- Start of Page Container -->
		<div class="pageCon">
		
			<!-- Start of Navbar -->			
			<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
				<a class="navbar-brand" href="studentHome">Stark Industries</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
				  <span class="navbar-toggler-icon"></span>
				</button>
			
				<div class="navbar-nav navbar-collapse collapse row" id="navbarColor01">
					<div class="nav-item col-sm-2"></div>
					<div class="nav-item col-sm-6">
						<form class="form-inline my-2 my-lg-0 mx-auto" id="searchForm" action="searchResult" method="GET">
							<input class="form-control mr-sm-2 w-75" name="search_param" type="text" placeholder="Search" style="form-control: width: 100%;">
						  	<button type="submit" class="btn btn-secondary my-2 my-sm-0" id="searchBtn">Search</button>
						</form>
					</div>
					<div class="nav-item col-sm-4 text-sm-left text-md-right text-lg-right">
						<div class="dropdown" role="group">
							<button id="userSettingToggleBtn" type="button" class="btn btn-link dropdown-toggle" data-toggle="dropdown">UserXXX</button>
						    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userSettingToggleBtn">
						      	<a class="dropdown-item" href="studentProfile" id="userProfileLink">
						      		<span class="mr-3"><i class="fas fa-user-cog"></i></span>View Profile
						      	</a>
						      	<a class="dropdown-item" href="studentHome" id="studentHomeLink">
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
				<div class="row" style="background: #F2F2F2;">
					<div class="d-flex w-100 mt-2">
						<div class="col-md-12 d-flex align-items-center justify-content-start">
							<small>
								<a href="studentHome" style="color: #588da8;"><i class="far fa-hand-point-left mr-1"></i>Back to Forum</a>
							</small>
						</div>
					</div>
				</div>
			
				<div class="row" style="padding-top: 1%; padding-bottom: 2%; background: #F2F2F2;">
					<!-- Header -->
					<div class="col-sm-8 text-left">
						<h4><b>Search Results:</b> 
							<span style="font-size: 18px;"><%= request.getParameter("search_param")%></span>
						</h4>
					</div>					
					
					<div class="col-sm-4 d-flex align-items-center justify-content-center" style="margin-right: 0;">
						<div class="col-sm-7"></div>
						<div class="col-sm-5 text-right">
							<button type="button" class="btn btn-primary btn-block" data-toggle="modal" data-target="#askQns_modal">
								<span style="padding-right: 10%;"><i class="far fa-question-circle"></i></span>Ask Question
							</button>
						</div>
					</div>
				</div>
				
				<div class="row">
					<!-- Search Results Table -->
					<table class="table table-hover text-center table-responsive-md">
					  	<thead>
					    	<tr class="d-flex">
					      		<th scope="col" class="col-5">
					      			Questions
					      			<span style="padding-left: 2%;"><i class="far fa-question-circle"></i></span>
					      		</th>
					      		<th scope="col" class="col-2">
					      			Asked By
					      			<span style="padding-left: 2%;"><i class="far fa-user-circle"></i></span>
					      		</th>
					      		<th scope="col" class="col-3">
					      			Question Votes
					      			<span style="padding-left: 2%;"><i class="far fa-thumbs-up"></i></span>
					      		</th>
					      		<th scope="col" class="col-2">
					      			Date Posted
					      			<span style="padding-left: 2%;"><i class="far fa-calendar"></i></span>
					      		</th>
					    	</tr>
					  	</thead>
					  	<tbody>
					    	<tr class="d-flex" id="searchResultTableRow">
					      		<td class="col-5 text-left" id="qnsIdCol">
					      			<a href="viewQuestion"  style="color: #065590;" id="qnsId">
					      				Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
					      			</a>
					      		</td>
					      		<td class="col-2 text-center" id="userIdCol">
					      			<a href="viewStudentProfile" id="userId">User121</a>
					      		</td>
					      		<td class="col-3 text-center" id="voteCountCol">0</td>
					      		<td class="col-2 text-center" id="datePostedCol">27/04/2020</td>									      		
					    	</tr>
						</tbody>
					</table>
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