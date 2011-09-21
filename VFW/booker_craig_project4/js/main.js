// Craig Booker
// VFW Project 4
// 09/16/2011
var locFormStor;
var formDataStorage;

// create cats, build select list
alert("I made it to line 8");
var catNames = ["SELECT", "Errand", "Home", "Office", "Phone Calls", "People", "Waiting"];
var formTag = document.getElementById("form");
var makePara = document.createElement("p");
var	makeSelect = document.createElement("select");
makeSelect.setAttribute("id", "tContext");
var makeCats = function (name) {
	alert("I made it in the makeCats");
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
	var getUL = formTag[0].firstChild;
	var paraSelect = formTag[0].insertBefore(makePara, getUL);
};
makeCats();
alert('I made it just past makeCats.');

function getItems() {
	var i, len;
	var getListdiv	=	document.getElementById("toDolist");
	for (i = 0, len = localStorage.length; i < len; i++) {
		var key		=	localStorage.key(i);
		var value	=	localStorage.getItem(key);
		//alert(value);
		value = value.split(";");
		//alert(value);
		var tContext			=	value[0];
		//alert("Context::", + tContext);
		var tName				=	value[1];
		var tPriority			=	value[2];
		var tFavorite			=	value[3];
		var sDate				=	value[4];
		var eDate				=	value[5];
		var dDate				=	value[6];
		var tNotes				=	value[7];
		//alert(tContext);
		var newDiv	=	document.createElement("div");
		var ii, allLength;
		for (ii = 0, allLength = value.length; ii < allLength; ii++) {
			var newParas = document.createElement("p");
			var itemText = document.createTextNode(value[ii]);
			newParas.appendChild(itemText);
			newDiv.appendChild(newParas);
			getListdiv.appendChild(newDiv);
			var newImg = document.createElement("img"); // Add image
			var imgHref = ("img/" + tContext + ".png");
			var setSrc = newImg.setAttribute("src", imgHref);
			getListdiv.appendChild(newImg);
			var deleteLink = document.createElement("a");//Add or delete single task link
			var setHref		=	deleteLink.setAttribute("href", "#");
			var setOnclick	=	deleteLink.setAttribute("onclick", "deleteTask(" + key + ");");
			var deleteText	=	document.createTextNode("delete");
			deleteLink.appendChild(deleteText);
			newDiv.appendChild(deleteLink);
			var editLink = document.createElement("a");/* Add edit single task link */
			var setEditHref		=	editLink.setAttribute("href", "#");
			var setEditOnclick	=	editLink.setAttribute("onclick", "editTask(" + key + ");");
			var editText		=	document.createTextNode("edit");
			editLink.appendChild(editText);
			newDiv.appendChild(editLink);
			}
			var clearLink = document.getElementById('clear');
			clearLink.style.display = ('block');
		}
}
function storeItems(id) {
	alert("Inside Store items function");
	validateForm();
	var tContext		=	document.getElementById('tContext').value;
	var tName			=	document.getElementById('tName').value;
	var tPriority		=	document.getElementById('tPriority').value;
	var tFav			=	document.getElementById('tFavorite').value;
	var dDate			=	document.getElementById('dDate').value;
	var sDate			=	document.getElementById('sDate').value;
	var eDate			=	document.getElementById('eDate').value;
	var tNotes			=	document.getElementById('tNotes').value;
	//alert("I made it to the middle of the Store items function");
	localStorage.setItem('apptContext', tContext);
	localStorage.setItem('apptName', tName);
	localStorage.setItem('apptPriority', tPriority);
	localStorage.setItem('appfTask', tFav);
	localStorage.setItem('appdDate', dDate);
	localStorage.setItem('appsDate', sDate);
	localStorage.setItem('appeDate', eDate);
	localStorage.setItem('apptNotes', tNotes);
	alert("I made it to the end of the Store items function");
} //storeItems


	function editTask(id) {
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
		// send form vals from local storage vals
		document.getElementById("tContext").value		= tContext;
		document.getElementById("tName").value			= tName;
		document.getElementById("tPriority").value		= tPriority;
		if (tFavorite === "on") {
			document.getElementById("tFavorite").setAttribute("checked", "checked");
		}
		document.getElementById("tFavorite").value	= tFavorite;
		document.getElementById("sDate").value		= sDate;
		document.getElementById("eDate").value		= eDate;
		document.getElementById("dDate").value		= dDate;
		document.getElementById("tNotes").value		= tNotes;

		//Reveal editItems button, hide submit button
		var editItem = document.getElementById('editItem');
		editItem.style.display = "block";
		var submit = document.getElementById('submit');
		submit.style.display = "none";

		// Grab editItem button's click
		document.getElementbyId('editItem').onclick = function () {
		//alert(itemId);
			var tContext			=	document.getElementById('tContext').value;
			var tName				=	document.getElementById('tName').value;
			var tPriority			=	document.getElementById('tPriority').value;
			var tFavorite			=	document.getElementById('tFavorite').value;
			var sDate				=	document.getElementById('sDate').value;
			var eDate				=	document.getElementById('eDate').value;
			var dDate				=	document.getElementById('dDate').value;
			var tNotes				=	document.getElementById('tNotes').value;
			var allItems				=	[
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
				alert("all fields required.");
			}
	};
}//editItem

