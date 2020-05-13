// Scroll to top of page
function scrollToTopFunction() {
	document.body.scrollTop = 0;
	document.documentElement.scrollTop = 0;
}

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

$(document).ready(function () {
	$("#topVotedQnsBtn").click(function(event) {
		let el = event.target;
		
		let username = el.getAttribute('data-user');
		
		let year = document.querySelector('#ddlYears').value;
		let string = "/topVotedQns?year=" + year + "&username=" + username;
		$(this).attr("href", string);
	})
	
	$("#monthlyReportBtn").click(function() {
		let el = event.target;
		
		let username = el.getAttribute('data-user');
		
		let monthSelect = document.getElementById('monthSelect').value;
		let splitString = monthSelect.split('-');
		let year = splitString[0];
		let month = splitString[1];
		
		console.log(year);
		console.log(month);
		
		if (document.getElementById('monthSelect').value != "") {
			let string = "/monthlyReport?year=" + year + "&month=" + month + "&username=" + username;
			$(this).attr("href", string);
		}
		
		
	})
	
	$("#weeklyReportBtn").click(function() {
		let el = event.target;
		
		let username = el.getAttribute('data-user');
		
		let weekSelect = document.getElementById('weekSelect').value;
		let splitString = weekSelect.split('-W');
		let year = splitString[0];
		let week = splitString[1];
		
		console.log(year);
		console.log(week);
		
		if (document.getElementById('weekSelect').value != "") {
			var string = "/weeklyReport?year=" + year + "&week=" + week + "&username=" + username;
			$(this).attr("href", string);
		}

	})
});
