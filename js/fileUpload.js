var form = $('#mainForm'),
	file = $('#exampleInputFile'),
	url  = $.trim(form.attr('action')),
	progress = $('#progress-bar');
	
	
	form.submit(function(event) {
		event.preventDefault();	
		$.ajaxUpload({
			url : url,		 
			form : form,
			beforeSend : function() {
				progress.removeClass('hide').find('.progress-bar').width(0);		
			},
			uploadProgress: function(event, position, total, percent) {
				progress.find('.progress-bar').width(percent + '%');		
			}
		});
	});