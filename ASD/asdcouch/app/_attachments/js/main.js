$(document).ready(function() {
	$.ajax({
		"url": "_view/tasks",
		"type": "GET",
		"dataType": "json",
		"success": function(data) {
            $.each(data.rows, function(index, task) {
            //console.log(index);
            	var context = task.value.Context;
            	var name = task.value.Name; 
            	var priority = task.value.Priority;
            	var favorite = task.value.Favorite;
            	//console.log(context);
            	//console.log(context);
            	$('<li class="tasks" id="jsonitem_'+index+'"><a href="#">'+context+'</a></div>').appendTo('.data_load');
			});
            $('.data_load').listview('refresh');
		}
	});	
});
