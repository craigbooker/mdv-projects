// Craig Booker  |  ASD Project 2 | 10/28/2011

$(function() {
var xmlTasks, jsonTasks, editStatus;

$.ajaxSetup ({  
        cache: false  
    }); 
// -------   Start of: Show JSON Data-------------------------
// STATUS :  
// LAST UPDATED: 2011-10-30
// PURPOSE: Load the data from the json file
// TODO: None
// QUESTIONS: 
//----------------------------------------------------------
	function showJSON() {
			$.ajax({  
						    url: 'data.json',
						    type: 'GET',
						    dataType: 'json',  
						    error: 'Did Not Load JSON',
						    success: function(data, response){
							console.log(response);
							var item, i, j, id;
								for (i = 0, j=data.item.length; i < j; i++) {
										id = i + 1;
										//console.log(jasonTasks);
										item = data.item[i];
										var contextTxt = ('Context: ' + item.context);				
										$('<div class="items" id="jsonitem_'+id+'"></div>').html(contextTxt).appendTo('.data_load');			
										//console.log("Context: " + item.context).appendTo('#item_'+ id);
										$('<div class="name"></div>').html("Name: " + item.name).appendTo('.data_load');
										$('<div class="priority"></div>').html("Priority: " + item.priority).appendTo('.data_load');
										$('<div class="name"></div>').html("Favorite: " + item.favorite).appendTo('.data_load');
										$('<div class="sDate"></div>').html("Start Date: " + item.sDate).appendTo('.data_load');
										$('<div class="eDate"></div>').html("End Date: " + item.eDate).appendTo('.data_load');
										$('<div class="dDate"></div>').html("Due Date: " + item.DDate).appendTo('.data_load');
										$('<div class="notes"></div>').html("Notes: " + item.notes).appendTo('.data_load');
								} // End of for loop
		   					 } //end  of success function
	});
	}
// -------    End of: Show JSON Data --------------------------
// -------   Start of: Show XML --------------------------
// STATUS : Not fully working 
// LAST UPDATED: 2011-10-29
// PURPOSE: Load the data from the json file
// TODO: None
// QUESTIONS: 
//----------------------------------------------------------
	function showXML(xml) {  
			$("#data_load").html("");
			alert('I made it to XML');
			$(xml).find("item").each(function() { 
			//var xmlCounter = 1;
 			//find each instance of loc in xml file and wrap it in a link  
			$("div#xml_list").append('<div class="" >Context' + $(this).find("context").text() + '"</div>');  
			//$("#loading").hide();  
			 });  
	}  
// -------   End of: Show XML -------------------------------
// -------   Start of: Show CSV --------------------------
// STATUS : Not fully working 
// LAST UPDATED: 2011-10-29
// PURPOSE: Load the data from the json file
// TODO: None
// QUESTIONS: 
//----------------------------------------------------------
	function showCSV() {  
			$("#data_load").html("");
			alert('I made it to CSV');

		
	}
// -------   End of: Show XML -------------------------------
   $('#xml').live("click", showXML);
    $("#json").live("click", showJSON);
    $('#csv').live("click", showCSV);
	//$('div.xml').delegate("a" ,"click", showXML);
	//$('div.json').delegate(a ,"click", showXML);
	//$('div.csv').delegate(a ,"click", showXML);

});	
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


// -------   Start of: Get Img NEW --------------------------
// STATUS : 
// PURPOSE: 
// NOTES :  
// TODO: 
// QUESTIONS: 
//----------------------------------------------------------
    function getImage(catName, makeSubList) {
        var imageLi = $('li');
		$('imageLi').attr('id', 'imageLi');
        makeSubList.append('#imageLi');
        var newImage = $('img');
        var setSrc    =    $('img').attr('src', 'img/'+catName+'.png');
        $('#imageLi').append(newImage);
        //imageLi.appendChild(newImage);
    }
