/**
 * 
 */
	$.ajax({
		"url": "_view/contexts",
		"dataType": "json",
		"success": function(data) {
            $.each(data.rows, function(index, context){
            	var title = context.value.title;
            	var desc  = context.value.desc;
            	$('#contextlist').append($('<li>').text(title));
            	$('#contextlist').append($('<a>').attr("href", "#")); 
			});
			$('#contextlist').listview('refresh');
		}
	});