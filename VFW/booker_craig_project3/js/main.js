// Craig Booker
// VFW Project 2
// 09/08/2011


	
var dropDownvals = ["Errand", "Home", "Office", "Phone Calls", "People", "Waiting"];
var clearLink = document.getElementById('clear');
var errorList = document.getElementById('errorList');
var formDatastorage;
<<<<<<< HEAD
=======
<<<<<<< HEAD


=======
>>>>>>> form-validation
>>>>>>> consolidate-formval

function addOptions(selectbox, optText, optValue) {
	var optVar = document.createElement("OPTION");
	optVar.text = optText;
	optVar.value = optValue;
	selectbox.options.add(optVar);
	
}
function loadDropdown(dropDownvals) {
	var i;
	for (i = 0; i < dropDownvals.length; i++) {
		addOptions(document.addTask.context_list, dropDownvals[i], dropDownvals[i]);
	}
	return;
}

function outPutMsg(outPut) {
	alert(outPut);
	return;
}

function setDefualtVals() {
	var taskName		=	'Enter task name';
	var taskPriority		=	0;
	var dueDate		=	'Enter task due date';
	var startDate		=	'Enter task start date';
	var endDate		=	'Enter task end date';
	var taskNotes		=	'Notes';
		
	document.getElementById('taskName').value = taskName;
	document.getElementById('taskPriority').value = taskPriority;
	document.getElementById('startDate').value = startDate;
	document.getElementById('endDate').value = endDate;
	document.getElementById('dueDate').value = dueDate;
	document.getElementById('taskNotes').value = taskNotes;
	return;
}

function displayTask(viewTask) {
	var taskImgs = ["img/errand.png", "img/home.png", "img/office.png", "img/phone_calls.png", "img/people.png"];
	var i;
	alert("I made it into displaytask");
	document.getElementById('form').style.display = "none";
	//document.getElementById('form').style.display ="block";
	var  formCont = document.getElementById('form');
	var getListdiv = document.getElementById('toDolist');
	formCont.style.display = "none";
	//getListdiv.style.className = "main";
	alert("I made it into displaytask 2");
	var img = new Image ();
	//var newParag = document.createElement("p");
	//var newUl = document.createElement("ul");
	//getListdiv.appendChild(newParag);
	for (i = 0; i < viewTask.length; i++) {
		//img.src = taskImgs[i]
		var newParag = document.createElement("p");
		alert("i'm here");
		//var newImg = document.createElement("img");
		//imgSrc = (document.img.src = taskImgs[i]);
		var taskText = document.createTextNode(viewTask[i]);
		var img1 = document.createElement('img');
		img1.src = taskImgs[i];
		//var imgHTML = taskImgs[i];
		newParag.appendChild(taskText);
		getListdiv.appendChild(img1);
		getListdiv.appendChild(newParag);
	}		

}
		
		/*
		var newLi = document.createElement("li");
		var newImg = document.createElement("img");
		var taskText = document.createTextNode(viewTask[i]);
		var labelText = ["Task Name", "Priority", "Favorite Task", "Start Date", "End Date", "Due Date", "Notes" ];
		getListdiv.appendChild(labelText[i]); */
		/*
		newImg.appendChild(taskText);
		getListdiv.appendChild(labelText[i]);
		getListdiv.appendChild(newLi);
		getListdiv.appendChild(newImg);*/



