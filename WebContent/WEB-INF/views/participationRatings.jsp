<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Top 10 Students' Participation Ratings Report</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/all.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/participationRatings.css">	
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<jsp:useBean id="now" class="java.util.Date" />
		<fmt:formatDate var="nowDate" value="${now}" pattern="yyyy-MM-dd" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/participationRatings.js"></script>
		
	</head>

	<body>
		<!-- Start of Page Container -->
		<div class="pageCon">
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
						<h3 class="font-weight-bolder">Top 10 Students' Participation Ratings Report</h3>
					</div>
				</div>
				
				<div class="row pt-1">
					<div class="col-sm-2"></div>
					<div class="col-sm-8 container-fluid">
						<div class="row text-center">
							<div class="col">
								<p>
									<b>Requested By:</b>
									<span id="userId" class="pl-2">${loggedInUser}</span>
								</p>
							</div>						
							<div class="col">
								<p>
									<b>Date Requested:</b>
									<span id="reportDate" class="pl-2">${nowDate}</span>
								</p>
							</div>
						</div>
					</div>
					<div class="col-sm-2"></div>
				</div>
				
				<div class="row py-2">
					<div class="col-sm-2"></div>
					<div class="col-sm-8 container-fluid">
						<div class="row">
							<table class="table text-center table-responsive-md">
								<thead>
							    	<tr class="d-flex">
								    	<th scope="col" class="col-4">Rank</th>
								      	<th scope="col" class="col-4">User ID</th>
								      	<th scope="col" class="col-4">Participation Rating</th>
							    	</tr>
							  	</thead>
							  	<tbody>
							  		<c:forEach items="${studList}" var="student" varStatus="loop">
							    	<tr class="d-flex" id="rankingRow">
							     	 	<td class="col-4 text-center" id="rankCol">${loop.index+1}</td>
							      		<td class="col-4 text-center" id="userIdCol">${student.username}</td>
							      		<td class="col-4 text-center" id="participationRatingCol">
							      			<span id="participationRating">${student.participation_rating}</span> / 100
							      		</td>
							    	</tr>
							    	</c:forEach>
							    </tbody>
							</table>
							
						</div>
						
					</div>
					<div class="col-sm-2"></div>
				</div>
								
				<div class="row">
					<div class="col text-center mt-3 mb-3">
						<button type="submit" id="printPageBtn" class="btn btn-primary" onclick="printpage()">Print Report</button>					
					</div>
				</div>
				
			</div>
		</div>
		<!-- End of Page Container -->
		
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>      	
	
	</body>
</html>