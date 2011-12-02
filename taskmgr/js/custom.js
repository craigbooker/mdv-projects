var jsonData;
var xmlData;
var csvData;

//Json data function

$(function(){

	    $.ajax({
		"url": 'xhr/data.json',
		"type": 'GET',
		"dataType":'json',
		"success":function(response) {
		    console.log(response);
		}
	    });

});

//XML data function

$(function(){

	    $.ajax({
		"url": 'xhr/data.xml',
		"type": 'GET',
		"dataType":'xml',
		"success":function(xml, response) {
		    console.log(response);

		}
	    });

});

//CSV data function

$(function(){

	    $.ajax({
		"url": 'xhr/data.csv',
		"type": 'GET',
		"dataType":'csv',
		"success":function(response) {
		    console.log(response);
		}
	    });
});

  function showXML(){
			$.ajax({
				type: "GET",
				url: "data.xml",
				dataType: "xml",
				success: function(xml, response) {
				alert(response);
					$(xml).find('item').each(function(){
						var id = $(this).attr('id');
						var context = $(this).find('context').text();
						//var url = $(this).find('url').text();
						$('<div class="items" id="link_'+id+'"></div>').html('Context: '+context).appendTo('#page-wrap');
						$(this).find('detail').each(function(){
							var priority = $(this).find('priority').text();
							var sDate = $(this).find('sDate').text();
							var eDate = $(this).find('dDate').text();
							var dDate = $(this).find('eDate').text();
							var notes = $(this).find('notes').text();

							$('<div class="name"></div>').html("Name: " +name).appendTo('#link_'+id);
							$('<div class="priority"></div>').html("Priority: " +priority).appendTo('#link_'+id);
							$('<div class="sDate"></div>').html("Start Date: " +sDate).appendTo('#link_'+id);
							$('<div class="eDate"></div>').html("End Date: " +eDate).appendTo('#link_'+id);
							$('<div class="dDate"></div>').html("Due Date: " +dDate).appendTo('#link_'+id);
							$('<div class="notes"></div>').html("Notes: " +notes).appendTo('#link_'+id);

						});
					});
				}
			});
}