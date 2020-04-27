<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Stark Industries Admin</title>
		<link rel="stylesheet" href="/StarkLearningApp/css/bootstrap.min.css">
		<link rel="stylesheet" href="/StarkLearningApp/css/bootstrap.css">
		<link rel="stylesheet" href="/StarkLearningApp/css/all.css"> 
		<link rel="stylesheet" href="/StarkLearningApp/css/userAdmin.css">
		<script type="text/javascript" src="/StarkLearningApp/js/userAdmin.js"></script>
	</head>
	
	<body>
		<!-- Start of Page Container -->
		<div class="pageCon">
			<!-- Navbar -->
			<nav class="navbar navbar-expand-lg navbar-dark bg-primary" id="topPage">
				<a class="navbar-brand" href="home">Stark Industries</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
				  <span class="navbar-toggler-icon"></span>
				</button>
			
				<div class="navbar-collapse collapse" id="navbarColor01" style="">
					<ul class="navbar-nav ml-auto">	    
				   		<li class="nav-item">
							<a class="nav-link" href = "userAdmin">
								<button type="button" class="btn btn-link" id="adminBtn">Admin</button>
							</a>
	  					</li> 
	 					<li>
	 						<a class="nav-link" href = "home">
	  						<button type="button" class="btn btn-outline-secondary">
	  							<i class="fas fa-sign-out-alt"></i><span style="padding-left: 10px;">Logout</span>
	  						</button>
	 						</a>
	  					</li>
				   	</ul>
			    </div>
			</nav>
			<!-- End of Navbar -->
			
			<!-- Content -->
			
			<!-- Container above table -->
			<div class="container-fluid">
			
				<div class="row align-items-center" id="aboveTable">
					<div class="col-md-2">
						<button type="button" class="btn btn-outline-primary" data-toggle="modal" data-target="#createNewUserModal">Create New User</button>
					</div>
					<div class="col-md-4">
						<fieldset>
						  <div class="row d-flex justify-content-center">
						    <div id="studentCheckDiv" class="col-md-4 custom-control custom-checkbox custom-control-inline">
						      <input type="checkbox" class="custom-control-input" id="studentCheck" value="" checked="">
						      <label class="custom-control-label" for="studentCheck">Student</label>
						    </div>
						    <div id="moderatorCheckDiv" class="col-md-4 custom-control custom-checkbox custom-control-inline">
						      <input type="checkbox" class="custom-control-input" id="moderatorCheck" value="" checked="">
						      <label class="custom-control-label" for="moderatorCheck">Moderator</label>
						    </div>
						  </div>			
						</fieldset>
					</div>
					<div class="col-md-6">
						<form class="form-inline">
						  <input class="form-control form-control-sm mr-3 w-75" type="text" placeholder="Search" aria-label="Search">
						  <button type="button" id="searchBtn"><i class="fas fa-search" aria-hidden="true"></i></button>
						</form>
					</div>
				</div>
			</div> 
			<!-- End of Container above table -->
			
			<!-- Table -->
			<div class="">
				<div class="table-responsive" id="tableDiv">
					<table class="table table-hover">
						<thead>
					    	<tr>
								<th scope="col" class="tbl">#</th>
								<th scope="col" class="tbl">User ID</th>
					      		<th scope="col" class="tbl">Name</th>
					      		<th scope="col" class="tbl">User Type</th>
							    <th scope="col" class="tbl">Total Question<br> Asked</th>
							    <th scope="col" class="tbl">Total Answer<br> Posted</th>
							    <th scope="col" class="tbl">Total Comment<br> Posted</th>
							    <th scope="col" class="tbl">Participation<br> Rating</th>
							    <th scope="col" class="tbl">Reset<br> Password</th>
							    <th scope="col" class="tbl">Suspend<br> User</th>
					    	</tr>
					  	</thead>
					  	<tbody>
					    	<tr>
							    <td class="font-weight-bold">1</td>
							    <td>123456</td>
							    <td>Tan Caleb</td>
							    <td>Student</td>
							    <td>12</td>
							    <td>12</td>
							    <td>12</td>
							    <td>24</td>
							    <td>
							    	<button type="button" id="resetPwBtn">
							    		<i class="fas fa-lock" data-toggle="modal" data-target="#resetPwModal" aria-hidden="true"></i>
							    	</button>
							    </td>
							    <td>
							    	<div class="form-group">
										<div class="d-inline custom-control custom-switch">
									      	<input type="checkbox" onclick="suspendFunction()" id="suspendBtn" class="custom-control-input">
									      	<label class="custom-control-label" for="suspendBtn"></label>
									    </div>
									    <div class="d-inline font-weight-bold" id="suspendOff">
							    			Off
							    		</div>
									</div>
							    </td>
					   		</tr>
	
						</tbody>
					</table>
				</div>
			</div>
			<!-- End of Table -->
			
			<!-- Create New User Modal Box -->
			<div class="modal fade" id="createNewUserModal" tabindex="-1" role="dialog" aria-labelledby="newUserModalLabel" aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered" role="document">
					<div class="modal-content">
			      		<div class="modal-header">
					        <h5 class="modal-title col-12 text-center font-weight-bold" id="newUserModalLabel">Create New User
						        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
						          <span aria-hidden="true">&times;</span>
						        </button>
					        </h5>
			      		</div>
						<div class="container modal-body">
				        	<form class="needs-validation" novalidate>
								<div class="">
							    	<div class="row d-flex justify-content-center form-group form-inline">
							    		<div class="">
							    			<span class="fas fa-user newUserIcon" aria-hidden="true"></span>
							      			<input type="text" class="form-control" id="newUserID" value="" placeholder="User ID" required>
							    		</div>
							    	</div>
								    <div class="row d-flex justify-content-center form-group form-inline">
								    	<div class="">
								    		<span class="fas fa-lock newUserIcon" aria-hidden="true"></span>
								      		<input type="password" class="form-control" id="newUserPassword" placeholder="Password" required>
								    	</div>
								    </div>
								    <div class="row d-flex justify-content-center form-group form-inline form-check">
								    	<div class="custom-control custom-radio custom-control-inline">
											<input type="radio" id="studentRadio" name="studentRadio" class="custom-control-input" required>
										  	<label class="custom-control-label" for="studentRadio">Student</label>
										</div>
										<div class="custom-control custom-radio custom-control-inline">
										  	<input type="radio" id="moderatorRadio" name="studentRadio" class="custom-control-input" required>
										  	<label class="custom-control-label" for="moderatorRadio">Moderator</label>
										</div>
								    </div>
							  	</div>
							  	<div class="modal-footer">
						      		<button type="submit" class="btn btn-primary mr-auto ml-auto">Submit</button>
						      	</div>
							</form>
				      	</div>
				      	
			    	</div>
				</div>
			</div>
			<!-- End of Create New User Modal Box -->
			
			<!-- Reset Password Modal Box -->
			<div class="modal fade" id="resetPwModal" tabindex="-1" role="dialog" aria-labelledby="resetPwModalLabel" aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered" role="document">
					<div class="modal-content">
			      		<div class="modal-header">
					        <h5 class="modal-title col-12 text-center font-weight-bold" id="resetPwModalLabel">Reset Password
						        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
						          <span aria-hidden="true">&times;</span>
						        </button>
					        </h5>
			      		</div>
						<div class="container modal-body">
				        	<h4 class="text-center">Do you wish to reset the password?</h4>
				      	</div>
				      	<div class="modal-footer">
				      		<button type="button" class="btn btn-primary ml-auto mr-auto" onclick="onSubmitResetPw()">Submit</button>
				      	</div>
			    	</div>
				</div>
			</div>
			<!-- End of Reset Password Modal Box -->
			
			<!-- Suspend User Modal Box -->
			<div class="modal fade" id="suspendUserModal" tabindex="-1" role="dialog" aria-labelledby="suspendUserLabel" aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered" role="document">
					<div class="modal-content">
			      		<div class="modal-header">
					        <h5 class="modal-title col-12 text-center font-weight-bold" id="suspendUserLabel">Suspend User
						        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
						          <span aria-hidden="true">&times;</span>
						        </button>
					        </h5>
			      		</div>
						<div class="container modal-body">
				        	<h4 class="text-center">Do you wish to suspend the user?</h4>
				      	</div>
				      	<div class="modal-footer">
				      		<button type="button" onclick="onSubmitSuspendUser()" class="btn btn-primary ml-auto mr-auto">Yes</button>
				      	</div>
			    	</div>
				</div>
			</div>
			<!-- End of Suspend User Modal Box -->
			
			<!-- OnSubmit Reset Password Message Box -->
			<div class="modal fade" id="onSubmitResetPwModal" tabindex="-1" role="dialog" aria-labelledby="onSubmitResetPwLabel" aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered" role="document">
					<div class="modal-content">
			      		<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						    	<span aria-hidden="true">&times;</span>
						    </button>
			      		</div>
						<div class="container modal-body">
				        	<h4 class="text-center font-weight-bolder">Password has been reset</h4>
				        	<h6 class="text-center">An email has been sent to the corresponding User ID email</h6>
				      	</div>
			    	</div>
				</div>
			</div>
			<!-- End of OnSubmit Reset Password Message Box -->
			
			<!-- OnSubmit Suspend User Message Box -->
			<div class="modal fade" id="onSubmitSuspendUserModal" tabindex="-1" role="dialog" aria-labelledby="onSubmitSuspendUserLabel" aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered" role="document">
					<div class="modal-content">
			      		<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						    	<span aria-hidden="true">&times;</span>
						    </button>
			      		</div>
						<div class="container modal-body">
				        	<h4 class="text-center font-weight-bolder">Corresponding user has been suspended</h4>
				      	</div>
			    	</div>
				</div>
			</div>
			<!-- End of OnSubmit Suspend User Message Box -->
			
			<!-- End of Content -->
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