function getData() {
	if (localStorage.getItem('apptaskName')) {
		alert("STEP 1 GET DATA");
		var taskContext		=	localStorage.getItem('apptaskContext');
		var taskName		=	localStorage.getItem('apptaskName');
		var taskPriority	=	localStorage.getItem('apptaskPriority');
		var favorite		=	localStorage.getItem('appFavorite');
		var dueDate			=	localStorage.getItem('appdueDate');
		var startDate		=	localStorage.getItem('appstartDate');
		var endDate			=	localStorage.getItem('appendDate');
		var taskNotes			=	localStorage.getItem('appNotes');
	
		var viewTask = [taskContext, taskName, taskPriority, favorite, dueDate, startDate, endDate, taskNotes];
		alert("I'm in getData and here is the info:" + viewTask);
		//var clearLink = document.getElementById('clear');
		displayTask(viewTask);
		
		
		/*document.getElementById('form').style.display = "none"; */
		var clearLink = document.getElementById('clear');
		clearLink.style.display = "block";
		
		return viewTask;
	} else {
		setDefualtVals();
		return;
	}
}
//var formData = getData();
//checkLocStorSup(formData);
function storeItems(formData) {
	alert("I made it in Store items function");
	var taskContext		=	document.getElementById('taskContext').value;
	var taskName		=	document.getElementById('taskName').value;
	var taskPriority	=	document.getElementById('taskPriority').value;
	var favTask	=	document.getElementById('favoriteTask').value;
	var dueDate			=	document.getElementById('dueDate').value;
	var startDate		=	document.getElementById('startDate').value;
	var endDate			=	document.getElementById('endDate').value;
	var taskNotes		=	document.getElementById('taskNotes').value; 
	
	localStorage.setItem('apptaskContext', taskContext);
	localStorage.setItem('apptaskName', taskName);
	localStorage.setItem('apptaskPriority', taskPriority);
	localStorage.setItem('appfavoriteTask', favTask);
	localStorage.setItem('appdueDate', dueDate);
	localStorage.setItem('appstartDate', startDate);
	localStorage.setItem('appendDate', endDate);
	localStorage.setItem('apptaskNotes', taskNotes);	
	alert("I made it to the end of the Store items function");
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

<<<<<<< HEAD
=======
<<<<<<< HEAD
function initialChecks() {
	checkLocStorSup();	
	formDatastorage = getData();
	return formDatastorage;
}



initialChecks();






=======
>>>>>>> consolidate-formval
function initializeData() {
	var locFormstor = getData();
	checkLocStorSup(formData);	
	validateForm(locFormstor);

}

function clearLocal() {
	localStorage.clear();
	return false;
}
<<<<<<< HEAD
=======
>>>>>>> form-validation
>>>>>>> consolidate-formval
// -------   Form Validation --------------------------

function validateForm(formData) {
	alert("Beginning validation!");
/*	var getTcontext = document.getElementById("taskContext").value;

	var getTname = document.getElementById("taskName").value;  
	var getSdate = document.getElementById("taskSdate").value;  
	var getEdate = document.getElementById("taskEdate").value;  
	var getDdate = document.getElementById("taskDdate").value; */
	var validStatus		=	[];
	var fieldsChecked = ["taskContext", "taskName", "taskSdate", "taskEdate", "taskDdate"];
	var defFieldvals = ["Enter task name", "Enter task start date", "Enter task end date", "Enter task due date", "Notes"];
	var validCount = 0;
	alert("Beginning validation 2!");

	//var getInvalidfields; 
	var getTcontext = document.getElementById("taskContext").value;
	if (getTcontext === "") {
		alert("Please select a context.");
		validStatus.push("false");
		//alert(validStatus);
	} else {
		validStatus.push("true");
		validCount += 1;

	} 
	var getTname = document.getElementById("taskName").value;
	if ((getTname === "") || (getTname  === defFieldvals[0])) {
		//alert("Please add a task name.");
		validStatus.push("false");
		//alert(validStatus);

	} else {
		validStatus.push("true");
		validCount += 1;

	}
	var getSdate = document.getElementById("startDate").value;
	if ((getSdate === "") || (getSdate === defFieldvals[1])) {
		//alert("Please set an Start Date.");
		validStatus.push("false");
		//alert(validStatus);

	} else {
		validStatus.push("true");
		validCount += 1;

	}
	var getEdate = document.getElementById("endDate").value;
	if ((getEdate === "") || (getEdate === defFieldvals[2])) {
		//alert("Please set an End Date.");
		validStatus.push("false");
		//alert(validStatus);

	} else {
		validStatus.push("true");
		validCount += 1;

	}
	var getDdate = document.getElementById("dueDate").value;
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
		storeItems(formData);	
			
	}

} 
/*run through each field to check true/false.  If equal to false print out what field needs correction.
	When everything checks out, call storeData and alert form submitted. */
//validateForm	

function clearLocal() {
	localStorage.clear();
	return false;
}
	
