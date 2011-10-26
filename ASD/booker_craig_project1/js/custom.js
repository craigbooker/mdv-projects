// Craig Booker  |  MIU Project 4 | 10/16/2011
	//$(document).ready(function() {
	$(function() {
		var today = new Date();
    	var todayStr = today.getFullYear()+"-"+(today.getMonth()+1)+"-"+today.getDate();
    	$('#mydate').trigger('datebox', {'method':'set', 'value':todayStr});
	
		$(document).bind("pagebeforechange", function (e, data) {
        if (typeof data.toPage === "string") {
            var u = $.mobile.path.parseUrl(data.toPage),
                re = /^#category-item/;
            if (u.hash.search(re) !== -1) {
                showCategory(u, data.options);
                e.preventDefault();
            }
        }
		});
	// -------   Start of : Variable Defaults --------------------------
    //var contextNames = ["---Choose a Context---", "Errand", "Home", "Office", "Calls", "People", "Waiting"];
    var errMsg = $('errors');	
    var favoriteValue;

	// End of: Variable Defaults
	// -------   Start of: Rebuilt Toggle Controls--------------------------
	function toggleControls(n) { /*  MIGHT NEED TO BE CHANGED */
	    switch (n) {
	    case "on":
	        $('addTaskForm').style.display = "none";
	        $('clear').style.display = "inline";
	        $('displayLink').style.display = "none";
	        $('addNew').style.display = "inline";
	        break;
	    case "off":
	        $('addTaskForm').style.display = "block";
	        $('clear').style.display = "inline";
	        $('displayLink').style.display = "inline";
	        $('addNew').style.display = "none";
	        $('items').style.display = "none";
	        break;
	    default:
	        return false;
	    }
	}
	// -------   End of: Rebuilt Toggle Controls--------------------------
	
	// -------   Start of: Make Categories --------------------------
    function makeCats(contextNames) {
        //var formTag = document.getElementsByTagName("form"); //formTag is an array of all the form tags.
        var formTag = document.getElementsByName("addTaskForm"); //formTag is an array of all the form tags.
        var    i;
        var     j;
        var    selectLi = $('selectLi'),
            makeSelect = document.createElement('select');
            makeSelect.setAttribute("id", "context");
        for (i = 0, j = contextNames.length; i < j; i++) {
            var makeOption = document.createElement('option');
            var optText = contextNames[i];
            makeOption.setAttribute("value", optText);
            makeOption.innerHTML = optText; /*  NEEDS CHANGED */
            makeSelect.appendChild(makeOption); /*  NEEDS CHANGED */
            $('select: #context').append(optText); /*  RECENTLY CHANGED */
        }
        selectLi.appendChild(makeSelect); /*  NEEDS CHANGED */
	}
    var contextNames = ["---Choose a Context---", "Errand", "Home", "Office", "Calls", "People", "Waiting"];
    makeCats(contextNames);
	// -------   End of:Make Categories --------------------------
	
	// -------   Start of: Get Data NEW --------------------------
    function getData(json) {
	    toggleControls("on");
	    if (localStorage.length === 0) {
	        autoFillData(json);
	        alert("There is no data in local Storage so default was added.");
	    }
	    // Write data from local storage to the browser
	    var makeDiv = document.createElement('div');
	    makeDiv.setAttribute("id", "items");
	    var makeList = document.createElement('ul');
	    makeDiv.appendChild(makeList);
	    document.body.appendChild(makeDiv);
	    $('items').style.display = "display";
	    for (var i=0, len = localStorage.length; i < len; i++) {
	        var makeLi    = document.createElement("li");
	        var linksLi        =    document.createElement("li");
	        makeList.appendChild(makeLi);
	        var key        = localStorage.key[i];
	        var value        =    localStorage.getItem[key];
	        // Convert the string from local storage value back to an object by using JSON.parse
	        var obj         =    JSON.parse(value);
	        var makeSubList    =    document.createElement('ul');
	        makeLi.appendChild(makeSubList);
	        getImage(obj.group[1], makeSubList);
	        for(var n in obj) {
	            var makeSubLi    =    document.createElement('li');
	            makeSubList.appendChild(makeSubLi);
	            var optSubText    =    obj[n][0]+" "+obj[n][1];
	            makeSubLi.innerHTML    =    optSubText; /*  NEEDS CHANGED */
	            makeSubList.appendChild(linksLi);
	        }
	        makeItemLinks(localStorage.key(i), linksLi);
	    }
	}
	// -------   End of: Get Data NEW --------------------------
	// -------   Start of: Rebuilt Find value of the check box. --------------------------
	    function getCheckboxValue() {
	            if ($('favorite').checked) {
	                favoriteValue = $('favorite').value;
	            } else {
	                favoriteValue = ("No");
	            }
	    }
	// -------   End of: Rebuilt Find value of the check box. --------------------------	
	// -------   Start of: Delete All Stored Tasks --------------------------
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
	// -------   Start of: Rebuilt Save Form Data --------------------------
    function storeData(key) {
        var id                =    Math.floor(Math.random()*100000000001);
        //getSelectedRadio();
        getCheckboxValue();
        var     item                    =    {};
                item.context    =    ["Context: ", $('context').value];
                item.name        =    ["Task Name: ", $('name').value];
                item.priority        =    ["Priority: ", $('priority').value];
                item.favorite    =    ["Favorite: ", $('favorite').value];
                item.sDate        =    ["Start Date: ", $('sDate').value];
                item.eDate        =    ["End Date: ", $('eDate').value];
                item.dDate        =    ["Due Date: ", $('dDate').value];
                item.notes        =    ["Notes: ", $('notes').value];
        // Save data into local storage: use stringify to convert our object to a string
        localStorage.setItem(id, JSON.stringify(item));
        alert("Task Saved!");
    }
// -------   End of:Rebuilt Save Form Data --------------------------
// -------   Start of : Form Validation --------------------------
function validate(e) {
    var getContext = $('context');
    var getName = $('name');
    var getPriority = $('priority');
    var getSdate = $('sDate');
    var getEdate = $('eDate');
    var getDdate = $('dDate');

    //Reset Error Messages
    errMsg.innerHTML = "";
    getContext.style.border = "1px solid black";
    getName.style.border = "1px solid black";
    getPriority.style.border = "1px solid black";

    // Get Error Mesages
    var messageAry = [];
    //Context Validation
    if (getContext.value === "---Choose Context ---") {
        var contextError = "Please choose a context.";
        getContext.style.border = "3px solid yellow";
        messageAry.push(contextError);
    }
    //Task Name Validation
    if (getName.value === "") {
        var nameError = "Please enter a task name.";
        getName.style.border = "3px solid yellow";
        messageAry.push(nameError);
    }
    //Priority Validation
    if (getPriority.value === "") {
        var priorityError = "Please set a priority.";
        getPriority.style.border = "3px solid yellow";
        messageAry.push(priorityError);
    }

    // If there are any errors, display them on the screen.
    if(messageAry.length >= 1) {
        for (var i=0, j=messageAry.length; i < j; i++) {
            var txt = document.createElement('li');
            txt.innnerHTML = messageAry[i];
            errMsg.appendChild(txt);
        }
    e.preventDefault();
    return false;
    } else {
            // If all is okay, save out data!
            storeData(e);
    }
}
// -------   End of : Form Validation --------------------------
// -------   Edit Task Data --------------------------
    function editItem(id) {
        //Grab Data from Local Storage
        var value = localStorage.getItem(this.key);
        var item = JSON.parse(value);
        //Show the form
        toggleControls("off");

        //Populate form fields with current localStorage values
        $('context').value = item.context[1];
        $('name').value = item.name[1];
        $('priority').value = item.priority[1];
        if (item.favorite[1] == "Yes") {
            $('favorite').setAttribute("checked", "checked");
        }
        $('sDate').value = item.sDate[1];
        $('eDate').value = item.eDate[1];
        $('dDate').value = item.dDate[1];
        $('notes').value = item.notes[1];

// Remove the initial listener from the input 'save task' button.
        //$('Add Task').value = ("Add Task");
        var editSave = $('Add Task');
        editSave.removeEventListner("click", storeData);
        // Change the submit value to say Edit button
        $('submit').value = ("Edit Contact");
        var editSubmit = $('submit');
        //Save the key value established in this function as a property of the editSubmit event
        // so we can use that value when we save the data we edited.
        editSubmit.addEventListener("click", validate);
        editSubmit.key = this.key;
    }
	// ------- End of:  Edit Task Data --------------------------
	// -------   Start of: Get Data NEW --------------------------
    function autoFillData() {
	    for(var n in json) {
	        var id =    Math.floor(Math.random()*100000000001);
	        localStorage.setItem(id, JSON.stringify(json[n]));
	        }
    }
	// -------   End of: autoFillData --------------------------
	// -------   Start of: Get Img NEW --------------------------
	
	    function getImage(catName, makeSubList) {
	        var imageLi    =    document.createElement('li');
	        makeSubList.appendChild('imageLi');
	        var newImage    =    document.createElement('img');
	        var setSrc    =    newImage.setAttribute("src", "images/"+ catName + ".png");
	        imageLi.appendChild(newImage);
	    }
	// -------   End of: Get Img NEW --------------------------
	// ------- Start of:  Delete Task Data --------------------------
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
	// -------   Start of: Make Item Links --------------------------
	    function makeItemLinks(key, linksLi) {
	    var editLink    =    document.createElement('a');
	    editLink.href    =    "#";
	    editLink.key    =    key;
	    var editText    =    "Edit Task";
	    editLink.addEventListener("click", editItem);
	    editLink.innerHTML    =    editText;   /*  NEEDS CHANGED */
	    linksLi.appendChild(editLink);
	
	    // Add Line Break
	    var breakTag = document.createElement('br'); 
	    linksLi.appendChild(breakTag);
	
	    var deleteLink    =    document.createElement('a');
	    deleteLink.href = "#";
	    deleteLink.key    =    key;
	    var deleteText = "Delete Task";
	    deleteLink.addEventListener("click", deleteTask);
	    deleteLink.innerHTML = deleteText; /*  NEEDS CHANGED */
	    linksLi.appendChild(deleteLink);
	    }
	// -------   End of: Make Item Links --------------------------
	// -------   Start of: SET LINK & SUBMIT CLICK EVENTS --------------------------
    var displayLink = $('displayLink');
    displayLink.addEventListener("click", getData(json));
    var clearLink = $('clear');
    clearLink.addEventListener("click", clearLocal);
    var save = $('submit');
    save.addEventListener("click", validate);    
    var clearForm = $('clearForm');
    clearForm.addEventListener("click", clearForm);    // NEED TO WRITE FUNCTION
	// -------   End of: SET LINK & SUBMIT CLICK EVENTS --------------------------
	}); // End of Container for DOM objects
    
	
	// getElementById Function
    function $(x) {
        var theElement = document.getElementById(x);
        return theElement;
    }
	

