// Craig Booker
// VFW Project 3

function validateForm() {
	var getTcontext = document.getElementById("taskContext").value;  
	var fieldValidstatus = []; 
	//var getInvalidfields; 
	if (getTcontext === "") {
		document.getElementById("taskContext").style.border = "2px solid red";
		alert("Please select a context.");
		fieldValidstatus.push = ["false"];
		return false;
	} else {
		fieldValidstatus.push = ["true"];
		
		document.getElementById("taskContext").style.border = "2px solid #ccc";
	} 
	var getTname = document.getElementById("taskName").value;
	if (getTname === "") {
		document.getElementById("taskName").style.border = "2px solid red";
		var encourage = prompt("Please enter a task name.", "");
		if (encourage !== null && encourage !== "") {
			document.getElementById("taskName").value = encourage;
		}
		fieldValidstatus.push = ["false"];
		return false;
	} else {
		fieldValidstatus.push = ["true"];
		document.getElementById("taskName").style.border = "2px solid #ccc";
	}
	var getSdate = document.getElementById("startDate").value;
	if (getSdate === "") {
		document.getElementById("startDate").style.border = "2px solid red";
		var encourage = prompt("Please enter a start date.", "");
		if (encourage !== null && encourage !== "") {
			document.getElementById("startDate").value = encourage;
		}
		fieldValidstatus.push = ["false"];
		return false;
	} else {
		fieldValidstatus.push = ["true"];
		document.getElementById("dueDate").style.border = "2px solid #ccc";
	}
	var getEdate = document.getElementById("endDate").value;
	if (getEdate === "") {
		document.getElementById("endDate").style.border = "2px solid red";
		alert("Please set an End Date.");
		if (encourage !== null && encourage !== "") {
			document.getElementById("endDate").value = encourage;
		}
		fieldValidstatus.push = ["false"];
		return false;
	} else {
		fieldValidstatus.push = ["true"];
		document.getElementById("endDate").style.border = "2px solid #ccc";
	}
	var getDdate = document.getElementById("dueDate").value;
	if (getDdate === "") {
		document.getElementById("dueDate").style.border = "2px solid red";
		alert("Please set a Due Date.");
		if (encourage !== null && encourage !== "") {
			document.getElementById("dueDate").value = encourage;
		}
		fieldValidstatus.push = ["false"];
		return false;
	} else {
		fieldValidstatus.push = ["true"];
		document.getElementById("dueDate").style.border = "2px solid #ccc";
	}
	if (fieldValidstatus === true) {
	storeData(formData);
	} 
	return;
	
	for(i=0; i < fieldValidstatus.length; i++) {
	run through each field to check true/false.  If false print out what field needs correction.
	When everything checks out, call storeData and alert form submitted.
	
	}

	alert("Form Submitted!");
} //validateForm	

/*
	for () {
	document.write("if (getT" + formValidators[i] + "===" + "\"\") {");
	var getFormitem = (document.getElementById(" + formValidators[i] + "\").stuyle.border = \"2px solid red\";"; 
	
	
	}
	*/

