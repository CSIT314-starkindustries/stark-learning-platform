<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Welcome to Stark Industry</title>
		<link rel="stylesheet" href="/StarkLearningApp/css/bootstrap.min.css">
		<link rel="stylesheet" href="/StarkLearningApp/css/bootstrap.css">
		<link rel="stylesheet" href="/StarkLearningApp/css/all.css"> 
		<link rel="stylesheet" href="/StarkLearningApp/css/viewQuestion.css">		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script type="text/javascript" src="/StarkLearningApp/js/viewQuestion.js"></script>
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
				            <a href="#" class="list-group-item list-group-item-action flex-column">
				                <div class="d-flex w-100 justify-content-center align-items-center">
				                	<span class="mr-3"><i class="fas fa-fist-raised"></i></span>
				                    <span>Most Recent<br>Questions</span>
				                </div>
				            </a>
				            <a href="#" class="list-group-item list-group-item-action flex-column">
				                <div class="d-flex w-100 justify-content-center align-items-center">
				                    <span class="mr-3"><i class="fas fa-question-circle"></i></span>
				                    <span>All Questions</span>
				                </div>
				            </a>
				            <div class="list-group-item sidebar-separator-title text-muted d-flex w-100 align-items-center justify-content-center" style="background-color: #ebf7f6; height: 35px;">
			                  <small class="font-weight-bold">PERSONAL</small>
			               	</div>
				            <a href="#" class="list-group-item list-group-item-action flex-column">
				                <div class="d-flex w-100 justify-content-center align-items-center">
				                    <span class="mr-3"><i class="far fa-question-circle"></i></span>
				                    <span>My Questions</span>
				                </div>
				            </a>				            
				            <a href="#" class="list-group-item list-group-item-action flex-column">
				                <div class="d-flex w-100 justify-content-center align-items-center">
				                    <span class="mr-3"><i class="fas fa-hands-helping"></i></span>
				                    <span style="padding-right: 15px;">My Answers</span>
				                </div>
				            </a>
				            <a href="#" class="list-group-item list-group-item-action flex-column">
				                <div class="d-flex w-100 justify-content-center align-items-center">
				                    <span class="mr-3"><i class="fas fa-comment"></i></span>
				                    <span>My Comments</span>
				                </div>
				            </a>
						</div>
					</div>
					
					<div class="col-sm-10">
						<div class="container-fluid content-container">
							<div class="row" id="content-one">
								<div class="d-flex w-100">
									<div class="col-md-10 d-flex align-items-center justify-content-start">
										<h4 class="font-weight-bolder mr-auto">QUESTION TITLE... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</h4>
									</div>
									<div class="col-md-2">
										<div class="row">
											<div class="col-md-12 d-flex align-items-center justify-content-end mb-3">
												<button type="button" class="btn btn-outline-primary btn-block">Answer Question</button>
											</div>
											<div class="col-md-12 d-flex align-items-center justify-content-end">
												<button type="button" class="btn btn-outline-primary btn-block">Ask Question</button>
											</div>
										</div>
									</div>
								</div>
								<div class="d-flex w-100 align-items-center">
									<div class="col-md-3 d-flex justify-content-start">
										<div class="d-flex">
											<small class="font-weight-bold mr-auto p-2">DATE</small>
											<small class="text-muted p-2">24 April 2020</small>
										</div>
									</div>
									<div class="col-md-3 d-flex justify-content-start">
										<div class="d-flex">
											<small class="font-weight-bold mr-auto p-2">VIEWED</small>
											<small class="text-muted p-2">1 times</small>
										</div>									
									</div>
								</div>
							</div>
							<div class="row full-question" id="content-two">
								<div class="col-md-12 d-flex justify-content-start">
									<p class="mr-auto">
										FULL QUESTION... Lorem ipsum dolor sit amet, sapien etiam, nunc amet dolor ac odio mauris justo. 
										Luctus arcu, urna praesent at id quisque ac. Arcu es massa vestibulum malesuada, 
										integer vivamus elit eu mauris eus, cum eros quis aliquam wisi. 
										Nulla wisi laoreet suspendisse integer vivamus elit eu mauris hendrerit facilisi, 
										mi mattis pariatur aliquam pharetra eget.
									</p>
								</div>
								<div class="col-md-12 d-flex justify-content-start" id="content-two-bottom">
									<div class="d-flex justify-content-start align-items-center upvote-container">
										<button type="button" class="btn upvote" data-toggle="tooltip" title="This question is useful and clear"><i class="far fa-thumbs-up"></i></button>
										<span class="text-muted p-2">1</span>
									</div>
									<div class="d-flex justify-content-start align-items-center downvote-container">
										<button type="button" class="btn downvote" data-toggle="tooltip" title="This question is not useful and unclear"><i class="far fa-thumbs-down"></i></button>
										<span class="text-muted p-2">1</span>
									</div>									
									<div class="d-flex justify-content-end align-items-center ml-auto askedby-container">
										<small class="font-weight-bold ml-auto p-2">ASKED BY</small>
										<small class="text-muted p-2">123456</small>
									</div>
								</div>
								<div class="question-comment">
									<div class="col-md-12 d-flex justify-content-start">
										<p class="mr-auto mb-0"><small>
											QUESTION COMMENT... Lorem ipsum dolor sit amet, sapien etiam, nunc amet dolor ac odio mauris justo. 
											Luctus arcu, urna praesent at id quisque ac. Arcu es massa vestibulum malesuada, 
											integer vivamus elit eu mauris eus, cum eros quis aliquam wisi. 
											Nulla wisi laoreet suspendisse integer vivamus elit eu mauris hendrerit facilisi, 
											mi mattis pariatur aliquam pharetra eget.
										</small></p>
									</div>
									<blockquote class="col-md-12 d-flex justify-content-start">
										<footer class="blockquote-footer"><small>234567, <cite>25 April 2020</cite></small></footer>
									</blockquote>
									<hr style="margin-top: -0.4rem; margin-bottom: -0.1rem;">
								</div>
								<div class="col-md-12 d-flex justify-content-start">
									<small><a href="#"  data-toggle="tooltip" title="Avoid answering questions in comments">Add comment</a></small>
								</div>
							</div>
							<div class="row" id="content-three">
								<div class="col-md-12 d-flex justify-content-start">
									<p class="mr-auto">
										1 Answers
									</p>
								</div>
								<hr style="margin-top: -0.4rem;">
							</div>
							<div class="row question-answer" id="content-four">
								<div class="col-md-12 d-flex justify-content-start question-answer-container">
									<p class="mr-auto">
										ANSWER... Lorem ipsum dolor sit amet, sapien etiam, nunc amet dolor ac odio mauris justo. 
										Luctus arcu, urna praesent at id quisque ac. Arcu es massa vestibulum malesuada, 
										integer vivamus elit eu mauris eus, cum eros quis aliquam wisi. 
										Nulla wisi laoreet suspendisse integer vivamus elit eu mauris hendrerit facilisi, 
										mi mattis pariatur aliquam pharetra eget.
									</p>
								</div>
								<div class="col-md-12 d-flex justify-content-start" id="content-four-bottom">
									<div class="d-flex justify-content-start align-items-center upvote-container">
										<button type="button" class="btn upvote" data-toggle="tooltip" title="This answer is useful and clear"><i class="far fa-thumbs-up"></i></button>
										<span class="text-muted p-2">1</span>
									</div>
									<div class="d-flex justify-content-start align-items-center downvote-container">
										<button type="button" class="btn downvote" data-toggle="tooltip" title="This answer is not useful and unclear"><i class="far fa-thumbs-down"></i></button>
										<span class="text-muted p-2">1</span>
									</div>				
									<div class="d-flex justify-content-start align-items-center">
										<small class="p-2 ml-4"><a href="#" data-toggle="tooltip" title="Use comments to ask for more information or suggest improvement to the answer">Add comment</a></small>
									</div>					
									<div class="d-flex justify-content-end align-items-center ml-auto askedby-container">
										<small class="font-weight-bold ml-auto p-2">ANSWERED BY</small>
										<small class="text-muted p-2">345678</small>
									</div>
								</div>
								<div class="answer-comment">
									<div class="col-md-12 d-flex justify-content-start">
										<p class="mr-auto mb-0"><small>
											ANSWER COMMENT... Lorem ipsum dolor sit amet, sapien etiam, nunc amet dolor ac odio mauris justo. 
											Luctus arcu, urna praesent at id quisque ac. Arcu es massa vestibulum malesuada, 
											integer vivamus elit eu mauris eus, cum eros quis aliquam wisi. 
											Nulla wisi laoreet suspendisse integer vivamus elit eu mauris hendrerit facilisi, 
											mi mattis pariatur aliquam pharetra eget.
										</small></p>
									</div>
									<blockquote class="col-md-12 d-flex justify-content-start">
										<footer class="blockquote-footer"><small>234567, <cite>25 April 2020</cite></small></footer>
									</blockquote>
									<hr style="margin-top: -0.4rem;">
								</div>
								<div class="answer-comment">
									<div class="col-md-12 d-flex justify-content-start">
										<p class="mr-auto mb-0"><small>
											ANSWER COMMENT... Lorem ipsum dolor sit amet, sapien etiam, nunc amet dolor ac odio mauris justo. 
											Luctus arcu, urna praesent at id quisque ac. Arcu es massa vestibulum malesuada, 
											integer vivamus elit eu mauris eus, cum eros quis aliquam wisi. 
											Nulla wisi laoreet suspendisse integer vivamus elit eu mauris hendrerit facilisi, 
											mi mattis pariatur aliquam pharetra eget.
										</small></p>
									</div>
									<blockquote class="col-md-12 d-flex justify-content-start">
										<footer class="blockquote-footer"><small>234567, <cite>25 April 2020</cite></small></footer>
									</blockquote>
									<hr style="margin-top: -0.4rem;">
								</div>
							</div>
							<div class="row question-answer" id="content-four">
								<div class="col-md-12 d-flex justify-content-start question-answer-container">
									<p class="mr-auto">
										ANSWER... Lorem ipsum dolor sit amet, sapien etiam, nunc amet dolor ac odio mauris justo. 
										Luctus arcu, urna praesent at id quisque ac. Arcu es massa vestibulum malesuada, 
										integer vivamus elit eu mauris eus, cum eros quis aliquam wisi. 
										Nulla wisi laoreet suspendisse integer vivamus elit eu mauris hendrerit facilisi, 
										mi mattis pariatur aliquam pharetra eget.
									</p>
								</div>
								<div class="col-md-12 d-flex justify-content-start" id="content-four-bottom">
									<div class="d-flex justify-content-start align-items-center upvote-container">
										<button type="button" class="btn upvote" data-toggle="tooltip" title="This answer is useful and clear"><i class="far fa-thumbs-up"></i></button>
										<span class="text-muted p-2">1</span>
									</div>
									<div class="d-flex justify-content-start align-items-center downvote-container">
										<button type="button" class="btn downvote" data-toggle="tooltip" title="This answer is not useful and unclear"><i class="far fa-thumbs-down"></i></button>
										<span class="text-muted p-2">1</span>
									</div>
									<div class="d-flex justify-content-start align-items-center">
										<small class="p-2 ml-4"><a href="#" data-toggle="tooltip" title="Use comments to ask for more information or suggest improvement to the answer">Add comment</a></small>
									</div>			
									<div class="d-flex justify-content-end align-items-center ml-auto askedby-container">
										<small class="font-weight-bold ml-auto p-2">ANSWERED BY</small>
										<small class="text-muted p-2">345678</small>
									</div>
								</div>
								<div class="answer-comment">
									<div class="col-md-12 d-flex justify-content-start">
										<p class="mr-auto mb-0"><small>
											ANSWER COMMENT... Lorem ipsum dolor sit amet, sapien etiam, nunc amet dolor ac odio mauris justo. 
											Luctus arcu, urna praesent at id quisque ac. Arcu es massa vestibulum malesuada, 
											integer vivamus elit eu mauris eus, cum eros quis aliquam wisi. 
											Nulla wisi laoreet suspendisse integer vivamus elit eu mauris hendrerit facilisi, 
											mi mattis pariatur aliquam pharetra eget.
										</small></p>
									</div>
									<blockquote class="col-md-12 d-flex justify-content-start">
										<footer class="blockquote-footer"><small>234567, <cite>25 April 2020</cite></small></footer>
									</blockquote>
									<hr style="margin-top: -0.4rem;">
								</div>
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