$(document).ready(function() {
	$.ajax({
		"url": "_view/contexts",
		"dataType": "json",
		"success": function(data) {
			$.each(data.rows, function(index, context){
				console.log(context);
				var title = context.value.title;
				var desc  = context.value.desc;
				$('#contextlist').append(
					$('<li>').append(
							$('<a>').attr("href", "#")
								.text(title)
					)
				);
			});
			$('#contextlist').listview('refresh');
		}
	});
});