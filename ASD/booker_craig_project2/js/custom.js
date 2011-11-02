// Craig Booker  |  ASD Project 2 | 10/28/2011

$(function() {
	$.ajax({
			url: 'xhr/data.json',
			type: 'GET',
			cache: false,
			dataType: 'json',
			success: function(data){
				console.log(data, status);
				var fileType = "json";
				var jsonData = data;
				var serializedItem = JSON.stringify(jsonData);
				console.log(serializedItem);
				//parseData(data, fileType);
			}			
		});
		 $("#loading").show();  
		  $.ajax({  
		    type: "GET",  
		    url: "xhr/data.xml",  
		    dataType: "xml",  
		    success: parseXml  
		});  
	/*$.ajax({
			url: 'xhr/data.xml',
			type: 'GET',
			dataType: 'xml',
			success: function(data, status){
				console.log(data, status);
				var xml = data;
				var xmlDoc = $.parseXML(xml);
				$xml = $(xmlDoc);
				console.log($xml);
				var items = rawData;
				items.find("item").each(function(){
				    //var item = $(this);
				    console.log("Context: ", item.find("context"));
				    console.log("Name: ", item.find("name"));
				    console.log("Priority: ", item.find("priority"));
				    console.log("Favorite: ", item.find("favorite"));
				    console.log("Start Date: ", item.find("sDate"));
				    console.log("End Date: ", item.find("eDate"));
				    console.log("Due Date: ", item.find("dDate"));
				    console.log("Notes: ", item.find("notes"));
				});
				//parseData(data, fileType);
			}			
		}); */
// -------   Start of: Parse Data-------------------------
// STATUS :  
// LAST UPDATED: 2011-10-30
// PURPOSE: Load the data from the json file
// TODO: None
// QUESTIONS: 
//----------------------------------------------------------
	function parseData (data, fileType) {
		    console.log(fileType);
		    console.log(data);
		    switch (fileType) {
	    	case "json":
	    		var serializedItem = JSON.stringify(data);
				//console.log(serializedItem);
	    	case "xml" :
	   		 // assume that the XML above is in a string named "xml"
	   		 	console.log(data); /* debug */

				var rawData = $.parseXML(data);
				// wrap the XML in a jQuery object to make it easier to work with
				var items = $(rawData);
				console.log(items);
				items.find("item").each(function(){
				    var item = $(this);
				    console.log("Context: ", item.context);
				    console.log("Name: ", item.find("name"));
				    console.log("Priority: ", item.find("priority"));
				    console.log("Favorite: ", item.find("favorite"));
				    console.log("Start Date: ", item.find("sDate"));
				    console.log("End Date: ", item.find("eDate"));
				    console.log("Due Date: ", item.find("dDate"));
				    console.log("Notes: ", item.find("notes"));
				});
			break;
	    default:
	        return false;
	    }
	}
// -------    End of: Parse Data --------------------------	
function parseXml(xml) {  
	$(xml).find("items").each(function() {  
	//find each instance of loc in xml file and wrap it in a link  
	$("ul#site_list").append('<li>Context: ' + $(this).find("context").text() + '</li>');  
	$("ul#site_list").append('<li>Task Name: ' + $(this).find("name").text() + '</li>');  
	$("ul#site_list").append('<li>Priority: ' + $(this).find("priority").text() + '</li>');  
	$("ul#site_list").append('<li>Favorite: ' + $(this).find("favorite").text() + '</li>');  
	$("ul#site_list").append('<li>Start Date: ' + $(this).find("sDate").text() + '</li>');  
	$("ul#site_list").append('<li>End Date: ' + $(this).find("eDate").text() + '</li>');  
	$("ul#site_list").append('<li>Due Date: ' + $(this).find("dDate").text() + '</li>');  
	$("ul#site_list").append('<li>Notes: ' + $(this).find("Notes").text() + '</li>');  
	$("#loading").hide();  
 	});  
}  
// -------   Start of: XML AJAX Call--------------------------
// STATUS : Not fully working 
// LAST UPDATED: 2011-10-29
// PURPOSE: Load the data from the json file
// TODO: None
// QUESTIONS: 
//----------------------------------------------------------
	//$.ajax({
	/*
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
*/

// -------    End of:  XML AJAX Call --------------------------	
// -------   Start of: Autofill Data  --------------------------
// STATUS : NOT WORKING ----- 2011.10.28
// LAST UPDATED: 2011-10-28
// PURPOSE: grab JSON data and put in local storage
// NOTES : Not sure what is causing this not to work. I think it has to do with other areas of my app. 
// TODO: None
// QUESTIONS: 1. Do you see anything wrong with this?
//----------------------------------------------------------
	function autoFillData() {
		for(var n in items) {	
			var id =	Math.floor(Math.random()*100000000001);
			localStorage.setItem(id, JSON.stringify(items[n]));
			}
	}
// -------   End of: autoFillData --------------------------------------
// -------   Start of : Variable Defaults -------------------------------
   var contextNames = ["---Choose a Context---", "Errand", "Home", "Office", "Calls", "People", "Waiting"];
    var errMsg = $('#errors');	
    var favoriteValue;
// -------   End of: Variable Defaults ----------------------------------
// -------   Start of: Make Categories --------------------------
// STATUS : WORKING ----- 2011.10.27
// LAST UPDATED: 2011-10-28
// PURPOSE: Create select field element and populate with options.
// NOTES : None at this time 
// TODO: None
// QUESTIONS: 
//----------------------------------------------------------
    function makeCats(contextNames) {
        //alert("Am I in?");
        var    i;
        var     j;
        var createSel = '<select id="">';
        	for(i = 0, j = contextNames.length; i < j; i++) {
	            var optText = contextNames[i];
        		createSel += '<option value="' + optText + '">' + optText + '</option>';
        	}
        	createSel += '</select>';
        	$('#context').append(createSel);
	}
    makeCats(contextNames);
// -------   End of:Make Categories --------------------------
// -------   Edit Task Data ------------------------------------------
// STATUS : Not being used ----- 2011.10.27
// LAST UPDATED: 2011-10-28
// NOTES : Event Listeners need to be fixed, updated for jquery
// PURPOSE: Not really using this right now, not sure if all is working.
// TODO: Not sure…ask?
// QUESTIONS: 1. I am not sure about my replacements for my event listeners.  Do I need them like I did before?
//----------------------------------------------------------
    function editItem(id) {
        //Grab Data from Local Storage
        var key = id;
        var value = localStorage.getItem(this.key);
        var item = JSON.parse(value);
        //Show the form
        //toggleControls("off");

        //Populate form fields with current localStorage values
        $('#context').val() = item.context[1];
        $('#name').val() = item.name[1];
        $('#priority').val() = item.priority[1];
        if (item.favorite[1] == "Yes") {
            $('#favorite').attr("checked", "checked");
        }
        $('#sDate').val() = item.sDate[1];
        $('#eDate').val() = item.eDate[1];
        $('#dDate').val() = item.dDate[1];
        $('#notes').val() = item.notes[1];

// Remove the initial listener from the input 'save task' button.
        $('#addTask').val() = ("Save Task");
        var editSave = $('#addTask');
        editSave.unbind("click", storeData());
        //editSave.removeEventListner("click", storeData);
        // Change the submit value to say Edit button
        $('#addTask').val() = ("Edit");
        var editSubmit = $('#addTask');
        $(editSubmit).bind("click", validate());
        //Save the key value established in this function as a property of the editSubmit event
        // so we can use that value when we save the data we edited.
        //editSubmit.addEventListener("click", validate);
        editSubmit.key = this.key;
    }
// ------- End of:  Edit Task Data --------------------------
// ------- Start of:  Delete Task Data --------------------------
// STATUS : Not being used ----- 2011.10.27
// LAST UPDATED: 2011-10-28
// NOTES : Could be used in category specific pages
// PURPOSE: Delete an individual task from localStorage
// TODO: None
// QUESTIONS: None
//----------------------------------------------------------

    function deleteTask(id) {
        var ask    =    confirm("Are you sure you want to delete this task?");
        if (ask) {
            localStorage.removeItem(id);
            window.location.reload();
        }    else    {
            alert("Item not removed!");
        }
    }
// ------- End of:  Delete Task Data --------------------------	
// -------   Start of: Get Img NEW --------------------------
// STATUS : 
// PURPOSE: 
// NOTES :  
// TODO: 
// QUESTIONS: 
//----------------------------------------------------------
    function getImage(catName, makeSubList) {
        var imageLi    =    document.createElement('li');
        var imageLi

        makeSubList.appendChild('imageLi');
        var newImage    =    document.createElement('img');
        var setSrc    =    newImage.setAttribute("src", "images/"+ catName + ".png");
        imageLi.appendChild(newImage);
    }
// -------   End of: Get Img NEW --------------------------
// -------   Start of: Get Data NEW --------------------------
// STATUS : Not being used ----- 2011.10.27
// LAST UPDATED: 2011-10-28
// NOTES :  Still working on this.  NOT DONE    ****** STOPPED HERE 1am 2011/10/28
// PURPOSE: To retrieve data from localStorage
// QUESTIONS: None
// TODO: 1. Need to finish replacing references with jquery references
//----------------------------------------------------------
    function getData(data) {
	    //toggleControls("on");
	    
	   //var key		=	localStorage.key(i);
		//var isNumber = /^\d+$/.test(key);
		//if (isNumber === true) {
	    var keyCheck = localStorage.key(0);
		console.log(keyCheck);
		var checkLoc = /^\d+$/.test(keyCheck);
		if((keyCheck === "") || (keyCheck === "undefined") || (checkLoc === false )) {	    
			//console.log("I'm in the gate!");
	        autoFillData(data);
	        alert("There is no data in local Storage so default was added.");
	    }
	    // Write data from local storage to the browser
	    var makeDiv = $('div');
	    makeDiv.attr("id", "items");
	    //var makeList = document.createElement('ul');
		var makeList = $('ul');
		makeList.attr("id", "makeList");
	    //makeDiv.appendChild(makeList);
	    $('#items').append('#makeList');
	   // document.body.appendChild(makeDiv);
	    //document.body.append('#items');
	    $('#items').css("display", "display");
	    for (var i = 0, len = localStorage.length; i < len; i++) {
	        //var makeLi    = document.createElement("li");
	        //console.log(localStorage);
	        var makeLi    = $("li");
	        makeLi.attr("id", "makeLi"); 
	       // var linksLi        =    document.createElement("li");
	        var linksLi        =   $("li");
	        makeList.append('#makeLi');
	        var key        = localStorage.key[i];
	       console.log(key);
	        var value     = localStorage.getItem[key];
	        console.log(value);
	        // Convert the string from local storage value back to an object by using JSON.parse
	        var objHolder = JSON.parse(value);
	        //var obj
	        //var makeSubList    =    document.createElement('ul');
	        var makeSubList    =    $('ul');
			makeSubList.attr("id", "makeSubList");
	        //makeLi.appendChild(makeSubList);
	        makeLi.append('#makeSubList');

	        getImage(obj.context[1], makeSubList);
	        for(var n in obj) {
	            //var makeSubLi    =    document.createElement('li');
	            var makeSubLi    =    $('li');
	            makeSubLi.attr("id", "makeSubLi");
	            //makeSubList.appendChild(makeSubLi);
	            makeSubList.append('#makeSubLi');
	            var optSubText    =    obj[n][0]+" "+obj[n][1];
	            makeSubLi.html(optSubText); 
	            //makeSubList.append(linksLi);
	            makeSubList.append("#linksLi");

	        }
	       // makeItemLinks(localStorage.key(i), linksLi);
	    }
	}
// -------   End of: Get Data NEW --------------------------
// -------   Start of : Form Validation --------------------------
// STATUS : 
// LAST UPDATED: 2011-10-28
// PURPOSE: 
// NOTES :  
// TODO: 
// QUESTIONS: 
//----------------------------------------------------------
	function validate(e) {
    //Reset Error Messages
   $('#errors').html("");
    //errMsg.html = ("");
    //getContext.style.border = "1px solid black";
	    $('#context').css('border', '1px solid black');
	    $('#name').css('border', '1px solid black');
	    $('#priority').css('border', '1px solid black');
	
	    // Get Error Mesages
	    var messageAry = [];
	    //Context Validation
	    if ($('#context').val === "---Choose Context ---") {
	        var contextError = "Please choose a context.";
	        $('#context').css('border', '3px solid yellow');
	        messageAry.push(contextError);
	    }
	    //Task Name Validation
	    if ($('#name').val === "") {
	        var nameError = "Please enter a task name.";
	        $('#name').css('border', '3px solid yellow');
	        messageAry.push(nameError);
	    }
	    //Priority Validation
	    if ($('#priority').val === "") {
	        var priorityError = "Please set a priority.";
	        $('#priority').css('border', '3px solid yellow');
	        messageAry.push(priorityError);
	    }
	
	    // If there are any errors, display them on the screen.
	    if(messageAry.length >= 1) {
	        var that = $(this);
	        for (var i=0, j=messageAry.length; i < j; i++) {
	            //var txt = $('li');
	            //$('li').Attr("id", "msgAry");
	            $('#msgAry').html('<li id="msgAry" >' + messageAry[i] + '</li>');
	            /*txt.innnerHTML = messageAry[i];*/
	            //that.html =  messageAry[i];
	            errMsg.append(txt);
	        }
		    e.preventDefault();
		    return false;
	    } else {
	            // If all is okay, save out data!
	            storeData(e);
	    	}
	}
// -------   End of : Form Validation --------------------------
// -------   Start of: Rebuilt Find value of the check box. --------------------------
// STATUS : 
// LAST UPDATED: 2011-10-28
// PURPOSE: 
// NOTES :  
// TODO: 
// QUESTIONS: 
//----------------------------------------------------------
    function getCheckboxValue() {
        if ($('#favorite').checked) {
            favoriteValue = $('#favorite').val();
        } else {
            favoriteValue = ("No");
        }
	}
// -------   End of: Rebuilt Find value of the check box. --------------------------	
// -------   Start of: Delete All Stored Tasks --------------------------
// STATUS : 
// LAST UPDATED: 2011-10-28
// PURPOSE: 
// NOTES :  
// TODO: 
// QUESTIONS: 
//----------------------------------------------------------
    function clearLocal() {
        if(localStorage.length === 0) {
            alert("There is no data to clear");
        } else {
            localStorage.clear();
            alert("All tasks are deleted!");
            window.location.reload();
            return false;
    	}
	}
// -------   End of: Delete All Stored Tasks --------------------------
// -------   Start of: Make Item Links --------------------------
// STATUS : 
// LAST UPDATED: 2011-11-01
// PURPOSE: 
// NOTES :  
// TODO: 
// QUESTIONS: 
//----------------------------------------------------------
	    function makeItemLinks(key, linksLi) {
		    var editLink    =    $("a");
			$(editLink).attr("id", "editLink");
		    $("#editLink").attr("href",  "#");
		    editLink.key    =    key;
		    var editText    =    "Edit Task";
		    $("#editLink").bind("click", editItem);
		    $("#editLink").html(editText);
		    $("#linksLi").append("#editLink");
		
		    // Add Line Break
		    var breakTag = $('br'); 
		    $("#linksLi").append(breakTag);
		
		    //var deleteLink    =    document.createElement('a');
		    var deleteLink = $('a');
		    $(deleteLink).attr("href", "#");
		    $(deleteLink).attr("id", "deleteLink");
		    deleteLink.key    =    key;
		    var deleteText = "Delete Task";
		    //deleteLink.addEventListener("click", deleteTask);
		    $("#deleteLink").bind("click", deleteTask);
		    $("#deleteLink").html(deleteText);		    
		   // deleteLink.innerHTML = deleteText; /*  NEEDS CHANGED */
		    $(linksLi).append("#deleteLink");
	    }
// -------   End of: Make Item Links --------------------------
// -------   Start of: Rebuilt Save Form Data --------------------------
// STATUS : 
// LAST UPDATED: 2011-10-28
// PURPOSE: Save data to local storage
// NOTES :  
// TODO: 1. Need to update value statements
// QUESTIONS: 
//----------------------------------------------------------
    function storeData(key) {
        var id                =    Math.floor(Math.random()*100000000001);
        getCheckboxValue();
		var	   item=    {};	                
					item.context	=    ["Context: ", $('#context').val()];
	                item.name		=    ["Task Name: ", $('#name').val()];
	                item.priority		=    ["Priority: ", $('#priority').val()];
	                item.favorite    =    ["Favorite: ", $('#favorite').val()];
	                item.sDate        =    ["Start Date: ", $('#sDate').val()];
	                item.eDate        =    ["End Date: ", $('#eDate').val()];
	                item.dDate        =    ["Due Date: ", $('#dDate').val()];
	                item.notes        =    ["Notes: ", $('#notes').val()];
        // Save data into local storage: use stringify to convert our object to a string
        localStorage.setItem(id, JSON.stringify(item));
        alert("Task Saved!");
    }
// -------   End of:Rebuilt Save Form Data --------------------------
// -------   Start of : Clear Form --------------------------
// STATUS : Needs to be created
// LAST UPDATED: 2011-10-28 06:46pm
// PURPOSE: 
// NOTES :  
// TODO: 1. Need to create function to clear out all form elements.
// QUESTIONS: 
//----------------------------------------------------------
		function clearForm() {
		console.log('This function is not there yet!');
		};
// -------   End of : Clear Form --------------------------
// -------   Start of: SET LINK & SUBMIT CLICK EVENTS ---------------- LOOK AT NEW WAY OF HANDLING EVENTS IN JQUERY
// STATUS : 
// LAST UPDATED: 2011-10-28
// PURPOSE: 
// NOTES :  
// TODO: 
// QUESTIONS: 
//----------------------------------------------------------	
	$("#addTask").bind("click", validate);
    //var displayLink = $('#displayLink');
    $('#displayLink').bind("click", getData);
    //displayLink.addEventListener("click", getData(json));
    //$("#displayLink").bind("click", getData(e, data)); 
    var clearLink = $('#clear');
   // clearLink.addEventListener("click", clearLocal);
   $(clearLink).bind("click", "clearLocal");
    var save = $('#addTask');
    //save.addEventListener("click", validate);    
   $('#addTask').bind("click", validate); 
    var clearForm = $('#clearForm');
    //clearForm.addEventListener("click", clearForm);    // NEED TO WRITE FUNCTION
   $("#clearForm").bind('click', clearForm);
    $("#json").bind("click", parseData);
    $("#xml").bind("click", parseData);
    $("#yml").bind("click", parseData);






// -------   End of: SET LINK & SUBMIT CLICK EVENTS --------------------------
}); 
// -------   END OF THE ROAD --------------------------	