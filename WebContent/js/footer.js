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


// Comparing password and confirm password for registration form
window.onload = function () {
    var regPassword = document.getElementById("regPassword");
    var regConfirmPassword = document.getElementById("regConfirmPassword");
    regPassword.onchange = ConfirmPassword;
    regConfirmPassword.onkeyup = ConfirmPassword;
    
    function ConfirmPassword() {
    	regConfirmPassword.setCustomValidity("");
        if (regPassword.value != regConfirmPassword.value) {
        	regConfirmPassword.setCustomValidity("Passwords do not match.");
        }
    }
} 