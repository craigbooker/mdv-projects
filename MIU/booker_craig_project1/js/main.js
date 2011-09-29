// Craig Booker
// VFW Project 4
// 09/16/2011
var locFormStor;
var formDataStorage;
var editing;



var catNames = ["CONTEXT", "errand", "home", "office", "calls", "people", "waiting"];
var formTag = document.getElementById('form');
var makePara = document.createElement("p");
//var getTContext	= document.getElementById('tContextList');
var	makeSelect = document.createElement("select");
//var makeLabel = document.createElement("label");
makeSelect.setAttribute("id", "tContext");
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
	makePara.appendChild(makeSelect);
	//var getLabel = document.getElementById();
	var getUL = document.getElementById('form')[0].firstChild;
	var paraSelect = document.getElementById('form')[0].insertBefore(makePara, getUL);
	//var selectLabel = document.getElementById('form')[0].firstChild
};
makeCats();

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
	alert("Beginning validation!");
	var validStatus		=	[];
	var fieldsChecked = ["Context", "Task Name", "Start Date", "End Date", "Due Date"];
	var defFieldvals = ["SELECT", "Enter task name", "Enter task start date", "Enter task end date", "Enter task due date", "Notes"];
	var validCount = 0;

	//var getInvalidfields; 
	var getTcontext = document.getElementById('tContext').value;
	if ((getTcontext === "") || (getTcontext === defFieldvals[0])) {
		alert("Please select a context.");
		validStatus.push("false");
	} else {
		validStatus.push("true");
		validCount += 1;
	}
	var getTname = document.getElementById("tName").value;
	if ((getTname === "") || (getTname  === defFieldvals[1])) {
		alert("Please add a task name.");
		validStatus.push("false");
	} else {
		validStatus.push("true");
		validCount += 1;
	}
	var getSdate = document.getElementById("sDate").value;
	if ((getSdate === "") || (getSdate === defFieldvals[2])) {
		//alert("Please set an Start Date.");
		validStatus.push("false");
		//alert(validStatus);
	} else {
		validStatus.push("true");
		validCount += 1;
	}
	var getEdate = document.getElementById("eDate").value;
	if ((getEdate === "") || (getEdate === defFieldvals[3])) {
		//alert("Please set an End Date.");
		validStatus.push("false");
		//alert(validStatus);
	} else {
		validStatus.push("true");
		validCount += 1;
	}
	var getDdate = document.getElementById("dDate").value;
	if ((getDdate === "") || (getDdate === defFieldvals[4])) {
		//alert("Please set a Due Date.");
		validStatus.push("false");
		//alert(validStatus);
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
		if (editing === "false"){
		saveItems(id);
		}
	}
	
	}  // validateForm	

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
	var getListdiv	= document.getElementById('toDolist');
	for (i = 0, len = localStorage.length; i < len; i++, j++) {
		var key		=	localStorage.key(i);
		var isNumber = /^\d+$/.test(key);
		
		if (isNumber === true) {
		//alert("We have a number");
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

		var newDiv		=	document.createElement("div");		
		var newParas 	=	document.createElement("p");
		var newUl		=	document.createElement("ul");
		var newLi		=	document.createElement("li");
		newLi.style.display = ('block');
		document.createElement("ul");
		var d; // Field Values Counter
		for (d = 0; d < ttlValidKeys; d++) {
			var locTNode = document.createTextNode(value[d]);
			var locFVals_ = (value[d]);
			newParas.setAttribute("class", "field");
			//newLi.appendChild(locTNode);
			newParas.appendChild(locTNode);
			getListdiv.appendChild(newParas);
			}
			var imgHref = ("img/" + tContext + ".png");
			var newImg = document.createElement("img"); // Add image
			//var imgNam = setImg(tContext);
			var setSrc = newImg.setAttribute("src", imgHref);
			newParas.appendChild(newImg);
			var deleteLink	= document.createElement("a");//Add delete single task link
			var setHref		=	deleteLink.setAttribute("href", "#");
			var setDeleteId	=	deleteLink.setAttribute("class", "stdDelBtn");
			var setOnclick	=	deleteLink.setAttribute("onclick", "deleteTask(" + key + ");");
			var deleteText	=	document.createTextNode("delete");
			deleteLink.appendChild(deleteText);
			newDiv.appendChild(deleteLink);
			deleteLink.style.display = ('inline');

			var editLink = document.createElement("a");/* Add edit single task link */
			var setEditHref		=	editLink.setAttribute("href", "#");
			var setEditId		=	editLink.setAttribute("class", "stdEdtBtn");
			var setEditOnclick	=	editLink.setAttribute("onclick", "editTask(" + key + ");");
			var editText		=	document.createTextNode("edit");
			editLink.appendChild(editText);
			newDiv.appendChild(editLink);
			newImg.style.display = ('inline');
			var clearLink = document.getElementById('clear');
			clearLink.style.display = ('block');
			} else {
		return;
		} 
	}
}

// -------   Save Form Data --------------------------

function saveItems(id) {
	//alert("Inside Save items function");
	validateForm(id);
	var itemId				=	Math.floor(Math.random()*100000000001);
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
	
	//alert("I made it to the end of the Store items function");
} //saveItems


// -------   Edit Task Data --------------------------

	function editData(id) {
		var itemId = id;
		//var value = localStorage.getItem(id);
		//alert(itemId);
		//value = value.split(';');
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
		validateData(id);
		localStorage.setItem(itemId, allItems.join(';'));
		window.location.reload();
	};
	
// -------   Delete Task Data --------------------------


function deleteTask(id) {
	var ask	=	confirm("Are you sure you want to delete this task?");
	if (ask) {
		localStorage.removeItem(id);
		window.location.reload();
	}	else	{
		alert("Item not removed!");
	}
}

// -------   Delete All Stored Tasks --------------------------
function clearLocal() {
	localStorage.clear();
	return false;
} //clearLocal


function checkLocStorSup() {
	if (('localStorage' in  window) && window['localStorage'] !== null) {
		//alert("I'm in checklocsup");
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

