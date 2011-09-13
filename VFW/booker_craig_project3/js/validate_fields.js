// Craig Booker
// VFW Project 3

function validateForm() {
	var getTcontext = document.getElementById("context").value;   
	if (getTcontext === "") {
		document.getElementById("context").style.border = "2px solid red";
		alert("Please select a context.");
		//if (encourage !== null && encourage !== "") {
		//	document.getElementById("taskName").value = encourage;
		//}
		return false;
	} else {
		document.getElementById("context").style.border = "2px solid #ccc";
	} 
	var getTname = document.getElementById("taskName").value;
	if (getTname === "") {
		document.getElementById("taskName").style.border = "2px solid red";
		var encourage = prompt("Please enter a task name.", "");
		if (encourage !== null && encourage !== "") {
			document.getElementById("taskName").value = encourage;
		}
		return false;
	} else {
		document.getElementById("taskName").style.border = "2px solid #ccc";
	}
	/*
	var getPriority = document.getElementById("taskPriority").value;
	if (getPriority === "") {
		document.getElementById("taskPriority").style.border = "2px solid red";
		var encourage = prompt("Please select the task's priority.", "");
		if (encourage !== null && encourage !== "") {
			document.getElementById("taskPriority").value = encourage;
		}
		return false;
	} else {
		document.getElementById("taskPriority").style.border = "2px solid #ccc";
	} */
	var getSdate = document.getElementById("startDate").value;
	if (getSdate === "") {
		document.getElementById("startDate").style.border = "2px solid red";
		var encourage = prompt("Please enter a start date.", "");
		if (encourage !== null && encourage !== "") {
			document.getElementById("startDate").value = encourage;
		}
		return false;
	} else {
		document.getElementById("dueDate").style.border = "2px solid #ccc";
	}
	var getEdate = document.getElementById("endDate").value;
	if (getEdate === "") {
		document.getElementById("endDate").style.border = "2px solid red";
		alert("Please set an End Date.");
		if (encourage !== null && encourage !== "") {
			document.getElementById("endDate").value = encourage;
		}
		return false;
	} else {
		document.getElementById("endDate").style.border = "2px solid #ccc";
	}
	var getDdate = document.getElementById("dueDate").value;
	if (getDdate === "") {
		document.getElementById("dueDate").style.border = "2px solid red";
		alert("Please set a Due Date.");
		if (encourage !== null && encourage !== "") {
			document.getElementById("dueDate").value = encourage;
		}
		return false;
	} else {
		document.getElementById("dueDate").style.border = "2px solid #ccc";
	}
	
	
	
	
	
	
	alert("Form Submitted!");
} //validateForm


