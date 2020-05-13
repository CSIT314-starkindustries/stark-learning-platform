<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Generate Monthly Report</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/all.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/monthlyReport.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<jsp:useBean id="now" class="java.util.Date" />
		<fmt:formatDate var="nowDate" value="${now}" pattern="yyyy-MM-dd" />
		
		<style>
		@media print {
		  #printingBtn, #backToForumLink {
		    display: none;
		  }
		  .hr {
		  	background-color: #455A64 !important;
		  	-webkit-print-color-adjust: exact;
		  }
		}
		</style>
		
	</head>
	
	<body>
		<!-- Start of Content -->
		<div class="container-fluid">
			<div class="row">
				<div class="d-flex w-100 mt-2">
					<div class="col-md-12 d-flex align-items-center justify-content-start">
						<a href="moderatorForum?username=${loggedInUser}" id="backToForumLink" style="color: #ea8a8a;"><i class="far fa-hand-point-left mr-1"></i>Back to Forum</a>
					</div>
				</div>
			</div>		
			<div class="row">
				<div class="col text-center py-3">
					<h3 class="font-weight-bolder">Monthly Report</h3>
					<p id="monthYear">${requestedMonth} ${requestedYear}</p>
				</div>
			</div>
			<div class="row pt-1">
				<div class="col-sm-2"></div>
				<div class="col-sm-8 container-fluid">
					<div class="row text-center">
						<div class="col">
							<p>
								<b>Requested By:</b>
								<span id="modId" class="pl-2">${loggedInUser}</span>
							</p>
						</div>						
						<div class="col">
							<p>
								<b>Date Requested:</b>
								<span id="requestedDate" class="pl-2">${nowDate}</span>
							</p>
						</div>
					</div>
					<hr style="background-color: #455A64">
				</div>
				<div class="col-sm-2"></div>
			</div>
			
			<!-- Start of Question Container -->
			<c:forEach items="${monthList}" var="question" varStatus="loop">
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8 container-fluid">
					<h5 class="text-left font-weight-bold">Question</h5>
					<p>
						${question.title}
					</p>
					<hr>
				</div>
				<div class="col-md-2"></div>
			</div>
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8 container-fluid">
					<div class="row">
						<p class="col-6 my-auto d-flex justify-content-start">
							<span class="font-weight-bold">User ID:</span>
							<span id="userId" class="pl-2">${question.stud_username}</span>
						</p>
						<p class="col-6 my-auto d-flex justify-content-end">
							<span class="font-weight-bold">Date Posted:</span>
							<span id="datePosted" class="pl-2">${question.date_posted}</span>
						</p>
					</div>
					<div class="row">
						<p class="col-md-4 my-auto d-flex justify-content-start">
							<span class="font-weight-bold">Votes:</span>
							<span id="noOfVotes" class="pl-2">${question.total_votes}</span>
						</p>
						
						<!-- 
						<p class="col-md-2 my-auto d-flex justify-content-start">
							<span class="font-weight-bold">Views:</span>
							<span id="noOfViews" class="pl-2">24</span>
						</p>
						
						
						<p class="col-md-4 my-auto d-flex justify-content-center">
							<span class="font-weight-bold">No. of Answers:</span>
							<span id="noOfAns" class="pl-2">5</span>
						</p>
						<p class="col-md-4 my-auto d-flex justify-content-end">
							<span class="font-weight-bold">No. of Comments:</span>
							<span id="noOfQns" class="pl-2">10</span>
						</p>
						-->
					</div>
					<hr class="hr" style="background-color: #455A64">
				</div>
				<div class="col-md-2"></div>
			</div>
			</c:forEach>
			<!-- End of Question Container -->
			
			<!-- Print Report Button -->
			<div class="row">
				<div class="col text-center mt-3 mb-3">
					<button type="submit" id="printingBtn" class="btn btn-primary" onClick="window.print();">Print Report</button>					
				</div>
			</div>
			<!-- Print Report Button -->
			
		</div>
		<!-- End of Content -->

		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>      	
	
	</body>
</html>