function deleteTask(id) {
	var ask	=	confirm("Are you sure you want to delete this task?");
	if (ask) {
		localStorage.removeItem(id);
		window.location.reload();
	}	else	{
		alert("Item not removed!");
	}
}

// Deletes all tasks
function clearLocal() {
	localStorage.clear();
	return false;
} //clearLocal

function outPutMsg(outPut) {
	alert(outPut);
	return;
}

function checkLocStorSup() {
	if (typeof (localStorage) === 'undefined') {
		outPutMsg('Your browser does not support HTML 5. Please update your browser and try again.');
		return;
	} else {
		alert("I'm in checklocsup");
		return;
	}
}

function initialChecks() {
	checkLocStorSup();
	formDataStorage = getItems();
	//alert(formDataStorage);
	return formDataStorage;
}
initialChecks();
alert('I made it this far.');

// -------   Form Validation --------------------------

function validateForm(id) {
	alert("Beginning validation!");
	var validStatus		=	[];
	var fieldsChecked = ["tContext", "tName", "sDate", "eDate", "dDate"];
	var defFieldvals = ["Enter task name", "Enter task start date", "Enter task end date", "Enter task due date", "Notes"];
	var validCount = 0;

	//var getInvalidfields; 
	var getTcontext = document.getElementById("tContext").value;
	if ((getTcontext === "") || (getTcontext === catNames[0])) {
		alert("Please select a context.");
		validStatus.push("false");
	} else {
		validStatus.push("true");
		validCount += 1;
	}
	var getTname = document.getElementById("tName").value;
	if ((getTname === "") || (getTname  === defFieldvals[0])) {
		alert("Please add a task name.");
		validStatus.push("false");
	} else {
		validStatus.push("true");
		validCount += 1;
	}
	var getSdate = document.getElementById("sDate").value;
	if ((getSdate === "") || (getSdate === defFieldvals[1])) {
		//alert("Please set an Start Date.");
		validStatus.push("false");
		//alert(validStatus);
	} else {
		validStatus.push("true");
		validCount += 1;
	}
	var getEdate = document.getElementById("eDate").value;
	if ((getEdate === "") || (getEdate === defFieldvals[2])) {
		//alert("Please set an End Date.");
		validStatus.push("false");
		//alert(validStatus);
	} else {
		validStatus.push("true");
		validCount += 1;
	}
	var getDdate = document.getElementById("dDate").value;
	if ((getDdate === "") || (getDdate === defFieldvals[3])) {
		//alert("Please set a Due Date.");
		validStatus.push("false");
		//alert(validStatus);
	} else {
		validStatus.push("true");
		validCount += 1;
	}
	alert(validStatus);
	var errorFields = [];
	var iCount;
	for (iCount = 0; iCount < validStatus.length; iCount++) {
		if (validStatus[iCount] === "false") {
			var addTo = (fieldsChecked[iCount]);
			errorFields.push(addTo); //This keeps a running list of the fields with errors.
		}
	}
	alert("Outside forloop - errorFields:" + errorFields);
	alert("Outside forloop - validCount:" + validCount);
	if (validCount < fieldsChecked.length) {
		alert("There are errors with the following fields:" + errorFields);

	} else {
		alert("Form Submitted!");
		//storeItems(id);
	}
	}  // validateForm	
/* else {
//setDefualtVals();
			var tName		=	'Enter task name';
			var tPriority	=	0;
			var dDate		=	'Enter task due date';
			var sDate		=	'Enter start date';
			var eDate		=	'Enter end date';
			var tNotes		=	'Notes';
		return;
	} */

