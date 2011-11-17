$('#home').live("pageshow", function() {
	$.couch.db("taskmgr").view("taskmgr/tasks", {
		success: function(data) {
			//console.log(data);
			$("#taskList").empty();
			$.each(data.rows, function(index, value) {
				var item = (value.value || value.doc);
				$("#taskList").append(
					$('<li>').append(
						$('<a>')
							.attr("href", "task.html?task=" + item.Name)
							.text(item.Name)
					)
				);
			});
			$('#taskList').listview('refresh');
		}
	});	
});
$('#task').live("pageshow", function() {
	var urlData = $(this).data("url");
	//console.log(urlData)
	var urlParts = urlData.split('?');
	// foo?a=1b=2c=3
	var urlPairs = urlParts[1].split('&');
	var urlValues = {};
	for (var pair in urlPairs) {
		var keyValue = urlPairs[pair].split('=');
		var key = decodeURIComponent(keyValue[0]);
		var value = decodeURIComponent(keyValue[1]);
		urlValues[key] = value;
	}
	console.log(urlValues);
});
