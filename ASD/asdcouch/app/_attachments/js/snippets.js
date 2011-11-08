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
	<div data-role="collapsible-set">
	<div data-role="collapsible" data-collapsed="true">
		<h3>Task Name: Get Vacuum Bags</h3>
			<div data-role="fieldcontain">
				<ul data-role="listview">
				<li>Priority: 5</li>
				<li>Favorite: checked</li>
				<li>Start Date: 2011-05-11</li>
				<li>End Date: 2011-05-12</li>
				<li>Due Date: 2011-05-12</li>
				<li>Notes:Don't forget to get the model fj2 bags.</li>
				</ul>
		
			</div> 	<!-- Clear Local Storage -->
	</div>