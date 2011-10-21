// Craig Booker  |  MIU Project 4 | 10/16/2011

window.addEventListener("DOMContentLoaded", function () {
// getElementById Function
	function $(x) {
		var theElement = document.getElementById(x);
		return theElement;
	}
		// -------   Start of : Variable Defaults --------------------------
	var contextNames = ["---Choose a Context---", "Errand", "Home", "Office", "Calls", "People", "Waiting"];
	var errMsg = $('errors');
		// Create select field element and populate with options.
	function makeCats() {
		alert("i'm in!");
		var formTag = document.getElementsByName("addTaskForm"), //formTag is an array of all the form tags.
			i,
			j,
			selectLi = $('select');
		alert(formTag);
		var makeDiv = document.createElement("div");
		var makeSelect = document.createElement('select');
		makeDiv.setAttribute("data-role", "fieldcontain");
		makeSelect.setAttribute("id", "context");
		makeSelect.setAttribute("name", "context");
		makeSelect.setAttribute("data-native-menu", "false");
		for (i = 0, j = contextNames.length; i < j; i++) {
			var makeOption = document.createElement('option');
			var optText = contextNames[i];
			makeOption.setAttribute("value", optText);
			makeOption.innerHTML = optText;
			makeSelect.appendChild(makeOption);
		}
		selectLi.appendChild(makeSelect);
	}
	makeCats();
// -------   Start of : Show Category List -------------------------- 
/*
function showCategory(urlObj, options) {
	var categoryName = urlObj.hash.replace(/.*category=/, ""),
		actionName = urlObj.hash.replace(/.*show=/, ""),
		category = json.[categoryName],
		pageSelector = urlObj.hash.replace(/\?.*$/, ""),
		//alert(pageSelector);
		i;
	if (category) {
		var $page = $(pageSelector),
			$header = $page.children(":jqmData(role=header)"),
			$content = $page.children(":jqmData(role=content)"),
			markup = "<p><img src=\"img" + category  + "/></p><ul data-role='listview' data-inset='true'>",
			cItems = category.tasks,
			numItems = cItems.length;
// Make a list item for each item in the category and add to markup
		for (i = 0; i < numItems; i++) {
			markup += "<li><h3>" + cItems[i].name  + "</h3><p>" + cItems[i].priority + "</p><p class=\"ui-li-aside\"><strong>" + "</strong></p></li>";
		}
		markup += "</ul>";
		$header.find("h1").html(category.name);
		$content.html(markup);
		$page.page();
		$content.find(":jqmData(role=listview)").listview();
		options.dataUrl = urlObj.href;
		$.mobile.changePage($page, options);
	}
}
// -------   End of : Show Category List -------------------------- */

// -------   Start of: Rebuilt Toggle Controls--------------------------

function toggleControls(n) {
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
// -------   Start of: Get Data NEW --------------------------
	function autoFillData() {
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
	for(var n in json) {	
		var id =	Math.floor(Math.random()*100000000001);
		localStorage.setItem(id, JSON.stringify(json[n]));
		}
}	
// -------   End of: autoFillData --------------------------
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
		save.removeEventListner("click", storeData);
		// Change the submit value to say Edit button
		$('submit').value = ("Edit Contact");
		var editSubmit = $('submit');
		//Save the key value established in this function as a property of the editSubmit event
		// so we can use that value when we save the data we edited.
		editSubmit.addEventListener("click", validate);
		editSubmit.key = this.key;
	}
// ------- End of:  Edit Task Data --------------------------
// -------   Start of: Make Item Links --------------------------
	function makeItemLinks(key, linksLi) {
	var editLink	=	document.createElement('a');
	editLink.href	=	"#";
	editLink.key	=	key;	
	var editText	=	"Edit Task";
	editLink.addEventListener("click", editItem);
	editLink.innerHTML	=	editText;
	linksLi.appendChild(editLink);
	
	// Add Line Break
	var breakTag = document.createElement('br');
	linksLi.appendChild(breakTag);
	
	var deleteLink	=	document.createElement('a');
	deleteLink.href = "#";
	deleteLink.key	=	key;
	var deleteText = "Delete Task";
	deleteLink.addEventListener("click", deleteItem);
	deleteLink.innerHTML = deleteText;
	linksLi.appendChild(deleteLink);
	}
// -------   End of: Make Item Links --------------------------

// -------   Start of: Get Data NEW --------------------------
function getData() {
	toggleControls("on");
	if (localStorage.length === 0) {
		autoFillData();
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
		var makeLi	= document.createElement("li");
		var linksLi		=	document.createElement("li");
		makeList.appendChild(makeLi);
		var key		= localStorage.key[i];
		var value		=	localStorage.getItem[key];
		// Convert the string from local storage value back to an object by using JSON.parse
		var obj 		=	JSON.parse(value);
		var makeSubList	=	document.createElement('ul');
		makeLi.appendChild(makeSubList);
		getImage(obj.group[1], makeSubList);
		for(var n in obj) {
			var makeSubLi	=	document.createElement('li');
			makeSubList.appendChild(makeSubLi);
			var optSubText	=	obj[n][0]+" "+obj[n][1];
			makeSubLi.innerHTML	=	optSubText;
			makeSubList.appendChild(linksLi);
		}
		makeItemLinks(localStorage.key(i), linksLi);
	}
}
// -------   End of: Get Data NEW --------------------------
// -------   Start of: SET LINK & SUBMIT CLICK EVENTS --------------------------
	var displayLink = $('displayLink');
	displayLink.addEventListener("click", getData);
	var clearLink = $('clear');
	clearLink.addEventListener("click", clearLocal);
	var save = $('submit');
	save.addEventListener("click", validate);	
// -------   End of: SET LINK & SUBMIT CLICK EVENTS --------------------------
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
		getContext.style.border = "2px solid yellow";
		messageAry.push(contextError);
	}
	//Task Name Validation
	if (getName.value === "") {
		var nameError = "Please enter a task name.";
		getName.style.border = "2px solid yellow";
		messageAry.push(nameError);	
	}
	//Priority Validation
	if (getPriority.value === "") {
		var priorityError = "Please set a priority.";
		getPriority.style.border = "2px solid yellow";
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

// -------   End of : Form Validation --------------------------
// -------   Start of: Rebuilt Find value of the check box. --------------------------
	function getCheckboxValue() {
			var favoriteValue;
			if ($('favorite').checked) {
				favoriteValue = $('favorite').value;
			} else {
				favoriteValue = ("No");
			}
	}
}
// -------   End of: Rebuilt Find value of the check box. --------------------------
// -------   Start of: Rebuilt Save Form Data --------------------------
	function storeData(key) {
		var id				=	Math.floor(Math.random()*100000000001);
		//getSelectedRadio();
		getCheckboxValue();
		var 	item					=	{};
				item.context	=	["Context: ", $('context').value];
				item.name		=	["Task Name: ", $('name').value];
				item.priority		=	["Priority: ", $('priority').value];
				item.favorite	=	["Favorite: ", $('favorite').value];
				item.sDate		=	["Start Date: ", $('sDate').value];
				item.eDate		=	["End Date: ", $('eDate').value];
				item.dDate		=	["Due Date: ", $('dDate').value];
				item.notes		=	["Notes: ", $('notes').value];
		// Save data into local storage: use stringify to convert our object to a string
		localStorage.setItem(id, JSON.stringify(item));
		alert("Task Saved!");
	}
// -------   End of:Rebuilt Save Form Data --------------------------
// ------- Start of:  Delete Task Data --------------------------
function deleteTask(id) {
	var ask	=	confirm("Are you sure you want to delete this task?");
	if (ask) {
		localStorage.removeItem(id);
		window.location.reload();
	}	else	{
		alert("Item not removed!");
	}
}
// ------- End of:  Delete Task Data --------------------------

// -------   Start of: Get Img NEW --------------------------

	function getImage(catName, makeSubList) {
		var imageLi	=	document.createElement('li');
		makeSubList.appendChild('imageLi');
		var newImage	=	document.createElement('img');
		var setSrc	=	newImage.setAttribute("src", "images/"+ catName + ".png");
		imageLi.appendChild(newImage);
	}
// -------   End of: Get Img NEW --------------------------

});