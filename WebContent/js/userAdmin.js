function suspendFunction() {
	var x = document.getElementById("suspendOff");
	if (x.innerHTML === "On") {
		x.innerHTML = "Off";
	} else {
		x.innerHTML = "On";
		if (x.innerHTML === "On"){
			$(document).ready(function(){
				$("#suspendUserModal").modal();
			});
		}else{
			$(document).ready(function(){
				$("#suspendUserModal").modal("hide");
			});
		}
	}
}
			
(function() {
	'use strict';
	window.addEventListener('load', function() {
		var forms = document.getElementsByClassName('needs-validation');
		var validation = Array.prototype.filter.call(forms, function(form) {
			form.addEventListener('submit', function(event) {
				if (form.checkValidity() === false) {
					event.preventDefault();
					event.stopPropagation();
				}
				form.classList.add('was-validated');
			}, false);
		});
	}, false);
})();
			
function onSubmitResetPw() {
	$("#resetPwModal").modal("hide");
	$("#onSubmitResetPwModal").modal("show");
}
			
function onSubmitSuspendUser() {
	$("#suspendUserModal").modal("hide");
	$("#onSubmitSuspendUserModal").modal("show");
}

function scrollToTopFunction() {
	document.body.scrollTop = 0;
	document.documentElement.scrollTop = 0;
}