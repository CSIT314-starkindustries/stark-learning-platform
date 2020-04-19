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
		<link rel="stylesheet" href="/StarkLearningApp/css/home.css">		
		<link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
	</head>
	
	<body>		
		<nav class="navbar navbar-expand-lg navbar-dark bg-primary" id="topPage">
			<a class="navbar-brand" href="home_page">Stark Industries</a>
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
						<a class="nav-link" href="#login_modal">
							<button type="button" class="btn btn-link" data-toggle="modal" data-target="#login_modal" style="text-decoration: none;">
								Login
							</button>
						</a>
  					</li> 
 					<li class="nav-item">
 						<a class="nav-link" href="#register_modal">
	  						<button type="button" class="btn btn-outline-secondary" data-toggle="modal" data-target="#register_modal">
	  							<i class="fas fa-user"></i><span style="padding-left: 10px;">Register</span>
	  						</button>
 						</a>
  					</li>
			   	</ul>
		    </div>
		</nav>
		<!-- End of Navbar -->
		
		<!-- Content -->
		<div class="container-fluid" id="main">
			<div class="centered">
				<h2 id="typing" style="margin-bottom: 5%;">Welcome to Stark's!</h2>
				<br>
				<a href="#register_modal" style="text-decoration: none;">
					<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#register_modal">Get Started</button>
				</a>
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
			      		<form>
 							<fieldset>
 								<div class="form-group row">
 									<div class="col-sm-1"></div>
								    <label for="userIdInput_Reg" class="col-sm-1 col-form-label text-right"><i class="fas fa-user"></i></label>
								    <div class="col-sm-9">
								    	<input type="text" class="form-control" id="userIdInput_Reg" placeholder="User ID">
									</div>
									<div class="col-sm-1"></div>			
								</div>
								<div class="form-group row">
 									<div class="col-sm-1"></div>
								    <label for="passwordInput" class="col-sm-1 col-form-label text-right"><i class="fas fa-lock"></i></label>
								    <div class="col-sm-9">
								    	<input type="text" class="form-control" id="passwordInput" placeholder="Password">
									</div>
									<div class="col-sm-1"></div>			
								</div>
								<div class="form-group row">
 									<div class="col-sm-1"></div>
								    <label for="confirmPasswordInput" class="col-sm-1 col-form-label text-right"><i class="fas fa-check"></i></label>
								    <div class="col-sm-9">
								    	<input type="text" class="form-control" id="confirmPasswordInput" placeholder="Confirm Password">
									</div>
									<div class="col-sm-1"></div>			
								</div>
 							</fieldset>
 						</form>
					</div>
			    	<div class="modal-footer" style="text-align: center;">
			        	<button type="button" class="btn btn-primary mr-auto" id="#registerBtn" style="margin: auto; display: block;">Register</button>			        	
			    	</div>
			    </div>
			</div>
		</div>

		<!-- Login Modal -->
		<div class="modal fade" id="login_modal" tabindex="-1" role="dialog" aria-labelledby="modal" aria-hidden="true">
			<div class="modal-dialog  modal-dialog-centered" role="document">
		    	<div class="modal-content">
	    			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          			<span aria-hidden="true">&times;</span>
	        		</button>
		    		<ul class="nav nav-tabs">
						<li class="nav-item">
				    		<a class="nav-link active" data-toggle="tab" href="#home">Home</a>
				  		</li>
				  		<li class="nav-item">
				    		<a class="nav-link" data-toggle="tab" href="#profile">Profile</a>
				  		</li>
					</ul>
		    		<!-- 
		      		<div class="modal-header">
		        		<h5 class="modal-title">Modal title</h5>
		        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          			<span aria-hidden="true">&times;</span>
		        		</button>
		      		</div>
		      		<div class="modal-body">
		        		<p>Modal body text goes here.</p>
		      		</div>
		      		<div class="modal-footer">
		        		<button type="button" class="btn btn-primary">Save changes</button>
		        		<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		      		</div>
		      		-->
		    	</div>
			</div>
		</div>
		<!-- end of Content -->
		
		<!-- Footer -->
		<div class="navbar navbar-dark bg-primary">
			<div class="container-fluid">
				<footer class="footer" style="min-width: 100%;">
					<div class="row">
						<div class="col">
							<h6 style="color: white;">© 2020 Copyright Stark Industries</h6>
						</div>
						<div class="col">
							<a href="#topPage">
								<span style="float: right; color: white;"><i class="fas fa-arrow-alt-circle-up fa-2x"></i></span>	
							</a>
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