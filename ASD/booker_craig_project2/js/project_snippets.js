// -------   Start of: Parse Data-------------------------
// STATUS :  
// LAST UPDATED: 2011-10-30
// PURPOSE: Load the data from the json file
// TODO: None
// QUESTIONS: 
//----------------------------------------------------------
	function parseData(fileType){
		    switch (n) {
	    	case "json":
	    		var serializedItem = JSON.stringify(item);
				console.log(serializedItem);
	    	case "xml" :
	   		 // assume that the XML above is in a string named "xml"
				var data = $.parseXML(xml);
				// wrap the XML in a jQuery object to make it easier to work with
				var items = $( data );
				items.find("item").each(function(){
				    var item = $(this);
				    console.log("Context: ", item.find("context"));
				    console.log("Name: ", item.find("name"));
				    console.log("Priority: ", item.find("priority"));
				    console.log("Favorite: ", item.find("favorite"));
				    console.log("Start Date: ", item.find("sDate"));
				    console.log("End Date: ", item.find("eDate"));
				    console.log("Due Date: ", item.find("dDate"));
				    console.log("Notes: ", item.find("notes"));
				});
			break;
		    case "yml" :
	            var test1 = YAML.eval("---\n- one\n- two");
	            var test2 = YAML.eval("---\none: two");
	        
	            YAML.fromURL("xhr/data.yml", function(data) {
		                var errors = YAML.getErrors();
		                if(errors.length == 0) {
		                  //  document.getElementById("out").innerHTML = "Done! Took " + YAML.getProcessingTime() + " miliseconds.";
		                    $('#output').html("Done! Took " + YAML.getProcessingTime() + " miliseconds."));
		                else {
		                    //document.getElementById("out").innerHTML = errors.join("<br>");
		                    $('#output').html(errors.join("br>"));
		                }
			    });
			break;
	    default:
	        return false;
	    }
	}
// -------    End of: Parse Data --------------------------	
// -------   Start of: Load Data-------------------------
// STATUS :  
// LAST UPDATED: 2011-10-30
// PURPOSE: Load the data from the json file
// TODO: None
// QUESTIONS: 
//----------------------------------------------------------
	function loadData(fileType){
		    switch (n) {
	    	case "json":
	    	break;
	    	case "xml" :
	    	break;
		    case "yml" :	
	    	break;

// -------    End of: Load Data --------------------------	



// -------   Start of: JSON AJAX Call--------------------------
// STATUS : Not fully working 
// LAST UPDATED: 2011-10-29
// PURPOSE: Load the data from the json file
// TODO: None
// QUESTIONS: 
//----------------------------------------------------------
		function loadData2() {
		$.ajax({
			url: 'data.json',
			type: 'GET',
			dataType: 'json',
			success: function(data, status){
				console.log(status, data);
			}			
		});
		}
// -------    End of: JSON AJAX Call --------------------------	
// -------   Start of: XML AJAX Call--------------------------
// STATUS : Not fully working 
// LAST UPDATED: 2011-10-29
// PURPOSE: Load the data from the json file
// TODO: None
// QUESTIONS: 
//----------------------------------------------------------

// assume that the XML above is in a string named "xml"
var data = $.parseXML(xml);
// wrap the XML in a jQuery object to make it easier to work with
var items = $( data );
items.find("item").each(function(){
    var item = $(this);
    console.log("Context: ", item.find("context"));
    console.log("Name: ", item.find("name"));
    console.log("Priority: ", item.find("priority"));
    console.log("Favorite: ", item.find("favorite"));
    console.log("Start Date: ", item.find("sDate"));
    console.log("End Date: ", item.find("eDate"));
    console.log("Due Date: ", item.find("dDate"));
    console.log("Notes: ", item.find("notes"));

});

// -------    End of:  XML AJAX Call --------------------------	
// -------   Start of: YAML AJAX Call--------------------------
// STATUS : Not fully working 
// LAST UPDATED: 2011-10-29
// PURPOSE: Load the data from the json file
// TODO: None
// QUESTIONS: 
//----------------------------------------------------------
        window.onload = function() {
            var test1 = YAML.eval("---\n- one\n- two");
            var test2 = YAML.eval("---\none: two");
        
            YAML.fromURL("xhr/data.yml", function(data) {
                var errors = YAML.getErrors();
                if(errors.length == 0)
                  //  document.getElementById("out").innerHTML = "Done! Took " + YAML.getProcessingTime() + " miliseconds.";
                    $('#out').html("Done! Took " + YAML.getProcessingTime() + " miliseconds."));

                else {
                    //document.getElementById("out").innerHTML = errors.join("<br>");
                    $('#out').html(errors.join("br>"));
                }
            });
        };
// -------    End of:  YAML AJAX Call --------------------------	