<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Student Home</title>
		<link rel="stylesheet" href="/StarkLearningApp/css/bootstrap.min.css">
		<link rel="stylesheet" href="/StarkLearningApp/css/bootstrap.css">
		<link rel="stylesheet" href="/StarkLearningApp/css/all.css"> 
		<link rel="stylesheet" href="/StarkLearningApp/css/studentHome.css">		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script type="text/javascript" src="/StarkLearningApp/js/studentHome.js"></script>
	</head>
	
	<body>
		<!-- Start of Page Container -->
		<div class="pageCon">
		
			<!-- Start of Navbar -->			
			<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
				<a class="navbar-brand" href="#">Stark Industries</a>
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
							<button id="userSettingToggleBtn" type="button" class="btn btn-link dropdown-toggle" data-toggle="dropdown">UserXXX</button>
						    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userSettingToggleBtn">
						      	<a class="dropdown-item" href="#" id="userProfileLink">View Profile</a>
						      	<a class="dropdown-item" href="#" id="logoutLink">Logout</a>
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
				            <a href="#" class="list-group-item list-group-item-action flex-column active" data-toggle="tab" data-target="#mostRecentQnsPane">
				                <div class="d-flex w-100 justify-content-center align-items-center">
				                	<span class="mr-3"><i class="fas fa-fist-raised"></i></span>
				                    <span>Most Recent<br>Questions</span>
				                </div>
				            </a>
				            <a href="#" class="list-group-item list-group-item-action flex-column" data-toggle="tab" data-target="#allQnsPane">
				                <div class="d-flex w-100 justify-content-center align-items-center">
				                    <span class="mr-3"><i class="fas fa-question-circle"></i></span>
				                    <span>All Questions</span>
				                </div>
				            </a>
				            <div class="list-group-item sidebar-separator-title text-muted d-flex w-100 align-items-center justify-content-center" style="background-color: #ebf7f6; height: 35px;">
			                  <small class="font-weight-bold">PERSONAL</small>
			               	</div>
				            <a href="#" class="list-group-item list-group-item-action flex-column" data-toggle="tab" data-target="#myQnsPane">
				                <div class="d-flex w-100 justify-content-center align-items-center">
				                    <span class="mr-3"><i class="far fa-question-circle"></i></span>
				                    <span>My Questions</span>
				                </div>
				            </a>				            
				            <a href="#" class="list-group-item list-group-item-action flex-column" data-toggle="tab" data-target="#myAnsPane">
				                <div class="d-flex w-100 justify-content-center align-items-center">
				                    <span class="mr-3"><i class="fas fa-hands-helping"></i></span>
				                    <span style="padding-right: 15px;">My Answers</span>
				                </div>
				            </a>
				            <a href="#" class="list-group-item list-group-item-action flex-column" data-toggle="tab" data-target="#myCommentsPane">
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
							<div class="tab-pane fade active show" id="mostRecentQnsPane">
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
									<div class="col-sm-4 text-right">
										<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#askQns_modal">Ask Question</button>
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
									      			Votes
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
									      		<td class="col-4 text-left">
									      			<a href="#" style="color: #065590;">
									      				Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
									      			</a>
									      		</td>
									      		<td class="col-2 text-center">
									      			User123
									      		</td>
									      		<td class="col-2 text-center" id="ansCount">0</td>
									      		<td class="col-2 text-center" id="voteCount">0</td>
									      		<td class="col-2 text-center" id="viewCount">0</td>
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
									<div class="col-sm-4 text-right">
										<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#askQns_modal">Ask Question</button>
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
									      			Votes
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
									      		<td class="col-4 text-left">
									      			<a href="#" style="color: #065590;">
									      				Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
									      			</a>
									      		</td>								      		
									      		<td class="col-2 text-center">User111</td>
									      		<td class="col-2 text-center">3</td>
									      		<td class="col-2 text-center">2</td>
									      		<td class="col-2 text-center">10</td>
									    	</tr>
									    	<tr class="d-flex">
									      		<td class="col-4 text-left">
									      			<a href="#" style="color: #065590;">
									      				Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
									      			</a>
									      		</td>
									      		<td class="col-2 text-center">
									      			User123
									      		</td>
									      		<td class="col-2 text-center" id="ansCount">0</td>
									      		<td class="col-2 text-center" id="voteCount">0</td>
									      		<td class="col-2 text-center" id="viewCount">0</td>
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
									<div class="col-sm-4 text-right">
										<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#askQns_modal">Ask Question</button>
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
									      			Votes
									      			<span style="padding-left: 2%;"><i class="far fa-thumbs-up"></i></span>
									      		</th>
									      		<th scope="col" class="col-2">
									      			Answers
									      			<span style="padding-left: 2%;"><i class="far fa-comment-alt"></i></span>
									      		</th>
									      		<th scope="col" class="col-2">
									      			Comments
									      			<span style="padding-left: 2%;"><i class="far fa-comments"></i></span>
									      		</th>
									      		<th scope="col" class="col-2">
									      			Views
									      			<span style="padding-left: 2%;"><i class="far fa-eye"></i></span>
									      		</th>									      		
									    	</tr>
									  	</thead>
									  	<tbody>
									    	<tr class="d-flex" id="myQnsTableRow">
									      		<td class="col-4 text-left">
													<a href="#" style="color: #065590;">
									      				Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
									      			</a>									      		
									      		</td>
									      		<td class="col-2 text-center">0</td>
									      		<td class="col-2 text-center">
													<a href="#">View Answers</a>
												</td>
									      		<td class="col-2 text-center">
									      			<a href="#">View Comments for Question</a>
									      		</td>
									      		<td class="col-2 text-center">20</td>
									    	</tr>									    	
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
									<div class="col-sm-4 text-right">
										<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#askQns_modal">Ask Question</button>
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
									      		<th scope="col" class="col-3">
									      			My Answer
									      			<span style="padding-left: 2%;"><i class="far fa-comment-alt"></i></span>
									      		</th>
									      		<th scope="col" class="col-2">
									      			Votes
									      			<span style="padding-left: 2%;"><i class="far fa-thumbs-up"></i></span>
									      		</th>
									      		<th scope="col" class="col-2">
									      			Comments
									      			<span style="padding-left: 2%;"><i class="far fa-comments"></i></span>
									      		</th>
									    	</tr>
									  	</thead>
									  	<tbody>
									    	<tr class="d-flex" id="myAnsTableRow">
									      		<td class="col-3 text-left">
													<a href="#" style="color: #065590;">
									      				Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
									      			</a>									      		
									      		</td>
									      		<td class="col-2 text-center">User122</td>
									      		<td class="col-3 text-center">
									      			<a href="#">View My Answer</a>
									      		</td>
									      		<td class="col-2 text-center">3</td>
									      		<td class="col-2 text-center">
									      			<a href="#">View Comments</a>
									      		</td>
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
									<div class="col-sm-4 text-right">
										<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#askQns_modal">Ask Question</button>
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
									      		<th scope="col" class="col-2">
									      			My Comments
									      			<span style="padding-left: 2%;"><i class="far fa-comments"></i></span>
									      		</th>
									      		<th scope="col" class="col-2">
									      			Votes
									      			<span style="padding-left: 2%;"><i class="far fa-thumbs-up"></i></span>
									      		</th>
									      		<th scope="col" class="col-2">
									      			Answers
									      			<span style="padding-left: 2%;"><i class="far fa-comment-alt"></i></span>
									      		</th>
									    	</tr>
									  	</thead>
									  	<tbody>
									    	<tr class="d-flex" id="myCommentsTableRow">
									      		<td class="col-4 text-left">
									      			<a href="#"  style="color: #065590;">
									      				Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
									      			</a>
									      		</td>
									      		<td class="col-2 text-center">User121</td>
									      		<td class="col-2 text-center">
													<a href="#">View My Comments</a>
												</td>
									      		<td class="col-2 text-center">0</td>
									      		<td class="col-2 text-center">1</td>
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