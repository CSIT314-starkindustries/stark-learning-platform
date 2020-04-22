<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Stark Industries</title>
		<link rel="stylesheet" href="/StarkLearningApp/css/bootstrap.min.css">
		<link rel="stylesheet" href="/StarkLearningApp/css/bootstrap.css">
		<link rel="stylesheet" href="/StarkLearningApp/css/all.css"> 
		<link rel="stylesheet" href="/StarkLearningApp/css/moderator.css">
		<script type="text/javascript" src="/StarkLearningApp/js/moderator.js"></script>
	</head>
	
	<body>
		<!-- Navbar -->
		<nav class="navbar navbar-expand-lg navbar-dark bg-primary" id="topPage">
			<a class="navbar-brand" href="home">Stark Industries</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
			  <span class="navbar-toggler-icon"></span>
			</button>
		
			<div class="navbar-collapse collapse" id="navbarColor01" style="">
				<ul class="navbar-nav ml-auto">	    
			   		<li class="nav-item">
						<a class="nav-link" href = "moderator">
							<button type="button" class="btn btn-link" id="moderatorBtn">Hi, Professor</button>
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
					<button type="button" class="btn btn-outline-primary" data-toggle="modal" data-target="#generateReportModal">Generate Report</button>
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
				      		<th scope="col" class="tbl">Question</th>
				    	</tr>
				  	</thead>
				  	<tbody>
				    	<tr>
						    <td class="font-weight-bold">1</td>
						    <td style="text-align:center;">123456</td>
						    <td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
						    Nullam volutpat ligula sit amet ipsum condimentum, id imperdiet urna efficitur. 
						    Maecenas convallis est vitae laoreet dictum. 
						    Integer facilisis dolor in ipsum dapibus convallis vel ut diam. 
						    Aenean lacinia nulla nisl, lobortis lobortis neque lacinia eget. 
						    Nunc sollicitudin sed risus at cursus. 
						    Integer malesuada malesuada nunc, non ultrices odio imperdiet luctus. 
						    Morbi vel nulla at ligula porta tincidunt eu imperdiet dolor. 
						    Aliquam pellentesque pharetra metus condimentum pretium. 
						    In hac habitasse platea dictumst. Nullam in quam metus. 
						    Aliquam lacinia lacinia felis, eu venenatis felis sodales quis. 
						    Donec egestas arcu eu felis volutpat euismod.</td>
				   		</tr>
					</tbody>
				</table>
			</div>
		</div>
		<!-- End of Table -->
		
		<!-- Generate Report Modal Box -->
		<div class="modal fade" id="generateReportModal" tabindex="-1" role="dialog" aria-labelledby="genReportLabel" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content">
		      		<div class="modal-header">
				        <h5 class="modal-title col-12 text-center font-weight-bold" id="genReportLabel">Generate Report
					        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
					          <span aria-hidden="true">&times;</span>
					        </button>
				        </h5>
		      		</div>
					<div class="container modal-body">
						<form class="needs-validation" novalidate>
							<div class="form-group form-check content-checkbox" id="radioSelection">
								<div class="custom-control custom-radio" id="yearRad">
								  <input class="custom-control-input" value="Year" type="radio" name="periodRadios" id="yearRadio" required>
								  <label class="custom-control-label" for="yearRadio">Year</label>
								</div>
								<div class="custom-control custom-radio" id="monthRad">
								  <input class="custom-control-input" value="Month" type="radio" name="periodRadios" id="monthRadio" required>
								  <label class="custom-control-label" for="monthRadio">Month</label>
								</div>
								<div class="custom-control custom-radio" id="dayRad">
								  <input class="custom-control-input" value="Day" type="radio" name="periodRadios" id="dayRadio" required>
								  <label class="custom-control-label" for="dayRadio">Day</label>
								</div>
							</div>
							<div class="modal-footer">
					      		<button type="button" onclick="onSelection()" class="btn btn-primary mr-auto ml-auto">Submit</button>
					      	</div>
						</form>
			      	</div>
			      	
		    	</div>
			</div>
		</div>
		<!-- End of Generate Report Modal Box -->
		
		<!-- GR (YEAR) Modal Box -->
		<div class="modal fade" id="grYearModal" tabindex="-1" role="dialog" aria-labelledby="grYearLabel" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content">
		      		<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					    	<span aria-hidden="true">&times;</span>
						</button>
		      		</div>
					<div class="modal-body yearDropDown">
						<form class="needs-validation" novalidate>
							<div class="row">
							<div class="col-md-10">
								<div class="col-auto my-1" id="yearSelection">
							      <select class="custom-select mr-sm-2 text-center" required>
							        <option value="">Choose the Year</option>
							        <option value="2020">2020</option>
							        <option value="2019">2019</option>
							        <option value="2018">2018</option>
							      </select>
							    </div>
							</div>
							<div class="col-md-2">
								<button type="button" id="goBtn" data-toggle="collapse" data-target="#genReportBrowse" aria-expanded="false" aria-controls="genReportBrowse">
									<i class="fas fa-check-circle" aria-hidden="true"></i>
								</button>
							</div>
							</div>
						</form>
			      	</div>
			      	<div class="modal-footer collapse" id="genReportBrowse">
							<form>
								<div class="form-group">
								    <div class="input-group">
								      <div class="custom-file">
								        <input type="file" class="custom-file-input" id="inputGroupFile02">
								        <label class="custom-file-label" for="inputGroupFile02">Choose file</label>
								      </div>
								      <div class="input-group-append">
								        <span class="input-group-text" id="">Upload</span>
								      </div>
								    </div>
								</div>
							</form>
						</div>
			      	
		    	</div>
			</div>
		</div>
		<!-- End of GR (YEAR) Modal Box -->
		
		<!-- End of Content -->

		<!-- Footer -->
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