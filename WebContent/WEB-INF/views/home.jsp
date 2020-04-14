<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Welcome to Stark Industry</title>
		<link rel="stylesheet" href="/StarkLearningApp/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>         
		<script src="/StarkLearningApp/js/bootstrap.min.js"></script>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	</head>
	<style>
		.navbar {
			border-radius: 0;
		}
		
		#typing{
			animation: type 4s steps(16) infinite;
			overflow: hidden;
			white-space:nowrap;
			border-right: 4px solid white;
		}
		
		@keyframes type {
			0% {
				width:0ch;
			}
			100% {
				width:16ch;
			}
		}
		
		body {
			background-image: url(/StarkLearningApp/img/study.jpg);
			background-size: cover;
			background-repeat: no-repeat;
		}
		
		.centered {
		  position: absolute;
		  top: 50%;
		  left: 50%;
		  transform: translate(-50%, -50%);
		  color:white;
		  font-family: "Lucida Console", Courier, monospace;
		}
		
		html,body {
			height:100%;
		}
		
	</style>
	<body>
		<!-- Navigation bar -->
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle"
							data-toggle="collapse" data-target="#navMenu">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					
					<!-- Logo -->
					<a class="navbar-brand" href="/welcome_response">Stark Industries</a>
				</div>
				
				<!-- Login menu -->
				<div class="collapse navbar-collapse" id="navMenu">
					<ul class="nav navbar-nav navbar-right">
						
						<!-- Redirect to specific servlet -->
						<li><a href="login_page">Login</a></li>
						<li><a href="#">Sign up</a></li>
						<li><a href="#">Staff Login</a></li>
					</ul>
				</div>
			</div>
		</nav>
		<!-- end of Navigation bar -->
		
		<!-- Content -->
		<div class="centered">
			<h1 id="typing">Hello Students.</h1>
			<h3>Welcome to Stark's Learning Platform.</h3>
			<br>
			<button type="button class="btn btn-basic"
					style="background-color: black; border: none; font-size: 20px;">
				<a href="login_page"
					style="text-decoration: none; color: #ffffff !important;">Get Started</a>
			</button>
		</div>
		<!-- end of Content -->
	</body>
</html>