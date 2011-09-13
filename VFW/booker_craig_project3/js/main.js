// Craig Booker
// VFW Project 2
// 09/08/2011




var clearLink = document.getElementById('clear');
var taskImgs = ["img/errand.png", "img/home.png", "img/office.png", "img/phone_calls.png", "img/people.png"];


function addOptions(selectbox, optText, optValue) {
	var optVar = document.createElement("OPTION");
	optVar.text = optText;
	optVar.value = optValue;
	selectbox.options.add(optVar);
	
}
function loadDropdown() {
	var i;
	var dropDownvals = ["Errand", "Home", "Office", "Phone Calls", "People", "Waiting"];
	for (i = 0; i < dropDownvals.length; i++) {
		addOptions(document.addTask.context_list, dropDownvals[i], dropDownvals[i]);
	}
	return;
}



function setDefualtVals() {
	var taskName		=	'Enter task name';
	var taskPriority	=	0;
	//var taskFavorite	=	"checked";
	var dueDate			=	'Enter task due date';
	var startDate		=	'Enter task start date';
	var endDate			=	'Enter task end date';
	var taskNotes		=	'Enter notes if desired.';
		
	document.getElementById('taskName').value = taskName;
	document.getElementById('taskPriority').value = taskPriority;
	//document.getElementById('taskFavorite').value = taskFavorite;
	document.getElementById('dueDate').value = dueDate;
	document.getElementById('startDate').value = startDate;
	document.getElementById('endDate').value = endDate;
	document.getElementById('taskNotes').value = taskNotes;
	return;
}

function displayTask (viewTask) {
		var  formLink = document.getElementById('form');
		var clearLink = document.getElementById('clear');
		document.getElementById('form').style.display = "none";
		document.getElementById('form').style.display ="block";
		var getListdiv = document.getElementById('toDolist');
		formLink.style.display = "none";
		clearLink.style.display = "block";
		for(var i = 0; i < viewTask.length; i++) {
			var newParag = document.createElement("p");
			var taskText = document.createTextNode(viewTask[i]);
			newParag.appendChild(taskText);
			getListdiv.appendChild(newParag);
			if (i === viewTask.length) {
				var clearHTML = clearLink.innerHTML = '<a href="#" onclick="clearLocal(); location.reload();">Clear Local Storage</a>';

			
			}
		}
		
		//var newAnchor = document.createElement("a");
		//newAnchor.document.createTextNode()
		

}
/*
taskName
taskPriority
taskStartdate
taskEnddate
taskDuedate
taskNotes
taskImg
*/


function getData() {
	if (localStorage.getItem('apptaskName')) {
		var taskContext		=	localStorage.getItem('apptaskContext');
		var taskName		=	localStorage.getItem('apptaskName');
		var taskPriority	=	localStorage.getItem('apptaskPriority');
		var favorite		=	localStorage.getItem('appFavorite');
		var dueDate			=	localStorage.getItem('appdueDate');
		var startDate		=	localStorage.getItem('appstartDate');
		var endDate			=	localStorage.getItem('appendDate');
		var notes			=	localStorage.getItem('appNotes');
	
		var viewTask = [taskContext, taskName, taskPriority, favorite, dueDate, startDate, endDate, notes];
		displayTask(viewTask);
		
		
		/*
		document.getElementById('form').style.display = "none";
		var clearLink = document.getElementById('clear');
		clearLink.style.display = "block";
		*/
		return viewTask;
	} else {
		//setDefualtVals();
		return;
	}
}
/* Needs to be passed arguments */
function storeItems(formData) {
	var taskContext		=	document.getElementById('context').value;
	var taskName		=	document.getElementById('taskName').value;
	var taskPriority	=	document.getElementById('taskPriority').value;
	var favoriteTask	=	document.getElementById('favoriteTask').value;
	var dueDate			=	document.getElementById('dueDate').value;
	var startDate		=	document.getElementById('startDate').value;
	var endDate			=	document.getElementById('endDate').value;
	var taskNotes		=	document.getElementById('taskNotes').value;
	localStorage.setItem('apptaskContext', taskContext);
	localStorage.setItem('apptaskName', taskName);
	localStorage.setItem('apptaskPriority', taskPriority);
	localStorage.setItem('appfavoriteTask', favoriteTask);
	localStorage.setItem('appdueDate', dueDate);
	localStorage.setItem('appstartDate', startDate);
	localStorage.setItem('appendDate', endDate);
	localStorage.setItem('apptaskNotes', taskNotes);	
}
/*
function checkData(formData) {
	if (formData === undefined) {
		//alert('It is empty!');
		//checkLocStorSup(formData);
		return;
	} else { 
		alert(formData);
		return;
	}
}
*/

function outPutMsg(outPut) {
	alert(outPut);
	return;
}

function checkLocStorSup(formData) {	
	if (typeof (localStorage) === 'undefined') {
		outPutMsg('Your browser does not support HTML 5. Please update your browser and try again.');
		return;
	} else {
		//checkData(formData);  for debugging
		//alert('We are good to go!');
		return;
	} 
}


function clearLocal() {
	localStorage.clear();
	return false;
}
