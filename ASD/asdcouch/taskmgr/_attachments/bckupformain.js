$(document).ready(function() {
	$.ajax({
		"url": "_view/tasks",
		"type": "GET",
		"dataType": "json",
		"success": function(data) {
            $.each(data.rows, function(index, task) {
            	var context = task.value.Context;
            	var name = task.value.Name; 
            	var priority = task.value.Priority;
            	var favorite = task.value.Favorite;
            	var sDate = task.value.Start_Date;
            	var eDate = task.value.End_Date;
            	var dDate = task.value.Due_Date;
            	var notes = task.value.Notes;
            	
    			$('<div data-role="collapsible-set">').appendTo('.infolist');
            	$('<div data-role="collapsible" data-collapsed="true">'+name+'<div data-role="fieldcontain">').appendTo('.infolist');
            	$('<ul data-role="listview">').appendTo('.infolist');
            	$('<li id="jsonitem_'+index+'">Context: '+context+'</li>').appendTo('.data_load');
            	$('<li class="tasks" id="priority_'+index+'">Priority: '+priority+'</li>').appendTo('.infolist');
            	$('<li class="tasks" id="favorite_'+index+'">Favorite: '+favorite+'</li>').appendTo('.infolist');
            	$('<li class="tasks" id="favorite_'+index+'">Start Date: '+sDate+'</li>').appendTo('.infolist');
            	$('<li class="tasks" id="favorite_'+index+'">End Date: '+eDate+'</li>').appendTo('.infolist');
            	$('<li class="tasks" id="favorite_'+index+'">Due Date '+dDate+'</li>').appendTo('.infolist');
            	$('<li class="tasks" id="favorite_'+index+'">Notes: '+notes+'</li>').appendTo('.infolist');
            	$('</ul></div></div></div>').appendTo('.infolist');
			});
        	//$(this).listview("refresh");
		}
	});
	$('ul.infolist').listview('refresh');

});
//$('div#home').page('refresh');
//window.location.reload(true);

