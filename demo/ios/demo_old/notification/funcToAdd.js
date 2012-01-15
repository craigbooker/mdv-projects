// -------   Start of : Variable Defaults --------------------------
//var contextNames = ["---Choose a Context---", "Errand", "Home", "Office", "Calls", "People", "Waiting"];
var errMsg = $('errors');
	// Create select field element and populate with options.
function makeCats(contextNames) {
	//var formTag = document.getElementsByTagName("form"); //formTag is an array of all the form tags.
	var formTag = document.getElementsByName("addTaskForm"); //formTag is an array of all the form tags.
	var	i;
	var 	j;
	var	selectLi = $('select'),
		makeSelect = document.createElement('select');
		makeSelect.setAttribute("id", "context");
	for (i = 0, j = contextNames.length; i < j; i++) {
		var makeOption = document.createElement('option');
		var optText = contextNames[i];
		makeOption.setAttribute("value", optText);
		makeOption.innerHTML = optText;
		makeSelect.appendChild(makeOption);
	}
	selectLi.appendChild(makeSelect);
}
var contextNames = ["---Choose a Context---", "Errand", "Home", "Office", "Calls", "People", "Waiting"];
makeCats(contextNames);
var favoriteValue;


//-------   Start of : Form Validation --------------------------
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

// -------   End of : Form Validation --------------------------
//-------   Start of: Rebuilt Save Form Data --------------------------
function storeData(key) {
	var id				=	Math.floor(Math.random()*100000000001);
	//getSelectedRadio();
	getCheckboxValue();
	var 	item					=	{};
			item.context	=	["Context: ", $('context').value];
			item.name		=	["Task Name: ", $('name').value];
			item.priority	=	["Priority: ", $('priority').value];
			item.favorite	=	["Favorite: ", $('favorite').value];
			item.sDate		=	["Start Date: ", $('sDate').value];
			item.eDate		=	["End Date: ", $('eDate').value];
			item.dDate		=	["Due Date: ", $('dDate').value];
			item.notes		=	["Notes: ", $('notes').value];
	// Save data into local storage: use stringify to convert our object to a string
	localStorage.setItem(id, JSON.stringify(item));
	alert("Task Saved!");
}
//-------   End of:Rebuilt Save Form Data --------------------------
//-------   Edit Task Data --------------------------
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

//Remove the initial listener from the input 'save task' button.
	save.removeEventListner("click", storeData);
	// Change the submit value to say Edit button
	$('submit').value = ("Edit Contact");
	var editSubmit = $('submit');
	//Save the key value established in this function as a property of the editSubmit event
	// so we can use that value when we save the data we edited.
	editSubmit.addEventListener("click", validate);
	editSubmit.key = this.key;
}
//------- End of:  Edit Task Data --------------------------
//------- Start of:  Delete Task Data --------------------------
function deleteTask(id) {
var ask	=	confirm("Are you sure you want to delete this task?");
if (ask) {
	localStorage.removeItem(id);
	window.location.reload();
}	else	{
	alert("Item not removed!");
}
}
//------- End of:  Delete Task Data --------------------------
//-------   Start of: Get Img NEW --------------------------

function getImage(catName, makeSubList) {
	var imageLi	=	document.createElement('li');
	makeSubList.appendChild('imageLi');
	var newImage	=	document.createElement('img');
	var setSrc	=	newImg.setAttribute("src", "images/"+ catName + ".png");
	imageLi.appendChild(newImg);
}
//-------   End of: Get Img NEW --------------------------

//-------   Start of: Rebuilt Find value of the check box. --------------------------
function getCheckboxValue() {
		if ($('favorite').checked) {
			favoriteValue = $('favorite').value;
		} else {
			favoriteValue = ("No");
		}
}
}
//-------   End of: Rebuilt Find value of the check box. --------------------------/**
 * 
 */