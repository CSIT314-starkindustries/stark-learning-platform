<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Stark Industries</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/all.css"> 
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/userAdmin.css">
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/userAdmin.js"></script>
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
					  
					  <form id="studOrModForm">
					    <div id="studentCheckDiv" class="col-md-4 custom-control custom-checkbox custom-control-inline">
					      <input type="radio" class="custom-control-input" id="studentCheck" name="userRadioBox" value="student" onchange="getUserInfo()">
					      <label class="custom-control-label" for="studentCheck">Student</label>
					    </div>
					    <div id="moderatorCheckDiv" class="col-md-4 custom-control custom-checkbox custom-control-inline">
					      <input type="radio" class="custom-control-input" id="moderatorCheck" name="userRadioBox" value="moderator" onchange="getUserInfo()">
					      <label class="custom-control-label" for="moderatorCheck">Moderator</label>
					    </div>
					    </form>
					    
					  </div>	
					</fieldset>
				</div>
				<div class="col-md-6">
				
					<form class="form-inline" id="searchForm">
					  <input class="form-control form-control-sm mr-3 w-75" type="text" placeholder="Search" aria-label="Search" name="searchUserName">
					  <button type="button" id="searchBtn" onclick="searchForUser()"><i class="fas fa-search" aria-hidden="true"></i></button>
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
							<th scope="col" class="tbl">User name</th>
				      		<th scope="col" class="tbl">User Type</th>
						    <th scope="col" class="tbl">Total Question<br> Asked</th>
							<th scope="col" class="tbl">Total Answer<br> Posted</th>
							<th scope="col" class="tbl">Total Comment<br> Posted</th>
							<th scope="col" class="tbl">Participation<br> Rating</th>
							<th scope="col" class="tbl">Suspend<br> User</th>
							<th scope="col" class="tbl">Reset<br> Password</th>
				    	</tr>
				  	</thead>
				  	<tbody>
				  	
				  		<!-- for loop here -->
				  		<c:forEach items="${userInfo}" var="user" varStatus="loop">
				    	<tr>
				    		<td>${user.username}</td>
						    <td>${userType}</td>
				    	
				    		<c:choose>
				    			<c:when test="${userType=='Student'}">
				    				<td>${user.totalQnAsked}</td>
								    <td>${user.totalAnsPosted}</td>
								    <td>${user.totalCommentPosted}</td>
								    <td>${user.participation_rating}</td>
								    <td>
								    	<c:if test="${user.isSuspended}">
								    			<input type="checkbox" class="suspend_btn" id="suspendBtn_${user.username}" checked>
								    	</c:if>
								    	<c:if test="${!user.isSuspended}">
								    			<input type="checkbox" class="suspend_btn" id="suspendBtn_${user.username}" >
								    	</c:if>
								    	
								    <!-- 
										<div class="form-group">
											<div class="d-inline custom-control custom-switch">
										      	<input type="checkbox" onclick="suspendFunction()" id="suspendBtn_$(user.username)" class="custom-control-input">
										      	<label class="custom-control-label" for="suspendBtn"></label>
										    </div>
										    <div class="d-inline font-weight-bold" id="suspendOff">
								    			Off
								    		</div>
										</div>
									 -->
									 
								    </td>
				    			</c:when>
				    			<c:when test="${userType=='Moderator'}">
				    				<td>-</td>
								    <td>-</td>
								    <td>-</td>
								    <td>-</td>
								    <td>-</td>
				    			</c:when>
				    			<c:otherwise>
				    				<td>-</td>
								    <td>-</td>
								    <td>-</td>
								    <td>-</td>
								    <td>-</td>
				    				<td>-</td>
								    <td>-</td>
								    <td>-</td>
				    			</c:otherwise>
				    		</c:choose>
							
		    				<td>
		 
						    	<button type="button" id="${userType}-${user.username}" class="resetButtons">
						    		<i class="fas fa-lock"></i>
						    	</button>
						    	 
						    </td>
				   		</tr>
				   		</c:forEach>
				   		<!-- end for loop here -->

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
					
			        	<form class="needs-validation" id="createNewUserForm" novalidate>
							<div class="">
						    	<div class="row d-flex justify-content-center form-group form-inline">
						    		<div class="">
						    			<span class="fas fa-user newUserIcon" aria-hidden="true"></span>
						      			<input type="text" class="form-control" id="newUserName" name="newUserID"  placeholder="User ID" required>
						      			
						    		</div>
						    	</div>
							    <div class="row d-flex justify-content-center form-group form-inline">
							    	<div class="">
							    		<span class="fas fa-lock newUserIcon" aria-hidden="true"></span>
							      		<input type="password" class="form-control" id="newPassword" name="newUserPassword" placeholder="Password" required>
							    	</div>
							    </div>
							    <div class="row d-flex justify-content-center form-group form-inline form-check">
							    	<div class="custom-control custom-radio custom-control-inline">
										<input type="radio" id="studentRadio" name="studOrModRadio" class="custom-control-input" value="student" required>
									  	<label class="custom-control-label" for="studentRadio">Student</label>
									</div>
									<div class="custom-control custom-radio custom-control-inline">
									  	<input type="radio" id="moderatorRadio" name="studOrModRadio" class="custom-control-input" value="moderator" required>
									  	<label class="custom-control-label" for="moderatorRadio">Moderator</label>
									</div>
							    </div>
						  	</div>
						  	<div class="modal-footer">
					      		<button type="submit" class="btn btn-primary mr-auto ml-auto" id="submitNewUserBtn" onclick="createUser()" value="create">Submit</button>
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
	<script>
		
		//when user admin create user account with used username
		if(${created == 'false'}){
			  alert("username taken");
		}
		
		var suspend_buttons = document.querySelectorAll("input[type='checkbox']");
		for(var i = 0; i <suspend_buttons.length; i++) {
			suspend_buttons[i].addEventListener("click",suspend_user);
		}
		
		var resetPw_buttons = document.getElementsByClassName("resetButtons");
		for(var i = 0; i < resetPw_buttons.length; i++) {
			resetPw_buttons[i].addEventListener("click",reset_user);
		}
		
		function reset_user(event) {
			var get_button_id = this.id;
			var user_info = get_button_id.split("-");
			
			var userType = user_info[0];
			var user_id = user_info[1];
			alert("you have reset password for " + user_id);
			
			sendToResetPwServlet(userType, user_id);
		}
		
		function sendToResetPwServlet(userType, user_id) {
			var xmlhttp;
			if(window.XMLHttpRequest) {
				xmlhttp = new XMLHttpRequest();
			}else {
				xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
			
			xmlhttp.onreadystatechange = function() {
				if(xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					console.log(xmlhttp.responseText);
				}
			}
			
			var params = "usertype=" + userType + "&" + "username=" + user_id
			xmlhttp.open('POST', "/resetPwServlet",true);
			xmlhttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
			xmlhttp.send(params);
		}
		
		function suspend_user(event) {
			var get_button_id = event.target.id;
			var user_id = get_button_id.replace("suspendBtn_","");
			if(document.getElementById(get_button_id).checked) {
				alert("You have suspended " + user_id);
				// send user_id to servelt to suspend 
			}else {
				alert("You have unsuspended " + user_id);
				// send user_id to servelt to unsuspend 
			}
			
			sendToSuspendServlet(user_id);
			
		}
		
		function sendToSuspendServlet(stud_id) {
			var xmlhttp;
			if(window.XMLHttpRequest) {
				xmlhttp = new XMLHttpRequest();
			}else {
				xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
			
			xmlhttp.onreadystatechange = function() {
				if(xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					console.log(xmlhttp.responseText);
				}
			}
			
			var params = "username=" + stud_id;
			xmlhttp.open('GET', "/suspendServlet?"+params,true);
			xmlhttp.send();
		}
		
		function getUserInfo() {
			document.getElementById("studOrModForm").action="displayUserServlet";
			document.getElementById("studOrModForm").method="POST";
			document.getElementById("studOrModForm").submit();	
		}
		
		function searchForUser() {
			document.getElementById("searchForm").action="/searchServlet";
			document.getElementById("searchForm").method="GET";
			document.getElementById("searchForm").submit();		
		}
		
		function createUser() {
			document.getElementById("createNewUserForm").action="/createUserServlet";
			document.getElementById("createNewUserForm").method="POST";
			document.getElementById("createNewUserForm").submit();
		}
		
	</script>
</html>