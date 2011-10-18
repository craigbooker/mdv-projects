
// Craig Booker  |  MIU Project 4 | 10/16/2011
window.addEventListener("DomContentLoaded", function() {

	// getElementById Function
	function $(x) {
		var theElement = document.getElementById(x);
		return theElement;
	}
	function makeCats () {
			var formTag = document.getElementsByTagName("form"),
					selectLi = $('select'),
					makeSelect = document.createElement('select');
					makeSelect.setAttribute("id", "context");
			for(var i = 0, j = contextNames.length; i<j; i++) {
				var makeOption = document.createElement('option');
				var optText = contextNames[i];
				makeOption.setAttribute("value", optText);
				makeOption.innerHTML = optText;
				makeSelect.appendChild(makeOption);
			}
			select.Li.appendChild(makeSelect);
	}
	var catNames = ["CONTEXT", "errand", "home", "office", "calls", "people", "waiting"];
	var formTag = document.getElementById('form');
	var makePara = document.createElement("p");
	var locFormStor;
	var formDataStorage;
	var editing;
	var makeDiv = document.createElement("div");
	var makeLabel = document.createElement("label");
	//var getTContext	= document.getElementById('tContextList');
	var	makeSelect = document.createElement("select");
	//var makeLabel = document.createElement("label");
	makeDiv.setAttribute("data-role", "fieldcontain");
	makeSelect.setAttribute("id", "tContext");
	makeSelect.setAttribute("name", "tContext");
	makeSelect.setAttribute("data-native-menu", "false");


var makeCats = function (name) {
	var i, j;
	for (i = 0, j = catNames.length; i < j; i++) {
		var makeOption = document.createElement("option");
		var optText = document.createTextNode(catNames[i]);
		makeOption.setAttribute("value", catNames[i]);
		makeOption.setAttribute("id", "tContext");
		makeOption.appendChild(optText);
		makeSelect.appendChild(makeOption);
	}

	makeDiv.appendChild(makeSelect);
	makePara.appendChild(makeDiv);

	var getUL = document.getElementById('form')[0].firstChild;
	var paraSelect = document.getElementById('form')[0].insertBefore(makePara, getUL);
};
makeCats();


// Load JSON data for index page
var handleData = function (json) {
	for (var i = 0; i < json.participants.length; i++) {
		var participant = json.participants[i];
		console.log("User ID: " + participant.uuid + ", Name: " + participant.name + ", Age: " + participant.age + ", Weight:" + participant.weight + ", Title:" + participant.title + ", Classification:" + participant.classification + ", Mood Descriptions:" + participant.moodDesc);
	};
};

//handleData(json);

//
var jsonstring = JSON.stringify(json);
//console.log(jsonstring);

var receivedjson = JSON.parse(jsonstring);
//console.log(receivedjson);

// END OF: json_data function




// ----- Make Cats New Function

	var makeCategory = function( urlObj, options) {
	var categoryName = urlObj.hash.replace( /.*category=/, "" ),
		category = categoryData[ categoryName],
		pageSelector = urlObj.hash.replace( /\?.*$/, "" );
/*	<li><a href="index.html">
				<h3>jQuery Team</h3>
				<p><strong>Boston Conference Planning</strong></p>
				<p>In preparation for the upcoming conference in Boston, we need to start gathering a list of sponsors and speakers.</p>
				<p class="ui-li-aside"><strong>9:18</strong>AM</p>
			</a></li> */
		if (category) {
				var $page = $(pageSelector),
					$header = $page.children( ":jqmData(role=header)"),
					$content = $page.children(":jqmData(role=content)"),
					markup = "<p><img src=\"" + category  + "/>" + category.description + "</p> <ul dara-role='listview' data-inset='true'>",
					cItems = category.items,
					numItems = cItems.length;
					// Make a list item for each item in the category and add to markup
					for (var i = 0; i < numItems; i++ ) {
							//markup += "<li><h3>" + cItems[i].name + "<p><strong>" + + "</strong></p>";
							//markup += "<p>" + tNotes + "</p>"
							markup += "<option>" + catNames[i] + "</option>"
							markup += "<li><h3>" + cItems[i].name  + "</h3><p>" + cItems[i].tPriority +"</p><p class=\"ui-li-aside\"><strong>" + "</strong></p></li>";	
					}
					markup += "</ul>";
					$header.find("h1").html(category.name);
					$content.html(markup);
					$page.page();
					$content.find(":jqmData(role=listview)" ).listview();
					options.dataUrl = urlObj.href;
					$.mobile.changePage($page, options);
		}
}


// ---- End of Cats New Function

// -------  Set Initial Data - using an object --------------------------
	function intializeData() {
	// If this key exists then we can bail out, as we have already initialized
	if (storage.getItem(key) !== null) { return; }

	// Otherwise, we need to populate localStorage with dummy data
	var initialData = [
	{
		"id": "",
		"tContext": "errand",
		"tName": "Get Office Supplies",
		"tPriority": "5",
		"tFavorite": "",
		"sDate": "2011-08-01",
		"eDate": "2011-08-03",
		"dDate": "2011-08-04",
		"tNotes": "Need to pick up some office supplies"
	},
	{
		"id": "",
		"tContext": "home",
		"tName": "Do laundry",
		"tPriority": "4",
		"tFavorite": "on",
		"sDate": "2011-08-02",
		"eDate": "2011-08-04",
		"dDate": "2011-08-05",
		"tNotes": ""
	
	},
	{
		"id": "",
		"tContext": "office",
		"tName": "Create Presentation",
		"tPriority": "7",
		"tFavorite": "",
		"sDate": "2011-08-01",
		"eDate": "2011-08-05",
		"dDate": "2011-08-06",
		"tNotes": "Need to get keynote presentation made."
	
	},
	{
		"id": "",
		"tContext": "calls",
		"tName": "Call utility company",
		"tPriority": "3",
		"tFavorite": "",
		"sDate": "2011-08-01",
		"eDate": "2011-08-02",
		"dDate": "2011-08-02",
		"tNotes": "Call about recent bill"
		
	},
	{
		"id": "",
		"tContext": "people",
		"tName": "Delegate Presentation Segment",
		"tPriority": "6",
		"tFavorite": "",
		"sDate": "2011-08-01",
		"eDate": "2011-08-09",
		"dDate": "2011-08-10",
		"tNotes": "Need to delegate the production segment of presentation."
	
	},
	{
		"id": "",
		"tContext": "waiting",
		"tName": "Operations Presentation",
		"tPriority": "5",
		"tFavorite": "",
		"sDate": "2011-08-01",
		"eDate": "",
		"dDate": "2011-08-05",
		"tNotes": "Waiting on operations presentation segment from Jane."
	
	},
		
	];
<<<<<<< HEAD
=======
	
	var categoryData = {
			errand: {
				name: "Errand",
				description: "All your errands waiting to be done.",
				items: [
					{
						name: "Go Grocery Shopping",
						tPriority: "5"
					},
					{
						name: "Go to Hardware Store",
						tPriority: "5"

					},		
					{
						name: "Go to Dry Cleaners",
						tPriority: "5"

					},		
					{
						name: "Go Get Movie from Redbox",
						tPriority: "5"

					},
					{
						name: "Go By Bank",
						tPriority: "5"

					},
				
				]
			},
			home: {
				name: "Home",
				description: "All your things around the house waiting to be done.",
				tName: [
					{
						name: "Vacuum House",
						tPriority: "5"
					},
					{
						name: "Sweep Garage",
						tPriority: "5"

					},		
					{
						name: "Mow Lawn"
					},		
					{
						name: "Plant Flowers"
					},
					{
						name: "Plant Grass Seed"
					},
				
				],
				priority: [
					{
						tPriority: "5"

					},
				
				
				
				
				]
			},
			office: {
				name: "Office",
				description: "All your tasks at the office to be done.",
				items: [
					{
						name: "Order Office Supplies",
						tPriority: "5"

					},
					{
						name: "Clean Desk",
						tPriority: "5"

					},		
					{
						name: "Reorganize Filecabinet",
						tPriority: "5"

					},		
					{
						name: "Meeting with Mike",
						tPriority: "5"

					},
					{
						name: "Prepare Sales Presentation",
						tPriority: "5"

					},
				
				]
			},	
			calls: {
				name: "Calls",
				description: "All your calls waiting to be made.",
				items: [
					{
						name: "Call Joe from Shipping",
						tPriority: "5"

					},
					{
						name: "Call Car Dealer About Repair Status",
						tPriority: "5"

					},		
					{
						name: "Call AT&T About Texting Plan",
						tPriority: "5"

					},		
					{
						name: "Call Client to Setup Meeting",
						tPriority: "5"

					},
					{
						name: "Call City About Utility Bill",
						tPriority: "5"

					},
				
				]
			},	
			people: {
				name: "People",
				description: "All items delegated to people.",
				items: [
					{
						name: "Mike is preparing operations presentation",
						tPriority: "5"

					},
					{
						name: "Jane is organizing lunch party",
						tPriority: "5"

					},
					{
						name: "Joanne is creating spreadsheet for monthly budget",
						tPriority: "5"

					},
					{
						name: "Joe is revising business plan",
						tPriority: "5"

					},
					{
						name: "Judy is revisiting our marketing plan",
						tPriority: "5"

					},
				
				]
			},
			waiting: {
				name: "Waiting",
				description: "All items that are on pause.",
				items: [
					{
						name: "Research into new product line",
						tPriority: "5"

					},
					{
						name: "Remodel Kitchen",
						tPriority: "5"

					},
					{
						name: "Buy new car",
						tPriority: "5"

					},
					{
						name: "Rewire Cat 6 cabling throughout house",
						tPriority: "5"

					},
					{
						name: "Revamp company web site",
						tPriority: "5"

					},
				
				]
			}
	}
	
	
	
	
		
	function showCategory( urlObj, options) {
	var categoryName = urlObj.hash.replace( /.*category=/, "" ),
		category = categoryData[ categoryName],
		pageSelector = urlObj.hash.replace( /\?.*$/, "" );
		if (category) {
				var $page = $(pageSelector),
					$header = $page.children( ":jqmData(role=header)"),
					$content = $page.children(":jqmData(role=content)"),
					markup = "<p><img src=\"" + category  + "/>" + category.description + "</p> <ul dara-role='listview' data-inset='true'>",
					cItems = category.items,
					numItems = cItems.length;
					// Make a list item for each item in the category and add to markup
					for (var i = 0; i < numItems; i++ ) {
							//markup += "<li><h3>" + cItems[i].name + "<p><strong>" + + "</strong></p>";
							//markup += "<p>" + tNotes + "</p>"
							markup += "<li><h3>" + cItems[i].name  + "</h3><p>" + cItems[i].tPriority +"</p><p class=\"ui-li-aside\"><strong>" + "</strong></p></li>";	
					}
					markup += "</ul>";
					$header.find("h1").html(category.name);
					$content.html(markup);
					$page.page();
					$content.find(":jqmData(role=listview)" ).listview();
					options.dataUrl = urlObj.href;
					$.mobile.changePage($page, options);
		}
}








// Altering function to print out table of data
function showCategory( urlObj, options) {
	var categoryName = urlObj.hash.replace( /.*category=/, "" ),
		tContextName = urlObj.hash.replace( /.*category=/, "" ),
		category = categoryData[ categoryName],
		context = initialData [categoryName],
		pageSelector = urlObj.hash.replace( /\?.*$/, "" );
/*	<li><a href="index.html">
				<h3>jQuery Team</h3>
				<p><strong>Boston Conference Planning</strong></p>
				<p>In preparation for the upcoming conference in Boston, we need to start gathering a list of sponsors and speakers.</p>
				<p class="ui-li-aside"><strong>9:18</strong>AM</p>
			</a></li> */
		if (category) {
				var $page = $(pageSelector),
					$header = $page.children( ":jqmData(role=header)"),
					$content = $page.children(":jqmData(role=content)"),
					markup = "<p><img src=\"" + category  + "/>" + category.description + "</p> <ul dara-role='listview' data-inset='true'>",
					cItems = category.items,
					numItems = cItems.length;
					// Make a list item for each item in the category and add to markup
					for (var i = 0; i < numItems; i++ ) {
							//markup += "<li><h3>" + cItems[i].name + "<p><strong>" + + "</strong></p>";
							//markup += "<p>" + tNotes + "</p>"
							markup += "<li><h3>" + cItems[i].name  + "</h3><p>" + cItems[i].tPriority +"</p><p class=\"ui-li-aside\"><strong>" + "</strong></p></li>";	
					}
					markup += "</ul>";
					$header.find("h1").html(category.name);
					$content.html(markup);
					$page.page();
					$content.find(":jqmData(role=listview)" ).listview();
					options.dataUrl = urlObj.href;
					$.mobile.changePage($page, options);
		}
}



// END OF: Altering function to print out table of data


$(document).bind("pagebeforechange", function(e, data) {
		if (typeof data.toPage === "string") {
			var u = $.mobile.path.parseUrl(data.toPage),
						re = /^#category-item/;
			if(u.hash.search(re) !== -1) {
					showCategory(u, data.options);
					e.preventDefault();
			}
		}
});
>>>>>>> dynamic-index

	// Simple example of read data
	var popluate = function(data) {
		for (var i in data) {
		var item	= data[i];
		var key		= item.id;
		// Hard way
		var value = [item.id, item.name, item.cat].join(';');
		// This is the easy way
		var value = JSON.stringify(item);
		storage.setItem(key, value);
		}
	
	};

}

// -------  Set Form Default Values --------------------------


function setDefaultData() {
			document.getElementById('tName').value = 'Enter task name';
			document.getElementById('tPriority').value =	0;
			document.getElementById('dDate').value =	'Enter task due date';
			document.getElementById('sDate').value =	'Enter start date';
			document.getElementById('eDate').value =	'Enter end date';
			document.getElementById('tNotes').value =	'Notes';
		return;
}

// -------   Form Validation --------------------------

function validateForm() {
	//alert("Beginning validation!");
	var validStatus		=	[];
	var fieldsChecked = ["Context", "Task Name", "Start Date", "End Date", "Due Date"];
	var defFieldvals = ["SELECT", "Enter task name", "Enter task start date", "Enter task end date", "Enter task due date", "Notes"];
	var validCount = 0;

	//var getInvalidfields; 
	var getTcontext = document.getElementById('tContext').value;
	if ((getTcontext === "") || (getTcontext === defFieldvals[0])) {
		validStatus.push("false");
	} else {
		validStatus.push("true");
		validCount += 1;
	}
	var getTname = document.getElementById("tName").value;
	if ((getTname === "") || (getTname  === defFieldvals[1])) {
		validStatus.push("false");
	} else {
		validStatus.push("true");
		validCount += 1;
	}
	var getSdate = document.getElementById("sDate").value;
	if ((getSdate === "") || (getSdate === defFieldvals[2])) {
		validStatus.push("false");
	} else {
		validStatus.push("true");
		validCount += 1;
	}
	var getEdate = document.getElementById("eDate").value;
	if ((getEdate === "") || (getEdate === defFieldvals[3])) {
		validStatus.push("false");
	} else {
		validStatus.push("true");
		validCount += 1;
	}
	var getDdate = document.getElementById("dDate").value;
	if ((getDdate === "") || (getDdate === defFieldvals[4])) {
		validStatus.push("false");
	} else {
		validStatus.push("true");
		validCount += 1;
	}
	//alert(validStatus);
	var errorFields = [];
	var iCount;
	for (iCount = 0; iCount < validStatus.length; iCount++) {
		if (validStatus[iCount] === "false") {
			var addTo = (fieldsChecked[iCount]);
			errorFields.push(addTo); //This keeps a running list of the fields with errors.
		}
	}
	if (validCount < fieldsChecked.length) {
		alert("There are errors with the following fields:" + errorFields);
	} else {
		alert("Form Submitted!");
		//if (editing === "false"){
		//saveItems(id);
		}
	} // validateForm	


// -------   NEW VERSION : Form Validation --------------------------
function validate(e) {
	var getContext = $('context');
	var getTname = $('tName');
	var getPriority = $('priority');
	var getSdate = $('sDate');
	var getEdate = $('eDate');
	var getDdate = $('dDate');

	//Reset Error Messages
	errMsg.innerHTML = "";
	getContext.style.border = "1px solid black";
	getTname.style.border = "1px solid black";

	// Get Error Mesages
	var messageAry = [];
	//Context Validation
	if (getContext.value === "---Choose Context ---") {
		var contextError = "Please choose a context.";
		getContext.style.border = "1px solid red";
		messageAry.push(contextError);
	}
	//Task Name Validation
	if (getTname.value === "") {
		var tNameError = "Please enter a task name.";
		getTname.style.border = "1px solid red";
		messageAry.push(tNameError);	
	}
	
	// If there are any errors, display them on the screen.
	if(messageAry.length >= 1) {
		for (var i=0, j=messageAry.length; i < j; i++) {
			var txt = document.createElement('li');
			txt.innnerHTML = messageAry[i];
			errMsg.appendChild(txt);
		}
	
	}
	e.preventDefault();
	return false;
	} else {
			// If all is okay, save out data!
			storeData();
	}
}

// -------   End of NEW VERSION : Form Validation --------------------------


// -------   Start of NEW VERSION : Variable Defaults --------------------------

	var contextNames = ["---Choose a Context---", "errand", "home", "office", "calls", "people", "waiting"],
			favoriteValue = "No",
			errMsg = $('errors');
	;
	makeCats();
	
// -------   Start of: SET LINK & SUBMIT CLICK EVENTS --------------------------
	/*var displayLink = $('displayLink');
	displayLink.addEventListener("click", getData);
	var clearLink = $('clear');
	clearLink.addEventListener("click", clearLocal);
	var save = $('submit');
	save.addEventListener("click", validate);	*/
	
// -------   End of: SET LINK & SUBMIT CLICK EVENTS --------------------------
	

// -------   Build Browse Tasks by Context --------------------------


<<<<<<< HEAD
function bluildIndexPage(id) {
=======
function bluildPage(id) {
>>>>>>> dynamic-index
	var ttlValidKeys = 8;
	//var contextNames = catNames;
	var context = ["none", "errand", "home", "office", "phone", "people", "waiting"];
	var keyCheck = localStorage.key(0);
	var checkLoc = /^\d+$/.test(keyCheck);
	if((keyCheck === "") || (checkLoc === false )) {
		setDefaultData();
	}
	var locId = id;
	var i, len, j;
	// write the data from local storage to the browser
	var makeDiv	= document.createElement("div");
	//makeDiv.setAttribute("class",  "output");
	var makeList	= document.createElement("ul");
	makeDiv.appendChild(makeList);
	document.body.appendChild(makeDiv);
	for (i = 0, len = localStorage.length; i < len; i++, j++) {
		var key		=	localStorage.key(i);
		var isNumber = /^\d+$/.test(key);
		if (isNumber === true) {
		var value	=	localStorage.getItem(key);
		var allLength = value.length;
		value = value.split(";");
		//alert(value);
		/*
		<ul data-role="listview">
			<li data-role="list-divider">Browse By Category</li>
			<li><a href="index.html">Errand <span class="ui-li-count">12</span></a></li>
			<li><a href="index.html">Home <span class="ui-li-count">0</span></a></li>
			<li><a href="index.html">Office <span class="ui-li-count">4</span></a></li>
			<li><a href="index.html">Calls<span class="ui-li-count">328</span></a></li>
			<li><a href="index.html">People <span class="ui-li-count">62</span></a></li>
			<li><a href="index.html">Waiting <span class="ui-li-count">62</span></a></li>

		</ul>
		*/
		
		var tContext			=	value[0];
		var tName				=	value[1];
		var tPriority				=	value[2];
		var tFavorite			=	value[3];
		var sDate					=	value[4];
		var eDate				=	value[5];
		var dDate				=	value[6];
		var tNotes				=	value[7];

		//var newDiv		=	document.createElement("div");
		var makeLi	= document.createElement("li");
		var contextLi		=	document.createElement("li");
		makeList.appendChild(makeLi);
		//makeList.setAttribute("class", "output");
		makeLi.style.display = ('block');
		var makeSubList = document.createElement("ul");
		//makeSubList.setAttribute("class", "items");
		makeLi.appendChild(makeSubList);
		var d; // Field Values Counter
		for (d = 0; d < ttlValidKeys; d++) {
			var makeSubLi	= document.createElement("li");
			makeSubList.appendChild(makeSubLi);
			var locFVals = (value[d]);
			var locTNode = document.createTextNode(locFVals);
			makeSubLi.appendChild(locTNode);
			makeSubList.appendChild(linksLi);
			var imgHref = ("img/" + tContext + ".png");
			var makeImg = document.createElement("img"); // Add image
			var setSrc = newImg.setAttribute("src", imgHref);
			makeSubList.appendChild(makeImg);
			var contextLink	= document.createElement("a");//Add delete single task link
			var setHref		=	deleteLink.setAttribute("href", "#");
			deleteLink.setAttribute("class", "stdDelBtn");
			var setOnclick	=	contextLink.setAttribute("onclick", "showContext(" + context + ");");
			var showContext	=	document.createTextNode(context);
			deleteLink.appendChild(deleteText);
			contextLi.appendChild(deleteLink);
			}
			
			//linksLi.appendChild()
			makeSubList.appendChild(linksLi);
			deleteLink.style.display = ('inline');

			
		}
			//else {
		//return;
		//} 
	}
}








// -------   Get and display saved form data --------------------------


function getItems(id) {
	var ttlValidKeys = 8;
	var tImg = ["none", "errand", "home", "office", "phone", "people", "waiting"];
	var keyCheck = localStorage.key(0);
	var checkLoc = /^\d+$/.test(keyCheck);
	if((keyCheck === "") || (checkLoc === false )) {
		setDefaultData();
	}
	var locId = id;
	var i, len, j;
	// write the data from local storage to the browser
	var makeDiv	= document.createElement("div");
	makeDiv.setAttribute("class",  "output");
	var makeList	= document.createElement("ul");
	makeDiv.appendChild(makeList);
	document.body.appendChild(makeDiv);
	//var getListdiv	= document.getElementById('toDolist');
	//getListdiv.appendChild(makeList);
	for (i = 0, len = localStorage.length; i < len; i++, j++) {
		var key		=	localStorage.key(i);
		var isNumber = /^\d+$/.test(key);
		if (isNumber === true) {
		var value	=	localStorage.getItem(key);
		var allLength = value.length;
		value = value.split(";");
		//alert(value);
		var tContext			=	value[0];
		var tName				=	value[1];
		var tPriority			=	value[2];
		var tFavorite			=	value[3];
		var sDate				=	value[4];
		var eDate				=	value[5];
		var dDate				=	value[6];
		var tNotes				=	value[7];

		//var newDiv		=	document.createElement("div");
		var makeLi	= document.createElement("li");
		var linksLi		=	document.createElement("li");
		makeList.appendChild(makeLi);
		makeList.setAttribute("class", "output");
		makeLi.style.display = ('block');
		var makeSubList = document.createElement("ul");
		makeSubList.setAttribute("class", "items");
		makeLi.appendChild(makeSubList);
		var d; // Field Values Counter
		for (d = 0; d < ttlValidKeys; d++) {
			var makeSubLi	= document.createElement("li");
			makeSubList.appendChild(makeSubLi);
			var locFVals = (value[d]);
			var locTNode = document.createTextNode(locFVals);
			makeSubLi.appendChild(locTNode);
			makeSubList.appendChild(linksLi);
			}
			var imgHref = ("img/" + tContext + ".png");
			var newImg = document.createElement("img"); // Add image
			var setSrc = newImg.setAttribute("src", imgHref);
			makeSubList.appendChild(newImg);
			var deleteLink	= document.createElement("a");//Add delete single task link
			var setHref		=	deleteLink.setAttribute("href", "#");
			deleteLink.setAttribute("class", "stdDelBtn");
			//var setDeleteId	=	deleteLink.setAttribute("class", "stdDelBtn");
			var setOnclick	=	deleteLink.setAttribute("onclick", "deleteTask(" + key + ");");
			var deleteText	=	document.createTextNode("delete");
			deleteLink.appendChild(deleteText);
			linksLi.appendChild(deleteLink);
			//linksLi.appendChild()
			makeSubList.appendChild(linksLi);
			deleteLink.style.display = ('inline');

			var editLink 				= document.createElement("a");/* Add edit single task link */
			var setEditHref		=	editLink.setAttribute("href", "#");
			var setEditId				=	editLink.setAttribute("class", "stdEdtBtn");
			var setEditOnclick	=	editLink.setAttribute("onclick", "editData(" + key + ");");
			var editText				=	document.createTextNode("edit");
			editLink.appendChild(editText);
			linksLi.appendChild(editLink);
			newImg.style.display = ('inline');
			var clearLink = document.getElementById('clear');
			clearLink.style.display = ('block');
			makeSubList.appendChild(linksLi);
		}
			//else {
		//return;
		//} 
	}
}

// -------   Start of: Save Form Data --------------------------

function saveItems(id) {
	//alert("Inside Save items function");
	var itemId = id;
<<<<<<< HEAD
	alert(editing);
=======
	//alert(editing);
>>>>>>> dynamic-index
	validateForm(id);
	//if (editing === "false") {
	var itemId				=	Math.floor(Math.random()*100000000001);
	//}
	var tContext			=	document.getElementById('tContext').value;
	var tName				=	document.getElementById('tName').value;
	var tPriority			=	document.getElementById('tPriority').value;
	var tFavorite			=	document.getElementById('tFavorite').value;
	var sDate				=	document.getElementById('sDate').value;
	var eDate				=	document.getElementById('eDate').value;
	var dDate				=	document.getElementById('dDate').value;
	var tNotes				=	document.getElementById('tNotes').value;
	var allItems			=	[
		tContext,
		tName,
		tPriority,
		tFavorite,
		sDate,
		eDate,
		dDate,
		tNotes
		];
		localStorage.setItem(itemId, allItems.join(';'));
		location.reload();
} //saveItems

// -------   Start of: Rebuilt Find value of selected radio button. --------------------------
	function getSelectedRadio() {
		var radios = document.forms[0].sex;
		for(var i=0; i < radios.length; i++) {
			if(radios[i].checked) {
				sexValue = radios[i].value;
			}
		}
	}
// -------   End of: Rebuilt Find value of selected radio button. --------------------------

// -------   Start of: Rebuilt Find value of the check box. --------------------------
	function getCheckboxValue() {
			if ($('favorite').checked) {
				favoriteValue = $('favorite').value;
			} else {
				favoriteValue = "No"
			}
	}
// -------   End of: Rebuilt Find value of the check box. --------------------------

// -------   Start of: Rebuilt Toggle Controls--------------------------

function toggleControls(n) {
	switch(n) {
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


// -------   Start of: Rebuilt Save Form Data --------------------------
	function storeData(key) {
		var Id				=	Math.floor(Math.random()*100000000001);
		//getSelectedRadio();
		getCheckboxValue();
		var item			=	[];
				item.context	=	["Context: ", $('contexts').value];
				item.tName		=	["Task Name: ", $('tName').value];
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




// -------   Edit Task Data --------------------------

	function editData(id) {
		var itemsLink = document.getElementById('items');
		itemsLink.style.display = "none";
		var value = localStorage.getItem(id);
		var itemId = id;
		alert(itemId);
		value = value.split(';');
		var tContext			=	value[0];
		var tName				=	value[1];
		var tPriority			=	value[2];
		var tFavorite			=	value[3];
		var sDate				=	value[4];
		var eDate				=	value[5];
		var dDate				=	value[6];
		var tNotes				=	value[7];
		editing = "true";
		//validateForm(itemId);

		//populates form fields with current localStorage values
		document.getElementById('tContext').value = tContext;
		document.getElementById('tName').value = tName;
		document.getElementById('tPriority').value = tPriority;
		if (tFavorite === "on") {
			document.getElementById('tFavorite').setAttribute("checked", "checked");
		}
		document.getElementById('sDate').value = sDate;
		document.getElementById('eDate').value = eDate;
		document.getElementById('dDate').value = dDate;
		document.getElementById('tNotes').value = tNotes;

		
		// reveal editItem button
		var editItem = document.getElementById('editItem');
		editItem.style.display = "block";
		var submit = document.getElementById('submit');
		editItem.style.display = "none";		
		document.getElementById('editItem').onclick = function () {
		//alert (itemId);
		var tContext			=	document.getElementById('tContext').value;
		var tName				=	document.getElementById('tName').value;
		var tPriority			=	document.getElementById('tPriority').value;
		var tFavorite			=	document.getElementById('tFavorite').value;
		var sDate				=	document.getElementById('sDate').value;
		var eDate				=	document.getElementById('eDate').value;
		var dDate				=	document.getElementById('dDate').value;
		var tNotes				=	document.getElementById('tNotes').value;
		var allItems			=	[
								tContext,
								tName,
								tPriority,
								tFavorite,
								sDate,
								eDate,
								dDate,
								tNotes
		];
		if (tContext !== "" && tName !== "" && sDate !== "") {
			localStorage.setItem(itemId, allItems.join(';'));
		} else {
			alert("All fields required.");
		}
		
	};
		//validateForm(itemId);
		editing = "false";
		setDefaultData();
		window.location.reload();
} // editItem
	
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

// -------   Start of: Delete All Stored Tasks --------------------------
function clearLocal() {
	localStorage.clear();
	return false;
} //clearLocal

// -------  Check for Local Storage Support --------------------------
function checkLocStorSup() {
	if (('localStorage' in  window) && window['localStorage'] !== null) {
		return;
	} else {
		outPutMsg('Your browser does not support HTML 5. Please update your browser and try again.');
		return;
	}
}

// -------   Do Initial Checks --------------------------
function initialChecks() {
	checkLocStorSup();
	formDataStorage = getItems();
	return formDataStorage;
}
initialChecks();

// -------   Start of: Create Footer --------------------------


// -------   End of: Create Footer --------------------------


 });