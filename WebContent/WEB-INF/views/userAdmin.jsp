<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Stark Industries</title>
		<link rel="stylesheet" href="/StarkLearningApp/css/bootstrap.min.css">
		<link rel="stylesheet" href="/StarkLearningApp/css/bootstrap.css">
	</head>
	
	<style>
		.table th {
	    	text-align: center;
		}
		
		#aboveTable {
			background-color: #ecf0f1;
		}
	</style>
	
	<body>
		<!-- Navbar -->
		<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
		  <a class="navbar-brand" href="home_page">Stark Industries</a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		
		  <div class="collapse navbar-collapse" id="navbarColor01">		    
		    <div class = "ml-auto">
				<a href = "#"><button type="button" class="btn btn-link" style="margin-right: 10px;">Admin</button></a>
				<a href = "home_page"><button type="button" class="btn btn-outline-secondary">Logout</button></a>
		    </div>

		  </div>
		</nav>
		<!-- End of Navbar -->
		
		<!-- Content -->
		<div class="container-fluid">
		
			<div class="row" id="aboveTable">
				<div class="col-md-3">
					<a href = ""><button type="button" class="btn btn-outline-primary">Create New User</button></a>
				</div>
				<div class="col-md-3">
					<fieldset>
					  <div class="">
					    <div class="custom-control custom-checkbox custom-control-inline">
					      <input type="checkbox" class="custom-control-input" id="studentCheck" value="" checked="">
					      <label class="custom-control-label" for="studentCheck">Student</label>
					    </div>
					    <div class="custom-control custom-checkbox custom-control-inline">
					      <input type="checkbox" class="custom-control-input" id="moderatorCheck" value="" checked="">
					      <label class="custom-control-label" for="moderatorCheck">Moderator</label>
					    </div>
					  </div>			
					</fieldset>
				</div>
				<div class="col-md-3">
					<form class="form-inline my-2 my-lg-0">
				      <input class="form-control mr-sm-2" type="text" placeholder="Search">
				      <button class="btn btn-secondary" type="submit">Search</button>
				    </form>
				</div>
			</div>
			
			<div class="">
				<table class="table table-hover table-bordered">
					<thead>
				    	<tr>
							<th scope="col">#</th>
							<th scope="col">User ID</th>
				      		<th scope="col">Name</th>
				      		<th scope="col">User Type</th>
						    <th scope="col">Information</th>
						    <th scope="col">Reset Password</th>
						    <th scope="col">Suspend User</th>
				    	</tr>
				  	</thead>
				  	<tbody>
				    	<tr>
						    <th scope="row">1</th>
						    <td>Column content</td>
						    <td>Column content</td>
						    <td>Column content</td>
						    <td>Column content</td>
						    <td>Column content</td>
						    <td>Column content</td>
				   		</tr>
					</tbody>
				</table>
			</div>
			
		</div> 
		<!-- End of Content -->

		<!-- Footer -->
		<div class = "navbar navbar-dark bg-primary fixed-bottom">
			<footer class="footer">
		  		<h6 style = "color: white;">© 2020 Copyright Stark Industries</h6>		
			</footer>
		</div>
		<!-- End of Footer -->
		
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
		
	</body>
</html>