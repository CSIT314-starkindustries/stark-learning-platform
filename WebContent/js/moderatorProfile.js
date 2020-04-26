// Bootstrap form validation
(function() {
	'use strict';
	window.addEventListener('load', function() {
		// Fetch all the forms we want to apply custom Bootstrap validation styles to
		var forms = document.getElementsByClassName('needs-validation');
		// Loop over them and prevent submission
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

// Scroll to top of page
function scrollToTopFunction() {
	document.body.scrollTop = 0;
	document.documentElement.scrollTop = 0;
}

window.onload = function () {
    var currentPassword = document.getElementById("currentPassword");
    var newPassword = document.getElementById("newPassword");
    currentPassword.onchange = ResetPassword;
    newPassword.onkeyup = ResetPassword;
    
    function ResetPassword() {
    	newPassword.setCustomValidity("");
        if (currentPassword.value == newPassword.value) {
        	newPassword.setCustomValidity("Passwords are the same.");
        }
    }
} 