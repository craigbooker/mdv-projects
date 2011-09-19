// Craig Booker
// VFW Project 4
// 09/16/2011
var locFormStor;
var formDataStorage;

// create cats, build select list
//alert("I made it to line 8");
var catNames = ["SELECT", "Errand", "Home", "Office", "Phone Calls", "People", "Waiting"];
var formTag = document.getElementById("form");
var makePara = document.createElement("p");
var	makeSelect = document.createElement("select");

//var formDatastorage;
//alert("Hey Now");
makeSelect.setAttribute("id", "catName");
//alert("Didn't get to makeCats");
var makeCats = function (name) {
	//alert("I made it in the makeCats");
	var i, j;
	for (i = 0, j = catNames.length; i < j; i++) {
		var makeOption = document.createElement("option");
		var optText = document.createTextNode(catNames[i]);
		makeOption.setAttribute("value", catNames[i]);
		makeOption.setAttribute("id", "tContext");
		makeOption.appendChild(optText);
		makeSelect.appendChild(makeOption);
		//addOptions(document.addTask.context_list, dropDownvals[i], dropDownvals[i]);
	}
	makePara.appendChild(makeSelect);
	var getUL = formTag[0].firstChild;
	var paraSelect = formTag[0].insertBefore(makePara, getUL);
};
//alert('Almost to make cats');
makeCats();


function getTaskItems() {
	//var getListdiv		=	document.getElementById(toDolist);
	var i, len;
	// = localStorage.length;
	for (i = 0, len = localStorage.length; i < len; i++) {
		var key		=	localStorage.key(i);
		var value	=	localStorage.getItem(key);
		value = value.split(";");
		var tContext			=	value[0];
		var tName				=	value[1];
		var tPriority			=	value[2];
		var tFavorite			=	value[3];
		var tDate				=	value[4];
		var eDate				=	value[5];
		var dDate				=	value[6];
		var tNotes				=	value[7];
		var newDiv				=	document.createElement("div");
	}

	if (localStorage.getItem('apptName')) {
		alert("STEP 1 GET DATA");
		var tContext		=	localStorage.getItem('apptContext');
		var tName			=	localStorage.getItem('apptName');
		var tPriority		=	localStorage.getItem('apptPriority');
		var tFavorite		=	localStorage.getItem('appFavorite');
		var dDate			=	localStorage.getItem('appDueDate');
		var sDate			=	localStorage.getItem('appStartDate');
		var eDate			=	localStorage.getItem('appEndDate');
		var tNotes			=	localStorage.getItem('appNotes');
	
		var viewTaskItems = [tContext, tName, tPriority, tFavorite, dDate, sDate, eDate, tNotes];
		alert("I'm in getData and here is the info:" + viewTaskItems);
		
		document.getElementById('main').style.display	=	"none";
		var clearLink = document.getElementById('clear');
		//displayTask(viewTask);
		clearLink.style.display = "block";
		var getListdiv = document.getElementById('toDolist');
		var i;
		var n = viewTaskItems.length;
		for (i = 0; i < n; i++) {
			var newParas = document.createElement("p");
			var itemTxt = document.createTextNode(viewTaskItems[i]);
			newParas.appendChild(itemTxt);
			getListdiv.appendChild(newParas);
		}
		// Add image
		var newImg = document.createElement("img");
		var setSrc = newImg.setAttribute("src", "img/" + taskCatvals + ".png");
		getListdiv.appendChild(newImg);
		
		//Add or delete single task link
		var deleteLink = document.createElement("a");
		var setHref		=	deleteLink.setAttribute("href", "#");
		var setOnclick	=	deleteLink.setAttribute("onclick", "deleteTask(" + key + ");");
		var deleteText	=	document.createTextNode("delete task");
		deleteLink.appendChild(deleteText);
		newDiv.appendChild(deleteLink);
		
		//Add edit single task link
		var editLink			=	document.createElement("a");
		var setEditHref		=	editLink.setAttribute("href", "#");
		var setEditOnclick	=	editLink.setAttribute("onclick", "editTask(" + key + ");");
		var editText			=	document.createTextNode("edit task");
		editLink.appendChild(editText);
		newDiv.appendChild(editLink);
		
	} else {
		//setDefualtVals();
		var tName		=	'Enter task name';
		var tPriority	=	0;
		var dDate		=	'Enter task due date';
		var sDate		=	'Enter start date';
		var eDate		=	'Enter end date';
		var tNotes		=	'Notes';
		return;
	}
}





