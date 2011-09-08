// Craig Booker


var dropDownvals = ["Errand", "Home", "Office", "Phone Calls", "People", "Waiting"];

function addOptions(selectbox, optText, optValue) {
	var optVar = document.createElement("OPTION");
	optVar.text = optText;
	optVar.value = optValue;
	selectbox.options.add(optVar);
}
function loadDropdown(selectbox) {
	var i;
//var dropDownvals = new Array("Errand", "Home", "Office", "Phone Calls", "People", "Waiting");
	for (i = 0; i < dropDownvals.length; i++) {
		addOptions(document.addTask.context_list, dropDownvals[i], dropDownvals[i]);
	}

}
function initialLoad() {
	loadDropdown(dropDownvals);
}




function getItems() {
	if (localStorage.getItem('appTaskName')) {
		console.log('Made it');	
		console.log(appTaskName);
		var taskContext		= localStorage.getItem('appTaskContext');
		var taskName		= localStorage.getItem('appTaskName');
		var taskPriority	= localStorage.getItem('appTaskPriority');
		var taskFavorite	= localStorage.getItem('appFavorite');
		var dueDate			= localStorage.getItem('appDueDate');
		var startDate		= localStorage.getItem('appStartDate');
		var endDate			= localStorage.getItem('appEndDate');
		var taskNotes		= localStorage.getItem('appTaskNotes');
		var viewTask = [taskContext, taskName, taskPriority, taskFavorite, dueDate, startDate, endDate, taskNotes];
		alert (viewTask);
		document.getElementById('main').style.display = "none";
		var clearLink = document.getElementById('clear');
		clearLink.style.display = "block";
	} else {
		console.log('Hello');	

		var appTaskName			= 'Enter task name';
		var appTaskPriority		= 'Select task priority';
		var appFavorite			= 'checked';
		var appDueDate			= 'Enter task due date';
		var appStartDate		= 'Enter task start date';
		var appEndDate			= 'Enter task end date';
		var appTaskNotes		= 'Enter notes if desired.';
		
		document.getElementById('taskName').value = appTaskName;
		document.getElementById('dueDate').value = appDueDate;
		document.getElementById('startDate').value = appStartDate;
		document.getElementById('endDate').value = appEndDate;
		document.getElementById('taskNotes').value = appTaskNotes;
	
	}
}

function storeItems(id) {
	var taskContext		= document.getElementById('context').value;
	var taskName		= document.getElementById('taskName').value;
	var taskPriority	= document.getElementById('taskPriority').value;
	var favoriteTask	= document.getElementById('favoriteTask').value;
	var dueDate			= document.getElementById('dueDate').value;
	var startDate		= document.getElementById('startDate').value;
	var endDate			= document.getElementById('endDate').value;
	var taskNotes		= document.getElementById('taskNotes').value;
	localStorage.setItem('appTaskContext', taskContext);
	localStorage.setItem('appTaskName', taskName);
	localStorage.setItem('appTaskPriority', taskPriority);
	localStorage.setItem('appFavoriteTask', favoriteTask);
	localStorage.setItem('appDueDate', dueDate);
	localStorage.setItem('appStartDate', startDate);
	localStorage.setItem('appEndDate', endDate);
	localStorage.setItem('appTaskNotes', taskNotes);
	console.log(taskContext);	
}

function clearLocal() {
	localStorage.clear();
	return false;
}