$(function(){

var anchorTags = $('#clear a');
$('#home').live("pageshow", function() {
	$.couch.db("taskmgr").view("taskmgr/contexts", {
		success: function(data) {
			//console.log(data);
			$("#contextList").empty();
			$.each(data.rows, function(index, value) {
				var item = (value.value || value.doc);
				$("#contextList").append(
					$('<li>').append(
						$('<a>')
							.attr("href", "context.html?ctxt=" + item.Abbreviation)
							.text(item.Context)
					)
				);
			});
			$('#contextList').listview('refresh');
		}
	});	
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
//validate form function. Would like to add regEXp for possibly the date varif.

function validateForm() {
    var selectInbox = document.forms[0]["inbox"].value;
    if (selectInbox =="") {
        alert("Put in your inbox?");
        $('#inbox').css({
            border: '1px solid red'
        });
        return false;
    } else {
        $('#inbox').css({
            border: "1px solid 9BC4E2"
        });
    }
    var project = document.forms[0]["project"].value;
    if (project =="") {
        alert("Please Select a project name");
        $('#project').css({
            border: "1px solid red"
        });
        return false;
    } else {
        $('#project').css({
            border: "1px solid 9BC4E2"
        });
    }
    var practiceName = document.forms[0]["context"].value;
    if (practiceName =="") {
        alert("Please Select a context");
        $('#context').css({
            border: "1px solid red"
        });
        return false;
    } else {
        $('#context').css({
            border: "1px solid 9BC4E2"
        });
    }

    var name = document.forms[0]["name"].value;
    if (name =="") {
        alert("Please give the task a name.");
        $('#name').css({
            border: "1px solid red"
        });
        return false;
    } else {
        $('#name').css({
            border: "1px solid 9BC4E2"
        });
    }

    var priority = document.forms[0]["priority"].value;
    if (practiceDate =="") {
        alert("Please input the priority");
        $('#priority').css({
            border: "1px solid red"
        });
        return false;
    } else {
        $('#priority').css({
            border: "1px solid 9BC4E2"
        });
    }


    alert("Data Saved!");
    saveItems();
}




function getItems() {

   var getListdiv = $('#new');

   for (var i = 0, len = localStorage.length; i < len; i++) {
        var key = localStorage.key(i);
        var value = localStorage.getItem(key);
        value = value.split(";");
		var inbox   = value[0];
		var project     = value[1];
		var context     = value[2];
		var name        = value[3];
		var priority    = value[4];
		var favorite    = value[5];
		var sDate       = value[6];
		var eDate       = value[7];
		var dDate       = value[8];
		var notes       = value[9];
        var newDiv = $("<div>");
        for (var k = 0, allLength = value.length; k < allLength; k++) {
            var newPara = $("<p/>");
            var itemTxt = $('value[k]').text();
            newPara.appendTo(itemTxt);
            newDiv.appendTo(newPara);
            getListdiv.appendTo(newDiv);
        }

       //attemp to adding images per category
        var image ="";
            if (context =="") {image ="";}
            if ((context =="Errands") || (context =="Errands") || (context =="Errands")) {image ="errands.png";}
            if ((context =="Home") || (context =="Home")) {image = "img/home.png";}
            if ((context =="Office") || (context =="Office") || (context =="Office")) {image ="office.png";}
            if ((context =="Calls") || (context =="Calls") || (context =="Calls")) {image ="calls.png";}
            if ((context =="People") || (context =="People") || (context =="People")) {image ="people.png";}
            if ((context =="Waiting") || (context =="Waiting") || (context =="Waiting")) {image ="waiting.png";}


         //add images
        var newImg = $("<img/>");
        var setSrc = newImg.attr("src","img/" + image);
        getListdiv.appendTo(newImg);


   //add delete single item link
   var deleteLink = $("<a/>");
   var setHref    = deleteLink.attr("href", "#");
   var setOnclick = deleteLink.attr("onclick", "deleteItem(" + key + ");");
   var deleteText = $("delete item").text();
   deleteLink.appendTo(deleteText);
   newDiv.appendTo(deleteLink);

   //add edit single item
   var editLink         = $("<a/>");
   var setEditHref      = editLink.attr("href", "#");
   var setEditOnclick   = editLink.attr("onclick", "editItem(" + key + ");");
   var editText         = $("edit item").text();
   editLink.appendTo(editText);
   newDiv.appendTo(editLink);
   }

    if(localStorage.length >=1) {
        var clearLink = $('#clear').show();



    } else {
            var  prname    = "enter practice name";
            var  timesig   = "enter a time signature";
            var  BPMs      = "enter a BPM's"

           $('#prname').val(prname);
           $('#timesig').val(timesig);
           $('#BPMs').val(BPMs);
        }
}


//save items function. get date and time from comp...
function saveItems(id) {
    var d = new Date();
    var key = (d.getTime());
    var inbox    	 = $('#inbox').val();
    var project      = $('#project').val();
    var context      = $('#context').val();
    var name         = $('#name').val();
    var priority     = $('#priority').val();
    var favorite     = $('#favorite').val();
    var sDate        = $('#sDate').val();
    var eDate        = $('#eDate').val();
    var dDate        = $('#dDate').val();
    var notes        = $('#notes').val();

    var allItems  = [
            inbox,
            project,
            context,
            name,
            priority,
            favorite,
            sDate,
            eDate,
            dDate,
            notes
        ];
    localStorage.setItem(key, allItems.join(";"));
}


function storeData(id) {
    var inbox    	 = $('#inbox').val();
    var project      = $('#project').val();
    var context      = $('#context').val();
    var name         = $('#name').val();
    var priority     = $('#priority').val();
    var favorite     = $('#favorite').val();
    var sDate        = $('#sDate').val();
    var eDate        = $('#eDate').val();
    var dDate        = $('#dDate').val();
    var notes        = $('#notes').val();

    localStorage.setItem("appinbox", inbox);
    localStorage.setItem("apppproject", project);
    localStorage.setItem("appcontext", context);
    localStorage.setItem("appname", name);
    localStorage.setItem("apppriority", priority);
    localStorage.setItem("appfavorite", favorite);
    localStorage.setItem("appsDate", sDate);
    localStorage.setItem("appeDate", eDate);
    localStorage.setItem("appdDate", dDate);
    localStorage.setItem("appnotes", notes);

}


function editItem(id) {

    var value = localStorage.getItem(id);
    var itemId = id;

    value = value.split(";");
    var inbox   = value[0];
    var project     = value[1];
    var context     = value[2];
    var name        = value[3];
    var priority    = value[4];
    var favorite    = value[5];
    var sDate       = value[6];
    var eDate       = value[7];
    var dDate       = value[8];
    var notes       = value[9];

    //populates form fields with current localStorage values
    $('#inbox').val(inbox);
    $('#project').val(project);
    $('#context').val(context);
    $('#name').val(name);
    $('#priority').val(priority);
    if (favorite =="on") {
        $('#favorite').attr("checked", "checked");
    }
    $('#sDate').val(sDate);
    $('#eDate').val(eDate);
    $('#dDate').val(dDate);
    $('#notes').val(notes);

    //reveal editItems button, hide submit button
    var editItem = $('#editItem').show();

    var submit = $('#sdata').show();

    //capture editItem button's click
    $('#editItem').click() = function () {

        var inbox       = $('#inbox').val();
        var project          = $('#project').val();
        var context         = $('#context').val();
        var name            = $('#name').val();
        var priority        = $('#priority').val();
        var favorite            = $('#favorite').val();
        var sDate           = $('#sDate').val();
        var eDate           = $('#eDate').val();
        var dDate           = $('#dDate').val();
        var notes           = $('#notes').val();
        var allItems        = [
            inbox,
            project,
            context,
            name,
            priority,
            favorite,
            sDate,
            eDate,
            dDate,
            notes
        ];
        if ( inbox != "" && project != "" && context != ""){
            localStorage.setItem(itemId, allItems.join(";"));
            alert("Updated Task");
        } else {
            alert("please fill required fields.");
        }
    };

} //editItem


//Delete single Items

function deleteItem(id) {
    var ask = confirm("Are you sure?");
    if (ask) {
        localStorage.removeItem(id);
        window.location.reload();
    } else {
        alert("Item not removed!");
    }
}


//Delete all Items

function clearLocal() {
    localStorage.clear();
    $('#clear').css('display', 'none');

    return false;
}

//functions to Attempt Data parse into form fields


function getJson(){

	    $.ajax({
		"url": 'xhr/data.json',
		"type": 'GET',
		"dataType":'json',
                "error": function(xhr, status, err){alert("err");console.log(status, err);},
		"success":function(data, response) {
                    alert("JSON data loaded");
		    console.log(response);
                    console.log(data)
                    for (var i=0, j=data.item.length; i<j; i++) {
                        var itemJson = data.item[i];
                        $(''+
                            '<div class="jsonD">'+
                               '<h2>Inbox:'+itemJson.inbox+'</h2>'+
                               '<p>Project:'+itemJson.project+'</p>'+
                                '<p>Context:'+itemJson.context+'</p>'+
                                '<p>Name:'+itemJson.name+'</p>'+
                                '<p>Priority:'+itemJson.priority+'</p>'+
                                '<p>Favorite:'+itemJson.favorite+'</p>'+
                                '<p>Start Date:'+itemJson.sDate+'</p>'+
                                '<p>End Date:'+itemJson.eDate+'</p>'+
                                '<p>Due Date:'+itemJson.dDate+'</p>'+
                                '<p>Notes:'+itemJson.notes+'</p>'+
                             '</div>'
                        ).appendTo('#json');
                    };
		}
	    });

}

//XML data function

function getXML(){

	    $.ajax({
		"url": 'xhr/data.xml',
		"type": 'GET',
		"dataType":'xml',
		"success":function(data, response) {
                    alert("XML data loaded");
                    $(data).find('item').each(function(){
                    //console.log(item);
                    var inbox = $(this).find('inbox').text()
                    var project = $(this).find('project').text()
                    var context = $(this).find('context').text()
                    var name = $(this).find('name').text()
                    var priority = $(this).find('priorit').text()
                    var favorite = $(this).find('favorite').text()
                    var sDate = $(this).find('sDate').text()
                    var eDate = $(this).find('eDate').text()
                    var dDate = $(this).find('dDate').text()
                    var notes = $(this).find('notes').text()
                    $(''+
                        '<div class="xmlD">'+
                             '<h2>Inbox:'+ inbox +'</h2>'+
                               '<p>Project:'+ project +'</p>'+
                                '<p>Context:'+ context +'</p>'+
	                            '<p>Name:'+ name +'</p>'+
                                '<p>Priority:'+ priority +'</p>'+
                               '<p>Favorite:'+ favorite +'</p>'+
                                '<p>Start Date:'+ sDate +'</p>'+
                                '<p>End Date:'+ eDate +'</p>'+
                                '<p>Due Date:'+ dDate +'</p>'+
                              '<p>Notes:'+ notes +'</p>'+
                        '</div>'
                        ).appendTo("#xml");
                    });
		}
	    });

}

//CSV data function

/*function getCSV(){

	    $.ajax({
		"url": 'xhr/csv.csv',
		"type": 'GET',
		"dataType":'csv',
		"success":function(data, response) {
                    alert("CSV data loaded");
		    console.log(response);
		}
	    });
}*/


function getCouch(){

	$.ajax({
		"url":"_view/weeks",
		"dataType":"json",
		"success": function(data) {
			$.each(data.rows, function(index, tasks){
					//console.log(weeks);
					var inbox = tasks.value.inbox;
					var project	  = tasks.value.project;
                    var context	  = tasks.value.context;
                    var name	  = tasks.value.name;
                    var priority  = tasks.value.priority;
                    var favorite  = tasks.value.favorite;
                    var sDate  = tasks.value.sDate;
                    var eDate  = tasks.value.eDate;
                    var dDate  = tasks.value.dDate;
					var notes  = tasks.value.notes;
					$('#couch').append(
						$('<h2>').text(inbox),
						$('<p>').text(project),
						$('<p>').text(context),
						$('<p>').text(name),
						$('<p>').text(priority),
						$('<p>').text(favorite),
						$('<p>').text(sDate),
						$('<p>').text(eDate),
						$('<p>').text(dDate),
						$('<p>').text(notes)

						);
			});
			//$('#couch').listview('refresh');
		}
	});
}

$("#jsonB").bind("click", getJson);
$("#xmlB").bind("click", getXML);
$("#couchB").bind("click", getCouch);
$("#add").bind("click", validateForm);



});