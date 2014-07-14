$.ajaxUpload = function (options) {
    var settings = $.extend({
        data: options.data || new FormData(options.form[0]),
        type: 'POST',
        xhr: function () {

            var xhr = new window.XMLHttpRequest();
            //Upload progress
            xhr.upload.addEventListener("progress", function (event) {
                var percent = 0;
                var position = event.loaded || event.position; /*event.position is deprecated*/
                var total = event.total;
                if (event.lengthComputable) {
                    percent = Math.ceil(position / total * 100);
                }
                if (typeof (settings.uploadProgress) == 'function') {
                    settings.uploadProgress(event, position, total, percent);
                }
            }, false);

            return xhr;

        }
    },
    options,
	{
		cache: false,
        contentType: false,
        processData: false
	});
    return $.ajax(settings);
};