//window.addEventListener("DOMContentLoaded", function () {



// -------   Start of: JSON Data --------------------------

    var json = {
            "task1": {
                "context": ["Context:", "Errand" ],
                "name": ["Task Name:", "Get Vacuum Bags" ],
                "priority": ["Priority:", "5" ],
                "favorite": ["Favorite:",  "checked" ],
                "sDate": ["Start Date", "2011-05-11" ],
                "eDate": ["End Date:", "2011-05-12" ],
                "dDate": ["Due Date:", "2011-05-12" ],
                "notes": ["Notes:", "Don't forget to get the model fj2 bags." ]
            },
            "task2": {
                "context": ["Context:", "Errand" ],
                "name": ["Task Name:", "Buy Broom"],
                "priority": ["Priority:", "5"],
                "favorite": ["Favorite:", "unchecked"],
                "sDate": ["Start Date", "2011-05-11"],
                "eDate": ["End Date:", "2011-05-11"],
                "dDate": ["Due Date:", "2011-05-11"],
                "notes": ["Notes:", "Large broom for garage."]
            },
            "task3": {
                "context": ["Context:", "Errand" ],
                "name": ["Task Name:", "Buy blades for mower"],
                "priority": ["Priority:", "5"],
                "favorite": ["Favorite:",  "checked"],
                "sDate": ["Start Date", "2011-05-11"],
                "eDate": ["End Date:", "2011-05-14"],
                "dDate": ["Due Date:", "2011-05-16"],
                "notes": ["Notes:", "Honda SRT Model 5"]
            },
            "task4": {
                "context": ["Context:", "Errand" ],
                "name": ["Task Name:", "Buy pansies"],
                "priority": ["Priority:", "5"],
                "favorite": ["Favorite:", "unchecked"],
                "sDate": ["Start Date", "2011-05-11"],
                "eDate": ["End Date:", "2011-05-14"],
                "dDate": ["Due Date:", "2011-05-16"],
                "notes": ["Notes:", "For front flowerbed, purple and red."]
            },
            "task5": {
                "context": ["Context:", "Errand" ],
                "name": ["Task Name:", "Buy Grass Seed"],
                "priority": ["Priority:", "3"],
                "favorite": ["Favorite:", "checked"],
                "sDate": ["Start Date", "2011-05-11"],
                "eDate": ["End Date:", "2011-05-14"],
                "dDate": ["Due Date:", "2011-05-16"],
                "notes": ["Notes:", "Get fescue for backyard."]
            },
            "task6": {
                "context": ["Context:", "Home" ],
                "name": ["Task Name:", "Vacuum House"],
                "priority": ["Priority:", "5"],
                "favorite": ["Favorite:", "checked"],
                "sDate": ["Start Date", "2011-05-11"],
                "eDate": ["End Date:", "2011-05-14"],
                "dDate": ["Due Date:", "2011-05-16"],
                "notes": ["Notes:", ""]
            },
            "task7": {
                "context": ["Context:", "Home" ],
                "name": ["Task Name:", "Sweep Garage"],
                "priority": ["Priority:", "5"],
                "favorite": ["Favorite:", "checked"],
                "sDate": ["Start Date", "2011-05-11"],
                "eDate": ["End Date:", "2011-05-14"],
                "dDate": ["Due Date:", "2011-05-16"],
                "notes": ["Notes:", ""]
            },
            "task8": {
                "context": ["Context:", "Home" ],
                "name": ["Task Name:", "Mow Lawn"],
                "priority": ["Priority:", "5"],
                "favorite": ["Favorite:", "checked"],
                "sDate": ["Start Date", "2011-05-11"],
                "eDate": ["End Date:", "2011-05-14"],
                "dDate": ["Due Date:", "2011-05-16"],
                "notes": ["Notes:", ""]
            },
            "task9": {
                "context": ["Context:", "Home" ],
                "name": ["Task Name:", "Plant Flowers"],
                "priority": ["Priority:", "5"],
                "favorite": ["Favorite:", "checked"],
                "sDate": ["Start Date", "2011-05-11"],
                "eDate": ["End Date:", "2011-05-14"],
                "dDate": ["Due Date:", "2011-05-16"],
                "notes": ["Notes:", ""]
            },
            "task10": {
                "context": ["Context:", "Home" ],
                "name": ["Task Name:", "Plant Grass Seed"],
                "priority": ["Priority:", "5"],
                "favorite": ["Favorite:", "checked"],
                "sDate": ["Start Date", "2011-05-11"],
                "eDate": ["End Date:", "2011-05-14"],
                "dDate": ["Due Date:", "2011-05-16"],
                "notes": ["Notes:", ""]
            },
            "task11": {
                "context": ["Context:", "Office" ],
                "name": ["Task Name:", "Order Office Supplies"],
                "priority": ["Priority:", "5"],
                "favorite": ["Favorite:",  "checked"],
                "sDate": ["Start Date", "2011-05-11"],
                "eDate": ["End Date:", "2011-05-14"],
                "dDate": ["Due Date:", "2011-05-16"],
                "notes": ["Notes:", ""]
            },
            "task12": {
                "context": ["Context:", "Office" ],
                "name": ["Task Name:", "Clean Desk"],
                "priority": ["Priority:", "5"],
                "favorite": ["Favorite:", "checked"],
                "sDate": ["Start Date", "2011-05-11"],
                "eDate": ["End Date:", "2011-05-14"],
                "dDate": ["Due Date:", "2011-05-16"],
                "notes": ["Notes:", ""]
            },
            "task13": {
                "context": ["Context:", "Office" ],
                "name": ["Task Name:", "Reorganize Filecabinet"],
                "priority": ["Priority:", "5"],
                "favorite": ["Favorite:", "checked"],
                "sDate": ["Start Date", "2011-05-11"],
                "eDate": ["End Date:", "2011-05-14"],
                "dDate": ["Due Date:", "2011-05-16"],
                "notes": ["Notes:", ""]
            },
            "task14": {
                "context": ["Context:", "Office" ],
                "name": ["Task Name:", "Meeting with Mike"],
                "priority": ["Priority:", "5"],
                "favorite": ["Favorite:", "checked"],
                "sDate": ["Start Date", "2011-05-11"],
                "eDate": ["End Date:", "2011-05-14"],
                "dDate": ["Due Date:", "2011-05-16"],
                "notes": ["Notes:", ""]
            },
            "task15": {
                "context": ["Context:", "Office" ],
                "name": ["Task Name:", "Prepare Sales Presentation"],
                "priority": ["Priority:", "5"],
                "favorite": ["Favorite:", "checked"],
                "sDate": ["Start Date", "2011-05-11"],
                "eDate": ["End Date:", "2011-05-14"],
                "dDate": ["Due Date:", "2011-05-16"],
                "notes": ["Notes:", ""]
            },
            "task16": {
                "context": ["Context:", "Calls" ],
                "name": ["Task Name:", "Call Joe from Shipping"],
                "priority": ["Priority:", "5"],
                "favorite": ["Favorite:", "checked"],
                "sDate": ["Start Date", "2011-05-11"],
                "eDate": ["End Date:", "2011-05-14"],
                "dDate": ["Due Date:", "2011-05-16"],
                "notes": ["Notes:", ""]
            },
            "task17": {
                "context": ["Context:", "Calls" ],
                "name": ["Task Name:", "Call Car Dealer About Repair Status"],
                "priority": ["Priority:", "5"],
                "favorite": ["Favorite:", "checked"],
                "sDate": ["Start Date", "2011-05-11"],
                "eDate": ["End Date:", "2011-05-14"],
                "dDate": ["Due Date:", "2011-05-16"],
                "notes": ["Notes:", ""]
            },
            "task18": {
                "context": ["Context:", "Calls" ],
                "name": ["Task Name:", "Call AT&T About Texting Plan"],
                "priority": ["Priority:", "5"],
                "favorite": ["Favorite:", "checked"],
                "sDate": ["Start Date", "2011-05-11"],
                "eDate": ["End Date:", "2011-05-14"],
                "dDate": ["Due Date:", "2011-05-16"],
                "notes": ["Notes:", ""]
            },
            "task19": {
                "context": ["Context:", "Calls" ],
                "name": ["Task Name:", "Call Client to Setup Meeting"],
                "priority": ["Priority:", "5"],
                "favorite": ["Favorite:", "checked"],
                "sDate": ["Start Date", "2011-05-11"],
                "eDate": ["End Date:", "2011-05-14"],
                "dDate": ["Due Date:", "2011-05-16"],
                "notes": ["Notes:", ""]
            },
            "task20": {
                "context": ["Context:", "Calls" ],
                "name": ["Task Name:", "Call City About Utility Bill"],
                "priority": ["Priority:", "5"],
                "favorite": ["Favorite:", "checked"],
                "sDate": ["Start Date", "2011-05-11"],
                "eDate": ["End Date:", "2011-05-14"],
                "dDate": ["Due Date:", "2011-05-16"],
                "notes": ["Notes:", ""]
            },
            "task21": {
                "context": ["Context:", "People" ],
                "name": ["Task Name:", "Mike is preparing operations presentation"],
                "priority": ["Priority:", "5"],
                "favorite": ["Favorite:", "checked"],
                "sDate": ["Start Date", "2011-05-11"],
                "eDate": ["End Date:", "2011-05-14"],
                "dDate": ["Due Date:", "2011-05-16"],
                "notes": ["Notes:", ""]
            },
            "task22": {
                "context": ["Context:", "People" ],
                "name": ["Task Name:", "Jane is organizing lunch party"],
                "priority": ["Priority:", "5"],
                "favorite": ["Favorite:", "checked"],
                "sDate": ["Start Date", "2011-05-11"],
                "eDate": ["End Date:", "2011-05-14"],
                "dDate": ["Due Date:", "2011-05-16"],
                "notes": ["Notes:", ""]
            },
            "task23": {
                "context": ["Context:", "People" ],
                "name": ["Task Name:", "Joanne is creating spreadsheet for monthly budget"],
                "priority": ["Priority:", "5"],
                "favorite": ["Favorite:", "checked"],
                "sDate": ["Start Date", "2011-05-11"],
                "eDate": ["End Date:", "2011-05-14"],
                "dDate": ["Due Date:", "2011-05-16"],
                "notes": ["Notes:", ""]
            },
            "task24": {
                "context": ["Context:", "People" ],
                "name": ["Task Name:", "Joe is revising business plan"],
                "priority": ["Priority:", "5"],
                "favorite": ["Favorite:", "checked"],
                "sDate": ["Start Date", "2011-05-11"],
                "eDate": ["End Date:", "2011-05-14"],
                "dDate": ["Due Date:", "2011-05-16"],
                "notes": ["Notes:", ""]
            },
            "task25": {
                "context": ["Context:", "People" ],
                "name": ["Task Name:", "Judy is revisiting our marketing plan"],
                "priority": ["Priority:", "5"],
                "favorite": ["Favorite:", "checked"],
                "sDate": ["Start Date", "2011-05-11"],
                "eDate": ["End Date:", "2011-05-14"],
                "dDate": ["Due Date:", "2011-05-16"],
                "notes": ["Notes:", ""]
            },
            "task26": {
                "context": ["Context:", "Waiting" ],
                "name": ["Task Name:", "Research into new product line"],
                "priority": ["Priority:", "5"],
                "favorite": ["Favorite:", "checked"],
                "sDate": ["Start Date", "2011-05-11"],
                "eDate": ["End Date:", "2011-05-14"],
                "dDate": ["Due Date:", "2011-05-16"],
                "notes": ["Notes:", ""]
            },
            "task27": {
                "context": ["Context:", "Waiting" ],
                "name": ["Task Name:", "Remodel Kitchen"],
                "priority": ["Priority:", "5"],
                "favorite": ["Favorite:", "checked"],
                "sDate": ["Start Date", "2011-05-11"],
                "eDate": ["End Date:", "2011-05-14"],
                "dDate": ["Due Date:", "2011-05-16"],
                "notes": ["Notes:", ""]
            },
            "task28": {
                "context": ["Context:", "Waiting" ],
                "name": ["Task Name:", "Buy new car"],
                "priority": ["Priority:", "5"],
                "favorite": ["Favorite:", "checked"],
                "sDate": ["Start Date", "2011-05-11"],
                "eDate": ["End Date:", "2011-05-14"],
                "dDate": ["Due Date:", "2011-05-16"],
                "notes": ["Notes:", ""]
            },
            "task29": {
                "context": ["Context:", "Waiting" ],
                "name": ["Task Name:", "Rewire Cat 6 cabling throughout house"],
                "priority": ["Priority:", "5"],
                "favorite": ["Favorite:", "checked"],
                "sDate": ["Start Date", "2011-05-11"],
                "eDate": ["End Date:", "2011-05-14"],
                "dDate": ["Due Date:", "2011-05-16"],
                "notes": ["Notes:", ""]
            },
            "task30": {
                "context": ["Context:", "Waiting" ],
                "name": ["Task Name:", "Revamp company web site"],
                "priority": ["Priority:", "5"],
                "favorite": ["Favorite:", "checked"],
                "sDate": ["Start Date", "2011-05-11"],
                "eDate": ["End Date:", "2011-05-14"],
                "dDate": ["Due Date:", "2011-05-16"],
                "notes": ["Notes:", ""]
            }
    };


// -------    End of: JSON Data --------------------------

        // Create select field element and populate with options.












//});