// -------   End of: Get Img NEW --------------------------


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
// -------   Start of: Save Form Data --------------------------
// STATUS : 
// LAST UPDATED: 2011-10-28
// PURPOSE: Save data to local storage
// NOTES :  
// TODO: 1. Need to update value statements
// QUESTIONS: 
//----------------------------------------------------------
    function storeData(key) {
    	var storeDataKey = key;
        if ((editStatus === "0") || (editStatus === "" )){
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
        } else { 
        			if (editStatus === "1"){
												            localStorage.setItem(storeDataKey, JSON.stringify(item));  
												            alert("Edited Task Saved!"); 

       														 }
       			 }
    }
// -------   End of:Save Form Data --------------------------
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
        editStatus = 1;
        var key = id;
        var value = localStorage.getItem(this.key);
        var item = JSON.parse(value);
        //Show the form
        //toggleControls("off");

        //Populate form fields with current localStorage values
        $('#context').val(item.context[1]);
        $('#name').val(item.name[1]);
        $('#priority').val(item.priority[1]);
        if (item.favorite[1] == "Yes") {
            $('#favorite').attr("checked", "checked");
        }
        $('#sDate').val(item.sDate[1]);
        $('#eDate').val(item.eDate[1]);
        $('#dDate').val(item.dDate[1]);
        $('#notes').val(item.notes[1]); 
// Remove the initial listener from the input 'save task' button.
        $('#addTask').val("Save Task");
        var editSave = $('#addTask');
        editSave.unbind("click", storeData);
        //editSave.removeEventListner("click", storeData);
        // Change the submit value to say Edit button
        $('#addTask').val("Edit");
        var editSubmit = $('#addTask');
        $(editSubmit).bind("click", validate);
        //Save the key value established in this function as a property of the editSubmit event
        // so we can use that value when we save the data we edited.
        //editSubmit.addEventListener("click", validate);
        editSubmit.key = this.key;
    }
// ------- End of:  Edit Task Data --------------------------
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
	            errMsg.append$('#msgAry');
	        }
		    e.preventDefault();
		    return false;
	    } else {
	            // If all is okay, save out data!
	            storeData(e);
	    	}
	}
// -------   End of : Form Validation --------------------------
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
	$('html, body').animate({ scrollTop: 0 }, 0);        
    }
// ------- End of:  Delete Task Data --------------------------	
// -------   Start of: Delete All Stored Tasks --------------------------
// STATUS : 
// LAST UPDATED: 2011-10-28
// PURPOSE: Delete ALL tasks stored in localStorage
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
            window.location.reload(true);
            return false;
    	}
	}
// -------   End of: Delete All Stored Tasks --------------------------


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








	//$("#footernav").html(inc/footernav.html);


// -------   End of: SET LINK & SUBMIT CLICK EVENTS --------------------------
//});  // -------   END OF THE ROAD --------------------------	
	var footernav = 	"<ul>";
				footernav += "<li><a href=\"#home\" data-icon=\"home\">Home</a></li>";
				footernav += "<li><a href=\"#add_item\" data-icon=\"plus\">Add Task</a></li>";
				footernav += "<li><a href=\"#settings\" data-icon=\"gear\">Settings</a></li>";
				footernav += "<li><a href=\"#about_app\" data-icon=\"info\">About</a></li>";
				footernav += "</ul>	";
	//$("#footernav").html("footernav");
	$("#footernav").html("inc/footernav.html");

	
// -------   Start of: Show CSV --------------------------
// STATUS : Not fully working 
// LAST UPDATED: 2011-10-29
// PURPOSE: Load the data from the CSV file
// TODO: None
// QUESTIONS: 
//----------------------------------------------------------
	function showCSV() {
		alert('I made it into CSV!');
	
	}
// -------   End of: Show CSV -------------------------------
// -------   Start of: SET LINK & SUBMIT CLICK EVENTS ---------------- LOOK AT NEW WAY OF HANDLING EVENTS IN JQUERY
// STATUS : 
// LAST UPDATED: 2011-10-28
// PURPOSE: 
// NOTES :  
// TODO: 
// QUESTIONS: 
//----------------------------------------------------------	
	//$("#addTask").bind("click", validate);
    //var displayLink = $('#displayLink');
    //$('#displayLink').bind("click", getData);
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
    //$("#clearForm").bind('click', clearForm);
   //$("#json").live("click", showJSON);
   //$('#xml').live("click", showXML);
   // $('#csv').live("click", showCSV);
