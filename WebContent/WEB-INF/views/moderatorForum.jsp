<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Moderator Forum</title>
		<link rel="stylesheet" href="/StarkLearningApp/css/bootstrap.min.css">
		<link rel="stylesheet" href="/StarkLearningApp/css/bootstrap.css">
		<link rel="stylesheet" href="/StarkLearningApp/css/all.css"> 
		<link rel="stylesheet" href="/StarkLearningApp/css/modForum.css">		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script type="text/javascript" src="/StarkLearningApp/js/moderatorForum.js"></script>
		
		<script>
		    window.onload = function () {
		        //Reference the DropDownList.
		        var ddlYears = document.getElementById("ddlYears");
		 
		        //Determine the Current Year.
		        var currentYear = (new Date()).getFullYear();
		 		
		        //Loop and add the Year values to DropDownList.
		        for (var i = currentYear; i >= 2000 ; i--) {
		        	var option = document.createElement("OPTION");
		            option.innerHTML = i;
		            option.value = i;
		            ddlYears.appendChild(option);
		        }
		    };
		</script>
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
					<div class="nav-item col-sm-6"></div>
					<div class="nav-item col-sm-4 text-sm-left text-md-right text-lg-right">
						<div class="dropdown" role="group">
							<button id="userSettingToggleBtn" type="button" class="btn btn-link dropdown-toggle" data-toggle="dropdown">Moderator</button>
						    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userSettingToggleBtn">
						      	<a class="dropdown-item" href="moderatorProfile" id="moderatorProfileLink">
						      		<span class="mr-3"><i class="fas fa-user-cog"></i></span>View Profile
						      	</a>
						      	<a class="dropdown-item" href="moderatorForum" id="moderatorForumLink">
						      		<span class="mr-3"><i class="fas fa-chalkboard-teacher"></i></span>My Forum
						      	</a>
						      	<a class="dropdown-item" href="home" id="logoutLink">
						      		<span class="mr-3"><i class="fas fa-sign-out-alt"></i></span>Logout
						      	</a>
							</div>
						</div>
					</div>
					<div class="nav-item col-sm-4 d-sm-block d-md-none">
		                <div class="dropdown">
			                <button class="btn btn-link dropdown-toggle" id="smallerscreenmenu" data-toggle="dropdown">Generate Report Options</button>
			                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="smallerscreenmenu">
			                    <a class="dropdown-item" href="#" data-toggle="tab" data-target="#yearlyReportPane">Top Voted Questions of the Year</a>
			                    <a class="dropdown-item" href="#" data-toggle="tab" data-target="#monthlyReportPane">Monthly Questions</a>
			                    <a class="dropdown-item" href="#" data-toggle="tab" data-target="#weeklyReportPane">Weekly Questions</a>
			                    <a class="dropdown-item" href="#" data-toggle="tab" data-target="#participationRatingPane">Top Students' Participation Ratings</a>
			                </div>
		                </div>
		            </div>
			    </div>
			</nav>
			<!-- End of Navbar -->			
			
			<!-- Start of Contents -->
			<div class="container-fluid">
				<div class="row">
				
					<!-- Start of Side Navbar -->
					<div class="sidebar-container col-sm-2 d-none d-md-block">
						<div class="list-group">
							<div class="list-group-item sidebar-separator-title text-muted d-flex w-100 align-items-center justify-content-center" style="background-color: #ebf7f6; height: 35px;">
			                  <small class="font-weight-bold">GENERATE REPORT</small>
			               	</div>
				            <a href="#" class="list-group-item list-group-item-action flex-column active" data-toggle="tab" data-target="#yearlyReportPane">
				                <div class="d-flex w-100 justify-content-center align-items-center">
				                	<span class="mr-3"><i class="fas fa-trophy"></i></span>
				                    <span>Top Voted Questions of the Year</span>
				                </div>
				            </a>
				            <a href="#" class="list-group-item list-group-item-action flex-column" data-toggle="tab" data-target="#monthlyReportPane">
				                <div class="d-flex w-100 justify-content-center align-items-center" style="padding-right: 6%;">
				                    <span class="mr-3"><i class="fas fa-calendar-alt"></i></span>
				                    <span>Monthly Questions</span>
				                </div>
				            </a>
				            <a href="#" class="list-group-item list-group-item-action flex-column" data-toggle="tab" data-target="#weeklyReportPane">
				                <div class="d-flex w-100 justify-content-center align-items-center" style="padding-right: 10%;">
				                    <span class="mr-3"><i class="fas fa-calendar-week"></i></span>
				                    <span>Weekly Questions</span>
				                </div>
				            </a>
				            <a href="#" class="list-group-item list-group-item-action flex-column" data-toggle="tab" data-target="#participationRatingPane">
				                <div class="d-flex w-100 justify-content-center align-items-center">
				                    <span class="mr-3"><i class="fas fa-award"></i></span>
				                    <span>Top Students' Participation Ratings</span>
				                </div>
				            </a>
						</div>
					</div>
					<!-- End of Side Navbar -->

					<div id="myTabContent" class="col-sm-10 tab-content">
						<div class="tab-pane fade show active" id="yearlyReportPane">
							<!-- Container above table -->
							<div class="row d-flex align-items-center header-container">
								<div class="col-md-2">
									<a href="topVotedQns" role="button" class="btn btn-outline-primary" id="genReportBtn">Generate Report</a>
								</div>
								<div class="col-md-4">
									<form class="needs-validation" novalidate>
										<div class="form-group" style="margin-top: 15px;">
											<select class="form-control" id="ddlYears"></select>
										</div>
									</form>
								</div>
							</div>
							<!-- End of Container above table -->
								
							<!-- Table -->
							<div class="row">
								<div class="table-responsive">
									<table class="table table-hover">
										<thead>
											<tr>
												<th scope="col" class="text-center" style="border-top: none;">#</th>
												<th scope="col" class="text-center" style="border-top: none;">User ID</th>
												<th scope="col" class="text-center" style="border-top: none;">Year</th>
												<th scope="col" class="text-center" style="border-top: none;">Vote</th>
												<th scope="col" class="text-center" style="border-top: none;">Questions</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td class="font-weight-bold">1</td>
												<td class="text-center"><a href="studentProfile">UserXXX</a></td>
												<td class="text-center">2020</td>
												<td class="text-center">200</td>
												<td>YEARLY... Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
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
													Donec egestas arcu eu felis volutpat euismod.
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<!-- End of Table -->
						</div>
						
						<div class="tab-pane fade" id="monthlyReportPane">
							<!-- Container above table -->
							<div class="row d-flex align-items-center header-container">
								<div class="col-md-2">
									<a href="monthlyReport" role="button" class="btn btn-outline-primary" id="genReportBtn">Generate Report</a>
								</div>
								<div class="col-md-4">
									<form class="needs-validation" novalidate>	
										<div class="form-group" style="margin-top: 15px;">
											<input class="form-control" type="month" min="2000-01">
										</div>
									</form>
								</div>
							</div>
							<!-- End of Container above table -->
								
							<!-- Table -->
							<div class="row">
								<div class="table-responsive">
									<table class="table table-hover">
										<thead>
											<tr>
												<th scope="col" class="text-center" style="border-top: none;">#</th>
												<th scope="col" class="text-center" style="border-top: none;">User ID</th>
												<th scope="col" class="text-center" style="border-top: none;">Month/Year</th>
												<th scope="col" class="text-center" style="border-top: none;">Questions</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td class="font-weight-bold">1</td>
												<td class="text-center"><a href="studentProfile">UserXXX</a></td>
												<td class="text-center">April 2020</td>
												<td>MONTHLY... Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
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
													Donec egestas arcu eu felis volutpat euismod.
												</td>
											</tr>
											<tr>
												<td class="font-weight-bold text-center">2</td>
												<td class="text-center"><a href="studentProfile">UserXXX</a></td>
												<td class="text-center">April 2020</td>
												<td>MONTHLY... Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
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
													Donec egestas arcu eu felis volutpat euismod.
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<!-- End of Table -->
						</div>
						
						<div class="tab-pane fade" id="weeklyReportPane">
							<!-- Container above table -->
							<div class="row d-flex align-items-center header-container">
								<div class="col-md-2">
									<a href="weeklyReport" role="button" class="btn btn-outline-primary" id="genReportBtn">Generate Report</a>
								</div>
								<div class="col-md-4">
									<form class="needs-validation" novalidate>
										<div class="form-group" style="margin-top: 15px;">
											<input class="form-control" type="week" min="2000-01">
										</div>
									</form>
								</div>
							</div>
							<!-- End of Container above table -->
								
							<!-- Table -->
							<div class="row">
								<div class="table-responsive">
									<table class="table table-hover">
										<thead>
											<tr>
												<th scope="col" class="text-center" style="border-top: none;">#</th>
												<th scope="col" class="text-center" style="border-top: none;">User ID</th>
												<th scope="col" class="text-center" style="border-top: none;">Week</th>
												<th scope="col" class="text-center" style="border-top: none;">Questions</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td class="font-weight-bold text-center">1</td>
												<td class="text-center"><a href="studentProfile">UserXXX</a></td>
												<td class="text-center">17</td>
												<td>WEEKLY... Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
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
													Donec egestas arcu eu felis volutpat euismod.
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<!-- End of Table -->
						</div>
						
						<div class="tab-pane fade" id="participationRatingPane">
							<!-- Container above table -->
							<div class="row d-flex align-items-center" style="padding: 25px 0px; background-color: #dce3e6;">
								<div class="col-md-2">
									<a href="participationRatings" role="button" class="btn btn-outline-primary" id="genReportBtn">Generate Report</a>
								</div>
							</div>
							<!-- End of Container above table -->
								
							<!-- Table -->
							<div class="row">
								<div class="table-responsive">
									<table class="table table-hover">
										<thead>
											<tr>
												<th scope="col" class="text-center" style="border-top: none;">#</th>
												<th scope="col" class="text-center" style="border-top: none;">User ID</th>
												<th scope="col" class="text-center" style="border-top: none;">Participation Ratings</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td class="font-weight-bold text-center">1</td>
												<td class="text-center"><a href="studentProfile">UserXXX</a></td>
												<td class="text-center">80/100</td>
											</tr>
											<tr>
												<td class="font-weight-bold text-center">2</td>
												<td class="text-center"><a href="studentProfile">UserXXX</a></td>
												<td class="text-center">76/100</td>
											</tr>
											<tr>
												<td class="font-weight-bold text-center">3</td>
												<td class="text-center"><a href="studentProfile">UserXXX</a></td>
												<td class="text-center">68/100</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<!-- End of Table -->
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