// Scroll to top of page
function scrollToTopFunction() {
	document.body.scrollTop = 0;
	document.documentElement.scrollTop = 0;
}
/*
$(document).on("click", ".ansEdit", function() {
	var answer = $(this).attr('data-item');
	$("#edit-ans-id-val").val(answer.id);
	$("#edit-ans-body-val").val(answer.description);
});

$(document).ready(function() {

	  $('a[data-toggle=modal], button[data-toggle=modal]').click(function () {

	    var data_id = '';

	    if (typeof $(this).data('id') !== 'undefined') {

	      data_id = $(this).data('id');
	    }

	    $('#my_element_id').val(data_id);
	  })
});
*/

$(document).ready(function () {
	$("#qnAsk").click(function(event) {
		
	})
	
	$(".qnEdit").click(function(event) {

	})
	
	$("#qnAns").click(function(event) {

	})
	
	$(".ansEdit").click(function(event) {
	  	let el = event.target;
	    
	  	let id = el.getAttribute('data-id');
	  	let desc = el.getAttribute('data-desc');
	    
	    $("#edit-ans-id").val(id);
	    $("#edit-ans-body").val(desc);
	    
	    console.log(id);
	    console.log(desc);
	})
	
	$(".qnAddCom").click(function(event) {
	  	let el = event.target;
	    
	  	let id = el.getAttribute('data-id');
	    
	  	$("#comment-qid").val(id);
	  	$("#comment-aid").val(0);
	    
	    console.log(id);
	})
	
	$(".ansAddCom").click(function(event) {
	  	let el = event.target;
	    
	  	let id1 = el.getAttribute('data-idone');
	    let id2 = el.getAttribute('data-idtwo');
	  	
	    $("#comment-qid").val(id1);
	  	$("#comment-aid").val(id2);
	    
	    console.log(id1);
	    console.log(id2);
	})
	
	$(".editCom").click(function(event) {
	  	let el = event.target;
	    
	  	let id = el.getAttribute('data-id');
	  	let desc = el.getAttribute('data-desc');
	    
	    $("#edit-com-id").val(id);
	    $("#edit-com-body").val(desc);
	    
	    console.log(id);
	    console.log(desc);
	})
});

/*
$('#askQns_modal').on('show.bs.modal', function (e) {
    //$(this).find('.modal-body').html('Fired By: ' + e.relatedTarget.id);
	console.log("relatedTarget is: " + e.relatedTarget.id);
})

$('#ansQns-modal').on('show.bs.modal', function (e) {
    //$(this).find('.modal-body').html('Fired By: ' + e.relatedTarget.id);
	console.log("relatedTarget is: " + e.relatedTarget.id);
})

$('#add-comment-modal').on('show.bs.modal', function (e) {
    //$(this).find('.modal-body').html('Fired By: ' + e.relatedTarget.id);
	console.log("relatedTarget is: " + e.relatedTarget.id);
})

$('#edit-com-modal').on('show.bs.modal', function (e) {
    //$(this).find('.modal-body').html('Fired By: ' + e.relatedTarget.id);
	console.log("relatedTarget is: " + e.relatedTarget.id);
})

$('#edit-ans-modal').on('show.bs.modal', function (e) {
    //$(this).find('.modal-body').html('Fired By: ' + e.relatedTarget.id);
	console.log("relatedTarget is: " + e.relatedTarget.id);
})

$('#edit-qns-modal').on('show.bs.modal', function (e) {
    //$(this).find('.modal-body').html('Fired By: ' + e.relatedTarget.id);
	console.log("relatedTarget is: " + e.relatedTarget.id);
})*/