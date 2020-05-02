<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Student Profile</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/all.css"> 
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/studentProfile.css">		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/studentProfile.js"></script>
		
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
						<form class="form-inline my-2 my-lg-0 mx-auto">
							<input class="form-control mr-sm-2 w-75" type="text" placeholder="Search" style="form-control: width: 100%;">
						  	<button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
						</form>
					</div>
					<div class="nav-item col-sm-4 text-sm-left text-md-right text-lg-right">
						<div class="dropdown" role="group">
							<button id="userSettingToggleBtn" type="button" class="btn btn-link dropdown-toggle" data-toggle="dropdown">${loggedInUser}</button>
						    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userSettingToggleBtn">
						      	<a class="dropdown-item" href="studentProfileServlet?username=${loggedInUser}" id="userProfileLink">
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
					<div class="d-flex w-100 mt-2">
						<div class="col-md-12 d-flex align-items-center justify-content-start">
							<a href="/studentHome?username=${loggedInUser}" style="color: #ea8a8a;"><i class="far fa-hand-point-left mr-1"></i>Back to Forum</a>
						</div>
					</div>
				</div>
				<div class="row">					
					<!-- Profile Contents -->
					<div class="col container-fluid text-center" style="padding-top: 2%; padding-bottom: 2%;">
						<div class="row container-fluid" style="padding-top: 2%; padding-bottom: 2%;">
							<div class="col"></div>
							<div class="col-md-auto">
								<h3 style="padding-bottom: 3%;">My Profile</h3>
								<div class="card mb-3" id="studentCard" style="min-width: 30rem;">								 	
								 	<span id="profilePic" style="font-size: 10rem;"><i class="fas fa-user-graduate"></i></span>
								 	<div class="card-body text-center" style="padding: 0;">
								 		<div class="container-fluid">
							 				<div class="row" style="margin-bottom: 0;">
							 					<div class="col-sm-5 text-right">
							 						<p><b>User ID:</b></label></p>
							 					</div>
							 					<div class="col-sm-7 text-left">
							 						<p id="userId">${loggedInUser}</p>
							 					</div>
							 				</div>			
							 				<div class="row" style="margin-bottom: 0;">
							 					<div class="col-sm-5 text-right">
							 						<p><b>My Participation Rating:</b></p>
							 					</div>
							 					<div class="col-sm-7 text-left">
							 						<div class="row container-fluid">
								 						<div class="col-sm-3">
								 							<p id="myParticipationRating">${user_part_rating}</p>
								 						</div>
								 						<div class="col-sm-9">
								 							<p>/ 100</p>
								 						</div>
							 						</div>
							 					</div>
							 				</div>		
								 		</div>
									</div>
								</div>
							</div>
							<div class="col"></div>
						</div>
						
						<div class="row container-fluid">
							<div class="col"></div>
							<div class="col">
								<form action="/studentProfileServlet" method="POST" id="profileForm" class="needs-validation" novalidate>
						 			<fieldset>
						 				<div class="row" style="margin-bottom: 3%;">
						 					<div class="col">
						 						<h4>Change Password</h4>
						 					</div>
						 				</div>
						 				<div class="form-group row text-center">
						 					<label for="currentPassword" class="col-sm-5 col-form-label text-right"><b>Current Password:</b></label>
						 					<div class="col-sm-7">
						 					
						 						<input type="password" class="form-control" id="currentPassword" placeholder="Current Password" name="currentPassword" required>
											    	
										    	<div class="invalid-feedback text-left">Please enter current password</div>
						 					</div>
						 				</div>	
						 				<div class="form-group row text-center">
						 					<label for="newPassword" class="col-sm-5 col-form-label text-right"><b>New Password:</b></label>
						 					<div class="col-sm-7">
						 						<input type="hidden" name="username" value="${loggedInUser}">
						 						<input type="password" class="form-control" id="newPassword" placeholder="New Password" name="newPassword"
										    	pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
										    	
									    	<div class="invalid-feedback text-left">New password cannot be the same as current password</div>
						 					</div>
						 				</div>		
						 				<div class="form-group row">
						 					<div class="col-sm-5"></div>
						 					<div class="col-sm-7 text-left">
						 						<button type="submit" class="btn btn-outline-primary text-center">Change Password</button>
						 					</div>
						 				</div>							 													 												 		
						 			</fieldset>
						 		</form>			
						 	</div>
						 	<div class="col"></div>		
						</div>
						
					</div>
					<!-- End of Profile Contents -->
					
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
	<script>
		if(${isPwChanged == 'false'}){
			  alert("Wrong current password");
		} 
		
		if(${pwChangedSuccess == 'true'}){
			alert("Password has been successfully changed.")
		}
	</script>
</html>