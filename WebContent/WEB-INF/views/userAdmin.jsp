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
		<div class="row" style="background-color: rgba(248, 245, 240, 1);">
			<div class="col">
				<a href = ""><button type="button" class="btn btn-secondary">Create New User</button></a>
			</div>
		</div>
		
		<div class="">
			<table class="table table-hover">
				<thead>
			    	<tr>
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
					    <th scope="row">Default</th>
					    <td>Column content</td>
					    <td>Column content</td>
					    <td>Column content</td>
					    <td>Column content</td>
					    <td>Column content</td>
			   		</tr>
				</tbody>
			</table>
		</div> 
		<!-- End of Content -->

		<!-- Footer -->
		<div class = "navbar navbar-dark bg-primary fixed-bottom">
			<footer class="footer">
		  		<h6 style = "color: white;">© 2020 Copyright Stark Industries</h6>		
			</footer>
		</div>
		<!-- End of Footer -->
		
	</body>
</html>