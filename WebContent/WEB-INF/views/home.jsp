<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Welcome to Stark Industries</title>
		<link rel="stylesheet" href="/StarkLearningApp/css/bootstrap.min.css">
		<link rel="stylesheet" href="/StarkLearningApp/css/bootstrap.css">
		<link rel="stylesheet" href="/StarkLearningApp/css/all.css"> 
		<link rel="stylesheet" href="/StarkLearningApp/css/home.css">		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script type="text/javascript" src="/StarkLearningApp/js/home.js"></script>
	</head>
	
	<body>		
		<!-- Start of Navbar -->
		<nav class="navbar navbar-expand-lg navbar-dark bg-primary" id="topPage">
			<a class="navbar-brand" href="home">Stark Industries</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
			  <span class="navbar-toggler-icon"></span>
			</button>
		
			<div class="navbar-collapse collapse" id="navbarColor01" style="">
				<ul class="navbar-nav mr-auto">	    
					<li class="nav-item">
						<a class="nav-link" href="#aboutCon">About</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#ourTeamCon">Our Team</a>
					</li>
			   	</ul>
				<ul class="navbar-nav ml-auto">	    
			   		<li class="nav-item">
						<button type="button" class="btn btn-link" id="loginModalBtn" data-toggle="modal" data-target="#login_modal" style="text-decoration: none;">
							Login
						</button>
  					</li> 
 					<li class="nav-item">
	  					<button type="button" class="btn btn-outline-secondary" id="registerModalBtn" data-toggle="modal" data-target="#register_modal">
	  						<i class="fas fa-user"></i><span style="padding-left: 10px;">Register</span>
	  					</button>
  					</li>
			   	</ul>
		    </div>
		</nav>
		<!-- End of Navbar -->
		
		<!-- Start of Contents -->
		<div class="container-fluid" id="main">
			<div class="centered">
				<h2 id="typing" style="margin-bottom: 5%;">Welcome to Stark's!</h2>
				<br>
				<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#register_modal">Get Started</button>
			</div>
		</div>
		
		<!-- About Section -->
		<div class="container-fluid" id="aboutCon">
			<div class="row">
				<div class="col-sm-2"></div>
				<div class="col-sm-8">
					<h2 style="text-align: center;">About Us</h2>
				</div>
				<div class="col-sm-2"></div>				
			</div>
			<div class="row" style="padding-top: 2%; padding-bottom: 2%;">
				<div class="col-sm-3"></div>
				<div class="col-sm-6">
					<p id="aboutP">
						Stark Industries is an online learning platform where students are able to learn from and with one another.
						Through Stark Industries, students will be able to connect with their fellow peers, as well as learn and discover other student's
						ideas, views and thoughts on relevant topics. 
					</p>
				</div>
				<div class="col-sm-3"></div>
			</div>
		</div>
		
		<!-- Team Section -->
		<div class="container-fluid" style="background-color: white;">
			<div class="container-fluid" id="ourTeamCon">
				<div class="row">
					<div class="col-sm-2"></div>
					<div class="col-sm-8">
						<h2 style="text-align: center;">Our Team</h2>
					</div>
					<div class="col-sm-2"></div>				
				</div>
				<div class="row" style="padding-top: 2%; padding-bottom: 2%;">
					<div class="col-sm-3"></div>
					<div class="col-sm-6">
						<h4 id="ourTeamH4">Meet the team behind Stark Industries</h4>
					</div>
					<div class="col-sm-3"></div>
				</div>			
			</div>
			
			<!-- Team Cards -->
			<div class="container-fluid" id="cardCon">
				<div class="row" style="padding-top: 2%; padding-bottom: 2%;">
					<div class="col"></div>
					<div class="col-md-auto">
						<div class="card text-white bg-primary mb-3" style="max-width: 20rem;">
							<div class="card-header">Captain Steve Rogers</div>
							<div class="img-card">
								<img src="/StarkLearningApp/img/captain_america.jpg" class="card-img-top" alt="..." height="200px">
						  	</div>
						  	<div class="card-body">
						    	<h4 class="card-title">Captain America</h4>
						    	<p class="card-text">"I can do this all day."</p>
							</div>
						</div>
					</div>
					<div class="col-md-auto">
						<div class="card text-white bg-primary mb-3" style="max-width: 20rem;">
							<div class="card-header">Peter Parker</div>
							<div class="img-card">
								<img src="/StarkLearningApp/img/spiderman.jpg" class="card-img-top" alt="..." height="200px">
						  	</div>
						  	<div class="card-body">
						    	<h4 class="card-title">Spider-Man</h4>
						    	<p class="card-text">"With great power, comes great responsibility."</p>
							</div>
						</div>
					</div>
					<div class="col-md-auto">
						<div class="card text-white bg-primary mb-3" style="max-width: 20rem;">
							<div class="card-header">Thor Odinson</div>
							<div class="img-card">
								<img src="/StarkLearningApp/img/thor.jpg" class="card-img-top" alt="..." height="200px">
						  	</div>
						  	<div class="card-body">
						    	<h4 class="card-title">Thor</h4>
						    	<p class="card-text">"I notice you've copied my beard."</p>
							</div>
						</div>
					</div>
					<div class="col"></div>
				</div>
				
				<div class="row" style="padding-top: 2%; padding-bottom: 2%;">
					<div class="col"></div>
					<div class="col-md-auto">
						<div class="card text-white bg-primary mb-3" style="max-width: 20rem;">
							<div class="card-header">Stephen Vincent Strange</div>
							<div class="img-card">
								<img src="/StarkLearningApp/img/doctor_strange.jpg" class="card-img-top" alt="..." height="200px">
						  	</div>
						  	<div class="card-body">
						    	<h4 class="card-title">Doctor Strange</h4>
						    	<p class="card-text">"If I tell you what happens, it won't happen."</p>
							</div>
						</div>
					</div>
					<div class="col-md-auto">
						<div class="card text-white bg-primary mb-3" style="max-width: 20rem;">
							<div class="card-header">89P13</div>
							<div class="img-card">
								<img src="/StarkLearningApp/img/rocket_raccoon.jpg" class="card-img-top" alt="..." height="200px">
						  	</div>
						  	<div class="card-body">
						    	<h4 class="card-title">Rocket Raccoon</h4>
						    	<p class="card-text">"Hold up! What's a raccoon?"</p>
							</div>
						</div>
					</div>
					<div class="col-md-auto">
						<div class="card text-white bg-primary mb-3" style="max-width: 20rem;">
							<div class="card-header">Groot</div>
							<div class="img-card">
								<img src="/StarkLearningApp/img/groot.jpg" class="card-img-top" alt="..." height="200px">
						  	</div>
						  	<div class="card-body">
						    	<h4 class="card-title">Baby Groot</h4>
						    	<p class="card-text">"I am Groot."</p>
							</div>
						</div>
					</div>
					<div class="col"></div>
				</div>
				
				<div class="row" style="padding-top: 2%; padding-bottom: 2%;">
					<div class="col"></div>
					<div class="col-md-auto">
						<div class="card text-white bg-primary mb-3" style="max-width: 20rem;">
							<div class="card-header">Tony Stark</div>
							<div class="img-card">
								<img src="/StarkLearningApp/img/tony_stark.jpg" class="card-img-top" alt="..." height="200px">
						  	</div>
						  	<div class="card-body">
						    	<h4 class="card-title">Iron Man</h4>
						    	<p class="card-text">"Heroes are made by the paths they choose, not the powers they are graced with."</p>
							</div>
						</div>
					</div>	
					<div class="col"></div>
				</div>
			</div>
		</div>
		
		<!-- Register Modal -->
		<div class="modal fade" id="register_modal" tabindex="-1" role="dialog" aria-labelledby="modal" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
			    <div class="modal-content">
			      	<div class="modal-header text-center">
				        <h5 class="modal-title w-100">Registration</h5>
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				          <span aria-hidden="true">&times;</span>
				        </button>
			      	</div>
			      	<div class="modal-body mx-3">
			      		<form id="regForm" class="needs-validation" novalidate>
 							<fieldset>
 								<div class="form-group row">
 									<div class="col-sm-1"></div>
								    <label for="regUserId" class="col-sm-2 col-form-label text-right"><i class="fas fa-user"></i></label>
								    <div class="col-sm-7">
								    	<input type="text" class="form-control" id="regUserId" placeholder="User ID" required>
										<div class="invalid-feedback">Please enter your assigned User ID</div>
									</div>
									<div class="col-sm-2"></div>			
								</div>
								<div class="form-group row">
 									<div class="col-sm-1"></div>
								    <label for="regPassword" class="col-sm-2 col-form-label text-right"><i class="fas fa-lock"></i></label>
								    <div class="col-sm-7">
								    	<input type="password" class="form-control" id="regPassword" placeholder="Password" name="regPassword"
									    	pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" required>
								    	<div class="invalid-feedback">Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters</div>
									</div>
									<div class="col-sm-2"></div>			
								</div>
								<div class="form-group row">
 									<div class="col-sm-1"></div>
								    <label for="regConfirmPassword" class="col-sm-2 col-form-label text-right"><i class="fas fa-check"></i></label>
								    <div class="col-sm-7">
								    	<input type="password" class="form-control" id="regConfirmPassword" placeholder="Confirm Password" name="regConfirmPassword" required>
								    	<div class="invalid-feedback">Password does not match</div>
									</div>
									<div class="col-sm-2"></div>			
								</div>
								<div class="form-group row text-center">
									<div class="col">
										<div class="form-check">
									      	<input class="form-check-input" type="checkbox" value="" id="invalidCheck" required>
									      	<label class="form-check-label" for="invalidCheck">I agree to terms and conditions</label>
									      	<div class="invalid-feedback">
									        	You must agree before submitting.
									    	</div>
										</div>
									</div>
								</div>
								
								<div class="modal-footer" style="text-align: center;">
						        	<button type="submit" class="btn btn-primary mr-auto" id="#registerBtn" style="margin: auto; display: block;">Register</button>			        	
						    	</div>
 							</fieldset>
 						</form>
					</div>
			    	
			    </div>
			</div>
		</div>

		<!-- Login Modal -->
		<div class="modal fade" id="login_modal" tabindex="-1" role="dialog" aria-labelledby="modal" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered modal-lg" role="document">
		    	<div class="modal-content container-fluid" id="login_modal_content">
		    		<div class="modal-header">
		    			<h5 class="modal-title" style="font-family: "Trebuchet MS", Helvetica, sans-serif;">Log In As</h5>
		        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          			<span aria-hidden="true">&times;</span>
		        		</button>
	        		</div>
	        		
	        		<!-- Nav Tabs -->
		    		<ul class="nav nav-tabs nav-justified active">
						<li class="nav-item">
				    		<a class="nav-link active selectPane" data-toggle="tab" href="#stud_login" data-target="#studLoginPane">Student</a>
				  		</li>
				  		<li class="nav-item">
				    		<a class="nav-link selectPane" data-toggle="tab" href="#mod_login" data-target="#modLoginPane">Moderator</a>
				  		</li>
				  		<li class="nav-item">
				    		<a class="nav-link selectPane" data-toggle="tab" href="#userAdmin_login" data-target="#userAdminLoginPane">User Administrator</a>
				  		</li>
					</ul>
					
					<!-- Tab Panes -->
					<div id="myTabContent" class="tab-content">
					
						<!-- Stud Login Pane -->
						<div class="tab-pane fade active show container-fluid" id="studLoginPane" style="padding-bottom: 3%;">
							<div class="model-header text-center">
								<h5 style="padding-top: 5%; padding-bottom: 5%;">Log in as Student</h5>
							</div>				    	
							<div class="model-body mx-3">
								<form class="needs-validation" novalidate>
		 							<fieldset>
		 								<div class="form-group row">
		 									<div class="col-sm-2"></div>
										    <label for="studUserId" class="col-sm-2 col-form-label text-right"><i class="fas fa-user"></i></label>
										    <div class="col-sm-5">
										    	<input type="text" class="form-control" id="studUserId" placeholder="User ID" required>
										    	<div class="invalid-feedback">Please fill out this field.</div>
											</div>
											<div class="col-sm-3"></div>			
										</div>
										<div class="form-group row" style="padding-bottom: 3%;">
		 									<div class="col-sm-2"></div>
										    <label for="studPassword" class="col-sm-2 col-form-label text-right"><i class="fas fa-lock"></i></label>
										    <div class="col-sm-5">
										    	<input type="password" class="form-control" id="studPassword" placeholder="Password" required>
										    	<div class="invalid-feedback">Please fill out this field.</div>
											</div>
											<div class="col-sm-3"></div>			
										</div>
										<div class="form-group row text-center">
											<button type="submit" class="btn btn-primary mr-auto" id="#loginBtn" style="margin: auto; display: block;">Log In</button>			        			
										</div>
									</fieldset>
								</form>
							</div>
							<div class="model-footer">
								<div class="row text-center">
									<div class="col">
										<button type="button" class="btn btn-link forgot_password_collapse_link" data-toggle="collapse" href="#forgot_password_collapse" aria-expanded="false" aria-controls="forgot_password_collapse">
											Forgot password?
										</button>	
									</div>
									<div class="col">									
										<button type="button" class="btn btn-link" data-toggle="modal" data-target="#register_modal" style="text-decoration: none;" data-dismiss="modal" aria-label="Close">
											Don't have an account yet?
										</button>			        													
									</div>
								</div>

								<div class="collapse" id="forgot_password_collapse" style="padding-bottom: 3%;">
									<div class="row text-center">
										<div class="col">
											<hr/>
											<h5>Password Reset Request</h5>
											<p>Please enter your User ID and we will send a reset password request to the user administrator.											
												<br>Once approved, the password will be sent to the email associated with your User ID.
											</p>
										</div>
									</div>
									<div class="row">
										<div class="col-sm-3"></div>
										<div class="col-sm-6">
											<form class="needs-validation" novalidate>
												<fieldset>
													<div class="form-group">
									                	<input type="text" class="form-control" id="forgot_password_userId" placeholder="User ID" required>
									                	<div class="invalid-feedback">Please fill out this field.</div>
									                </div>
									                <button type="submit" class="btn btn-secondary mr-auto text-center" style="margin: auto; display: block;">Send Reset Password Request</button>
												</fieldset>
											</form>
										</div>
										<div class="col-sm-3"></div>
									</div>								
								</div>
							</div>
					  	</div>
					  	
					  	<!-- Mod Login Pane -->
					  	<div class="tab-pane fade container-fluid" id="modLoginPane" style="padding-bottom: 3%;">
							<div class="model-header text-center">
								<h5 style="padding-top: 5%; padding-bottom: 5%;">Log in as Moderator</h5>
							</div>				    	
							<div class="model-body mx-3">
								<form class="needs-validation" novalidate>
		 							<fieldset>
		 								<div class="form-group row">
		 									<div class="col-sm-2"></div>
										    <label for=""modUserId"" class="col-sm-2 col-form-label text-right"><i class="fas fa-user"></i></label>
										    <div class="col-sm-5">
										    	<input type="text" class="form-control" id="modUserId" placeholder="User ID" required>
										    	<div class="invalid-feedback">Please fill out this field.</div>
											</div>
											<div class="col-sm-3"></div>			
										</div>
										<div class="form-group row" style="padding-bottom: 3%;">
		 									<div class="col-sm-2"></div>
										    <label for="modPassword" class="col-sm-2 col-form-label text-right"><i class="fas fa-lock"></i></label>
										    <div class="col-sm-5">
										    	<input type="password" class="form-control" id="modPassword" placeholder="Password" required>
										    	<div class="invalid-feedback">Please fill out this field.</div>
											</div>
											<div class="col-sm-3"></div>			
										</div>
										<div class="form-group row text-center">
											<button type="submit" class="btn btn-primary mr-auto" id="#loginBtn" style="margin: auto; display: block;">Log In</button>			        			
										</div>
									</fieldset>
								</form>
							</div>
							<div class="model-footer">
								<div class="row text-center">
									<div class="col">
										<button type="button" class="btn btn-link forgot_password_collapse_link" data-toggle="collapse" href="#forgot_password_collapse" aria-expanded="false" aria-controls="forgot_password_collapse">
											Forgot password?
										</button>	
									</div>
								</div>

								<div class="collapse" id="forgot_password_collapse" style="padding-bottom: 3%;">
									<div class="row text-center">
										<div class="col">
											<hr/>
											<h5>Password Reset Request</h5>
											<p>Please enter your User ID and we will send a reset password request to the user administrator.											
												<br>Once approved, the password will be sent to the email associated with your User ID.
											</p>
										</div>
									</div>
									<div class="row">
										<div class="col-sm-3"></div>
										<div class="col-sm-6">
											<form class="needs-validation" novalidate>
												<fieldset>
													<div class="form-group">
									                	<input type="password" class="form-control" id="forgot_password_userId" placeholder="User ID" required>
									                	<div class="invalid-feedback">Please fill out this field.</div>
									                </div>
									                <button type="submit" class="btn btn-secondary mr-auto text-center" style="margin: auto; display: block;">Send Reset Password Request</button>
												</fieldset>
											</form>
										</div>
										<div class="col-sm-3"></div>
									</div>								
								</div>
							</div>
					  	</div>
					  	
					  	<!-- User Admin Login Pane -->
					  	<div class="tab-pane fade container-fluid" id="userAdminLoginPane" style="padding-bottom: 3%;">
							<div class="model-header text-center">
								<h5 style="padding-top: 5%; padding-bottom: 5%;">Log in as User Administrator</h5>
							</div>				    	
							<div class="model-body mx-3">
								<form class="needs-validation" novalidate>
		 							<fieldset>
		 								<div class="form-group row">
		 									<div class="col-sm-2"></div>
										    <label for="userAdminUserId" class="col-sm-2 col-form-label text-right"><i class="fas fa-user"></i></label>
										    <div class="col-sm-5">
										    	<input type="text" class="form-control" id="userAdminUserId" placeholder="User ID" required>
										    	<div class="invalid-feedback">Please fill out this field.</div>
											</div>
											<div class="col-sm-3"></div>			
										</div>
										<div class="form-group row" style="padding-bottom: 3%;">
		 									<div class="col-sm-2"></div>
										    <label for="userAdminPassword" class="col-sm-2 col-form-label text-right"><i class="fas fa-lock"></i></label>
										    <div class="col-sm-5">
										    	<input type="password" class="form-control" id="userAdminPassword" placeholder="Password" required>
												<div class="invalid-feedback">Please fill out this field.</div>
											</div>
											<div class="col-sm-3"></div>			
										</div>
										<div class="form-group row text-center">
											<button type="submit" class="btn btn-primary mr-auto" id="#loginBtn" style="margin: auto; display: block;">Log In</button>			        			
										</div>
									</fieldset>
								</form>
							</div>
							<div class="model-footer" style="padding-bottom: 4%;"></div>
					  	</div>					  	
					</div>
		    	</div>
			</div>
		</div>
		<!-- End of Contents -->
		
		<!-- Start of Footer -->
		<div class="navbar navbar-dark bg-primary">
			<div class="container-fluid">
				<footer class="footer" style="min-width: 100%;">
					<div class="row">
						<div class="col">
							<h6 style="color: white;">© 2020 Copyright Stark Industries</h6>
						</div>
						<div class="col">
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