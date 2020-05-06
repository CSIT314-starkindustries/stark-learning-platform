<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Student View Question</title>
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/all.css"> 
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/viewQuestion.css">		
	</head>
	<body>
		<!-- Start of Page Container -->
		<div class="pageCon">
		
			<!-- Start of Navbar -->			
			<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
				<a class="navbar-brand" href="/studentHome?username=${loggedInUser}">Stark Industries</a>
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
					
					<div class="container-fluid">
						<div class=" content-container">
							
							<!-- Start of first row (blue grey colour) -->
							<div class="row header-container" id="content-one">
								<div class="col-md-10">
									<div class="row">
										<div class="d-flex w-100 mb-2">
											<div class="col-md-12 d-flex align-items-center justify-content-start">
												<small><a href="/studentHome?username=${loggedInUser}" style="color: #ea8a8a;"><i class="far fa-hand-point-left mr-1"></i>Back to Forum</a></small>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="d-flex w-100 mb-4">
											<div class="col-md-10 d-flex align-items-center justify-content-start">
												<h4 class="font-weight-bolder mr-auto" id="qnsTitle">
													${question.title}
												</h4>
											</div>
										</div>
										<div class="d-flex w-100 align-items-center">
											<div class="col-md-3 d-flex justify-content-start">
												<div class="d-flex">
													<small class="font-weight-bold mr-auto p-2">DATE</small>
													<small class="text-muted p-2">${question.date_posted}</small>
												</div>
											</div>
											<div class="col-md-3 d-flex justify-content-start">
												<!-- 
												<div class="d-flex">
													<small class="font-weight-bold mr-auto p-2">VIEWED</small>
													<small class="text-muted p-2">1 times</small>
												</div>	
												-->								
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-2 d-flex align-items-center justify-content-center">
									<div class="row">
										<div class="col-md-12 flex-column">
											<button type="button" id="qnAsk" class="qnAsk btn btn-primary btn-block btn-sm mb-2" title="Click to ask questions" data-toggle="modal" data-target="#askQns_modal">
												<div class="d-flex w-100 justify-content-center align-items-center">
								                    <span class="mr-4" style="padding-right: 5px;"><i class="far fa-question-circle"></i></span>
								                    <span>Ask Question</span>
								                </div>												
											</button>
										</div>
										<div class="col-md-12 flex-column">
											<button type="button" id="qnAns" class="btn btn-outline-primary btn-block btn-sm mt-2" title="Click to answer to this question" data-toggle="modal" data-target="#ansQns-modal">
												<div class="d-flex w-100 justify-content-center align-items-center">
								                    <span class="mr-2"><i class="far fa-comment-alt"></i></span>
								                    <span>Answer Question</span>
								                </div>												
											</button>
										</div>
									</div>
								</div>
							</div>
							<!-- End of first row (blue grey colour) -->
							
							<!-- Start of second row (From the likes to before '1 Answers') -->
							<div class="row full-question-container" id="content-two">
								<div class="col-md-12 d-flex justify-content-start full-question">
									<p class="mr-auto" id="qns">
										${question.description}
									</p>
								</div>
								<div class="col-md-12 d-flex justify-content-end">
									<small class="edit-question-link"><a href="#" class="qnEdit" data-toggle="modal" data-target="#edit-qns-modal">Edit Question</a></small>
								</div>
								<div class="col-md-12 d-flex justify-content-start" id="content-two-bottom">
									<div class="d-flex justify-content-start align-items-center upvote-container">
										<button type="button" class="btn upvote" data-toggle="tooltip" title="This answer is useful and clear"><i class="far fa-thumbs-up"></i></button>
										<span class="text-muted p-2">${question.total_votes}</span>
										<button type="button" class="btn downvote" data-toggle="tooltip" title="This answer is not useful and unclear"><i class="far fa-thumbs-down"></i></button>
									</div>								
									<div class="d-flex justify-content-end align-items-center ml-auto askedby-container">
										<small class="font-weight-bold ml-auto p-2">ASKED BY</small>
										<small class="text-muted p-2"><a href="viewStudentProfile">${question.stud_username}</a></small>
									</div>
								</div>
								<c:forEach items="${commentList}" var="comment" varStatus="loop">
								<c:if test="${comment.answer_id == 0}">
									<div class="question-comment">
										<div class="col-md-12 d-flex justify-content-start">
											<p class="mr-auto mb-0" id="qnsComment"><small>
												${comment.description}
											</small></p>
										</div>
										<div class="col-md-12">
											<div class="row">
												<blockquote class="col-md-6 d-flex justify-content-start">
													<footer class="blockquote-footer"><small><a href="viewStudentProfile">${comment.stud_username}</a>, <cite>${comment.date_posted}</cite></small></footer>
												</blockquote>
												<c:if test="${comment.stud_username == loggedInUser}">
													<div class="col-md-6 d-flex justify-content-end edit-comment">
														<small class="edit-comment-link"><a href="#" class="editCom" data-id="${comment.comment_id}" data-desc="${comment.description}" data-toggle="modal" data-target="#edit-com-modal">Edit Comment</a></small>
													</div>
												</c:if>
											</div>
										</div>
										<hr style="margin-top: -0.4rem; margin-bottom: -0.1rem;">
									</div>
								</c:if>
								</c:forEach>
								<div class="col-md-12 d-flex justify-content-start">
									<small><a href="#" class="qnAddCom" data-id="${question.question_id}" data-toggle="modal" data-target="#add-comment-modal" title="Avoid answering questions in comments">Add comment</a></small>
								</div>
							</div>
							<!-- End of second row (From the likes to before '1 Answers') -->
							
							<!-- Start of third row ('1 Answer' part) -->
							<div class="row" id="content-three">
								<div class="col-md-12 d-flex justify-content-start">
									<p class="mr-auto">
										${answerList.size()} Answer<c:if test="${answerList.size() != 1}">s</c:if>
									</p>
								</div>
								<hr style="margin-top: -0.4rem;">
							</div>
							<!-- End of third row ('1 Answer' part) -->
							
							<!-- Start of fourth row (the whole Answer part) -->
							<c:forEach items="${answerList}" var="answer" varStatus="loop">
							<div class="row question-answer-container" id="content-four">
								<div class="col-md-12 d-flex justify-content-start question-answer">
									<p class="mr-auto" id="ans">
										${answer.description}
									</p>
								</div>
								<c:if test="${answer.stud_username == loggedInUser}">
									<div class="col-md-12 d-flex justify-content-end edit-answer">
										<small class="edit-answer-link"><a href="#" class="ansEdit" data-id="${answer.answer_id}" data-desc="${answer.description}" data-toggle="modal" data-target="#edit-ans-modal">Edit Answer</a></small>
									</div>
								</c:if>
								<div class="col-md-12 d-flex justify-content-start" id="content-four-bottom">
									<div class="d-flex justify-content-start align-items-center upvote-container">
										<button type="button" class="btn upvote" data-toggle="tooltip" title="This answer is useful and clear"><i class="far fa-thumbs-up"></i></button>
										<span class="text-muted p-2">${answer.total_votes}</span>
										<button type="button" class="btn downvote" data-toggle="tooltip" title="This answer is not useful and unclear"><i class="far fa-thumbs-down"></i></button>
									</div>			
									<div class="d-flex justify-content-start align-items-center">
										<small class="p-2 ml-4"><a href="#" class="ansAddCom" data-idone="${answer.question_id}" data-idtwo="${answer.answer_id}" data-toggle="modal" data-target="#add-comment-modal" title="Use comments to ask for more information or suggest improvement to the answer">Add comment</a></small>
									</div>					
									<div class="d-flex justify-content-end align-items-center ml-auto askedby-container">
										<small class="font-weight-bold ml-auto p-2">ANSWERED BY</small>
										<small class="text-muted p-2"><a href="viewStudentProfile">${answer.stud_username}</a></small>
									</div>
								</div>
								<c:forEach items="${commentList}" var="comment" varStatus="loop2">
								<c:if test="${comment.answer_id == answer.answer_id}">
									<div class="answer-comment-container">
										<div class="col-md-12 d-flex justify-content-start answer-comment">
											<p class="mr-auto mb-0" id="ansComment"><small>
												${comment.description}
											</small></p>
										</div>
										<div class="col-md-12">
											<div class="row">
												<blockquote class="col-md-6 d-flex justify-content-start">
													<footer class="blockquote-footer"><small><a href="viewStudentProfile">${comment.stud_username}</a>, <cite>${comment.date_posted}</cite></small></footer>
												</blockquote>
												<c:if test="${comment.stud_username == loggedInUser}">
													<div class="col-md-6 d-flex justify-content-end edit-comment">
														<small class="edit-comment-link"><a href="#" class="editCom" data-id="${comment.comment_id}" data-desc="${comment.description}" data-toggle="modal" data-target="#edit-com-modal">Edit Comment</a></small>
													</div>
												</c:if>
											</div>
										</div>
										<hr style="margin-top: -0.4rem;">
									</div>
								</c:if>
								</c:forEach>
							</div>
							</c:forEach>
							<!-- End of fourth row (the whole Answer part) -->
							
						</div>
					</div>
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
					      		<form id="askQnsForm" action="/viewQuestion" method="POST" class="needs-validation" novalidate>
		 							<fieldset>
		 								<input type="hidden" name="username" class="userId" value="${loggedInUser}" />
		 								<div class="form-group row">
		 									<div class="col-sm-1"></div>
		 									<div class="col-sm-10">
		 										<label for="qnsTitle"><b>Title</b></label>
										      	<input type="text" class="form-control" name="qnsTitle-val" id="qnsTitle" aria-describedby="qnsTitleHelp" placeholder="Enter title" contenteditable="true">
										      	<small id="qnsTitleHelp" class="form-text text-muted">Be specific</small>		 										
		 									</div>
										    <div class="col-sm-1"></div>	
										</div>
										<div class="form-group row">
		 									<div class="col-sm-1"></div>
										    <div class="col-sm-10">
										    	<label for="qnsBody"><b>Body</b></label>
      											<textarea class="form-control" name="qnsBody-val" id="qnsBody" aria-describedby="qnsBodyHelp" rows="10" contenteditable="true" style="resize: none;"></textarea>
										    	<small id="qnsBodyHelp" class="form-text text-muted">Describe in detail and include all information related to your question</small>	
										    </div>
											<div class="col-sm-1"></div>			
										</div>
										
										<div class="modal-footer" style="text-align: center;">
								        	<button type="submit" name="postQnBtn" class="btn btn-primary mr-auto" id="#postQnsBtn" style="margin: auto; display: block;">Post Question</button>			        	
								    	</div>
		 							</fieldset>
		 						</form>
							</div>					    	
					    </div>
					</div>
				</div>
				<!-- End of Ask Question Modal -->
				
				<!-- Answer Question Modal -->
				<div class="modal fade" id="ansQns-modal" tabindex="-1" role="dialog" aria-labelledby="modal" aria-hidden="true">
					<div class="modal-dialog modal-dialog-centered modal-lg" role="document">
					    <div class="modal-content">
					      	<div class="modal-header text-center">
						        <h4 class="modal-title w-100">Answer Question</h4>
						        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
						          <span aria-hidden="true">&times;</span>
						        </button>
					      	</div>
					      	<div class="modal-body mx-3">
					      		<form id="ansQnsForm" action="/viewQuestion" method="POST" class="needs-validation" novalidate>
		 							<fieldset>
		 								<input type="hidden" name="answer-qid-val" id="answer-qid" value="${question.question_id}" />
		 								<input type="hidden" name="username" class="userId" value="${loggedInUser}" />
										<div class="form-group row">
		 									<div class="col-sm-1"></div>
										    <div class="col-sm-10">
										    	<label for="ansBody"><b>Your Answer</b></label>
      											<textarea class="form-control" name="ansBody-val" id="ansBody" aria-describedby="ansBodySubtitle" rows="10" contenteditable="true" style="resize: none;"></textarea>
										    	<small id="ansBodySubtitle" class="form-text text-muted">Describe in detail and include all information in your answer that is relevant to the question</small>	
										    </div>
											<div class="col-sm-1"></div>			
										</div>
										
										<div class="modal-footer text-center" >
								        	<button type="submit" name="postAnsBtn" class="btn btn-primary mr-auto" id="#postAnsBtn" style="margin: auto; display: block;">Post Answer</button>			        	
								    	</div>
		 							</fieldset>
		 						</form>
							</div>					    	
					    </div>
					</div>
				</div>
				<!-- End of Answer Question Modal -->
				
				<!-- Add Comment Modal -->
				<div class="modal fade" id="add-comment-modal" tabindex="-1" role="dialog" aria-labelledby="modal" aria-hidden="true">
					<div class="modal-dialog modal-dialog-centered modal-lg" role="document">
					    <div class="modal-content">
					      	<div class="modal-header text-center">
						        <h4 class="modal-title w-100">Add Comment</h4>
						        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
						          <span aria-hidden="true">&times;</span>
						        </button>
					      	</div>
					      	<div class="modal-body mx-3">
					      		<form id="commentForm" action="/viewQuestion" method="POST" class="needs-validation" novalidate>
		 							<fieldset>
		 								<input type="hidden" name="comment-qid-val" id="comment-qid" />
		 								<input type="hidden" name="comment-aid-val" id="comment-aid" />
		 								<input type="hidden" name="username" class="userId" value="${loggedInUser}" />
										<div class="form-group row">
		 									<div class="col-sm-1"></div>
										    <div class="col-sm-10">
										    	<label for="commentBody"><b>Your Comment</b></label>
      											<textarea class="form-control" name="commentBody-val" id="commentBody" aria-describedby="commentBodySubtitle" rows="10" contenteditable="true" style="resize: none;"></textarea>
										    	<small id="commentBodySubtitle" class="form-text text-muted">Describe in detail. Answers should not be posted under comments.</small>	
										    </div>
											<div class="col-sm-1"></div>			
										</div>
										
										<div class="modal-footer text-center" >
								        	<button type="submit" name="postComBtn" class="btn btn-primary mr-auto" id="#postCommentBtn" style="margin: auto; display: block;">Post Comment</button>			        	
								    	</div>
		 							</fieldset>
		 						</form>
							</div>					    	
					    </div>
					</div>
				</div>
				<!-- End of Add Comment Modal -->
				
				<!-- Edit Comment Modal -->
				<div class="modal fade" id="edit-com-modal" tabindex="-1" role="dialog" aria-labelledby="modal" aria-hidden="true">
					<div class="modal-dialog modal-dialog-centered modal-lg" role="document">
					    <div class="modal-content">
					      	<div class="modal-header text-center">
						        <h4 class="modal-title w-100">Edit Comment</h4>
						        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
						          <span aria-hidden="true">&times;</span>
						        </button>
					      	</div>
					      	<div class="modal-body mx-3">
					      		<form id="editForm" action="/viewQuestion" method="POST" class="needs-validation" novalidate>
		 							<fieldset>
		 								<input type="hidden" name="edit-com-id-val" id="edit-com-id" />
		 								<input type="hidden" name="username" class="userId" value="${loggedInUser}" />
										<div class="form-group row">
		 									<div class="col-sm-1"></div>
										    <div class="col-sm-10">
										    	<label for="edit-com-body"><b>Your Comment</b></label>
      											<textarea class="form-control" name="edit-com-body-val" id="edit-com-body" aria-describedby="edit-com-sub" rows="10" contenteditable="true" style="resize: none;"></textarea>
										    	<small id="edit-com-sub" class="form-text text-muted">Describe in detail</small>	
										    </div>
											<div class="col-sm-1"></div>			
										</div>
										
										<div class="modal-footer text-center" >
								        	<button type="submit" name="editComBtn" class="btn btn-primary mr-auto" id="#postEdit" style="margin: auto; display: block;">Update Changes</button>			        	
								    	</div>
		 							</fieldset>
		 						</form>
							</div>					    	
					    </div>
					</div>
				</div>
				<!-- End of Edit Comment Modal -->
				
				<!-- Edit Answer Modal -->
				<div class="modal fade" id="edit-ans-modal" tabindex="-1" role="dialog" aria-labelledby="modal" aria-hidden="true">
					<div class="modal-dialog modal-dialog-centered modal-lg" role="document">
					    <div class="modal-content">
					      	<div class="modal-header text-center">
						        <h4 class="modal-title w-100">Edit Answer</h4>
						        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
						          <span aria-hidden="true">&times;</span>
						        </button>
					      	</div>
					      	<div class="modal-body mx-3">
					      		<form id="editForm" action="/viewQuestion" method="POST" class="needs-validation" novalidate>
		 							<fieldset>
										<input type="hidden" name="edit-ans-id-val" id="edit-ans-id" />
										<input type="hidden" name="username" class="userId" value="${loggedInUser}" />
										<div class="form-group row">
		 									<div class="col-sm-1"></div>
										    <div class="col-sm-10">
										    	<label for="edit-ans-body"><b>Your Answer</b></label>
      											<textarea class="form-control" name="edit-ans-body-val" id="edit-ans-body" aria-describedby="edit-ans-sub" rows="10" contenteditable="true" style="resize: none;"></textarea>
										    	<small id="edit-ans-sub" class="form-text text-muted">Describe in detail</small>	
										    </div>
											<div class="col-sm-1"></div>			
										</div>
										
										<div class="modal-footer text-center" >
								        	<button type="submit" name="editAnsBtn" class="btn btn-primary mr-auto" id="#postEdit" style="margin: auto; display: block;">Update Changes</button>			        	
								    	</div>
		 							</fieldset>
		 						</form>
							</div>					    	
					    </div>
					</div>
				</div>
				<!-- End of Edit Answer Modal -->
				
				<!-- Edit Question Modal -->
				<div class="modal fade" id="edit-qns-modal" tabindex="-1" role="dialog" aria-labelledby="modal" aria-hidden="true">
					<div class="modal-dialog modal-dialog-centered modal-lg" role="document">
					    <div class="modal-content">
					      	<div class="modal-header text-center">
						        <h4 class="modal-title w-100">Edit Question</h4>
						        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
						          <span aria-hidden="true">&times;</span>
						        </button>
					      	</div>
					      	<div class="modal-body mx-3">
					      		<form id="editQnsForm" action="/viewQuestion" method="POST" class="needs-validation" novalidate>
		 							<fieldset>
		 								<input type="hidden" name="edit-qns-id-val" id="edit-qns-id" value="${question.question_id}" />
		 								<input type="hidden" name="username" class="userId" value="${loggedInUser}" />
		 								<div class="form-group row">
		 									<div class="col-sm-1"></div>
		 									<div class="col-sm-10">
		 										<label for="edit-qns-title"><b>Title</b></label>
										      	<input type="text" class="form-control" name="edit-qns-title-val" id="edit-qns-title" value="${question.title}" aria-describedby="edit-qns-subtitle" placeholder="Enter title" contenteditable="true">
										      	<small id="edit-qns-subtitle" class="form-text text-muted">Be specific</small>		 										
		 									</div>
										    <div class="col-sm-1"></div>	
										</div>
										<div class="form-group row">
		 									<div class="col-sm-1"></div>
										    <div class="col-sm-10">
										    	<label for="edit-qns-body"><b>Body</b></label>
      											<textarea class="form-control" name="edit-qns-body-val" id="edit-qns-body" aria-describedby="edit-qnsbody-subtitle" rows="10" contenteditable="true" style="resize: none;">${question.description}</textarea>
										    	<small id="edit-qnsbody-subtitle" class="form-text text-muted">Describe in detail and include all information related to your question</small>	
										    </div>
											<div class="col-sm-1"></div>			
										</div>
										
										<div class="modal-footer" style="text-align: center;">
								        	<button type="submit" name="editQnBtn" class="btn btn-primary mr-auto" id="#postEditQns" style="margin: auto; display: block;">Update Changes</button>			        	
								    	</div>
		 							</fieldset>
		 						</form>
							</div>					    	
					    </div>
					</div>
				</div>
				<!-- End of Edit Question Modal -->
				
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
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/viewQuestion.js"></script>
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>      	
	
	</body>
</html>