function storeItems(id) {
	//validateForm();
	alert("Inside Store items function");
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
	var taskId = id;
	alert(taskId);
	value = value.split(";");
	var tContext			=	value[0];
	var tName				=	value[1];
	var tPriority			=	value[2];
	var tFavorite			=	value[3];
	var sdate				=	value[4];
	var edate				=	value[5];
	var ddate				=	value[6];
	var taskNotes			=	value[7];
	
	// send form vals from local storage vals
	document.getElementById("tContext").value		= tContext;
	document.getElementById("tName").value			= tName;
	document.getElementById("tPriority").value		= tPriority;
	if (taskFavorite === "on") {
		document.getElementById("tFavorite").setAttribute("checked", "checked");
	}	
	//document.getElementById("taskFavorite").value	= taskFavorite;
	document.getElementById("taskSdate").value 		= sDate;
	document.getElementById("taskEdate").value 		= eDate;
	document.getElementById("taskDdate").value 		= dDate;
	document.getElementById("taskNotes").value 		= tNotes;
	
	//Reveal editItems button, hide submit button
	var editItem = document.getElementById('editItem');
	editItem.style.display = "block";
	var submit = document.getElementById('submit');
	submit.style.display = "none";
	
	// Grab editItem button's click
	document.getElementbyId('editItem').onclick = function () {
		//alert(itemId);
		var taskContext			=	document.getElementById('taskContext').value;
		var taskName			=	document.getElementById('taskName').value;		
		var taskPriority			=	document.getElementById('taskPriority').value;	
		var taskFavorite			=	document.getElementById('taskFavorite').value;
		var taskSdate				=	document.getElementById('taskSdate').value;		
		var taskEdate				=	document.getElementById('taskEdate').value;	
		var taskDdate				=	document.getElementById('taskDdate').value;		
		var taskNotes				=	document.getElementById('taskNotes').value;
		var allItems				=	[
			taskContext,
			taskName,
			taskPriority,
			taskFavority,
			taskSdate,
			taskEdate,
			taskDdate,
			taskNotes
		];
		if (taskContext != "" && taskName != "" && taskSdate != "") {
			localStorage.setItem(itemId, allItems.join(';'));
		} else {
			alert("all fields required.");
		}
	} 
	
	
} //editItem

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
		//alert("I'm in checklocsup");
		return;
	} 
}

function initialChecks() {
	checkLocStorSup();	
	formDataStorage = getTaskItems();
	return formDataStorage;
}



initialChecks();





function initializeData() {
	var locFormStor = getTaskItems();
	checkLocStorSup(formData);	
	validateForm(locFormStor);

}

function clearLocal() {
	localStorage.clear();
	return false;
}

// -------   Form Validation --------------------------

function validateForm(id) {
	alert("Beginning validation!");
	var validStatus		=	[];
	var fieldsChecked = ["tContext", "tName", "sdate", "edate", "dDate"];
	var defFieldvals = ["Enter task name", "Enter task start date", "Enter task end date", "Enter task due date", "Notes"];
	var validCount = 0;
	alert("Beginning validation 2!");

	

	//var getInvalidfields; 
	var getTcontext = document.getElementById("tContext").value;
	if ((getTcontext === "") || (getTcontext === catNames[0])) {
		alert("Please select a context.");
		validStatus.push("false");
		//alert(validStatus);
	} else {
		validStatus.push("true");
		validCount += 1;

	} 
	var getTname = document.getElementById("tName").value;
	if ((getTname === "") || (getTname  === defFieldvals[0])) {
		alert("Please add a task name.");
		validStatus.push("false");
		//alert(validStatus);

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
		/* Output box at top of page with list of error fields in red */
		
		
		
		
	} else {	
		alert("Form Submitted!");
		storeItems(id);	
			
	}

} 
/*run through each field to check true/false.  If equal to false print out what field needs correction.
	When everything checks out, call storeData and alert form submitted. */
//validateForm	

