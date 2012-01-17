	//Json data function

$(function(){

	    $.ajax({
		"url": 'json.json',
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
		"url": 'data.xml',
		"type": 'GET',
		"dataType":'xml',
		"success":function(response) {
		    console.log(response);
		}
	    });

});
//XML data function
  function showXML() {
			$.ajax({
				type: "GET",
				url: "data.xml",
				dataType: "xml",
				success: function(response) {
					alert('Hello');
					alert('Help XML!');
				}
			});
	}

	//$('#json').bind('click', showJSON);
	$('#xml').bind('click', showXML);


