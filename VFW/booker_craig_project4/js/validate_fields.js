// Craig Booker
// VFW Project 3

function validateForm(formData) {
	alert("Beginning validation!");
	var getTcontext = document.getElementById("taskContext").value;  
	var validStatus = []; 
	var fieldsChecked = ["taskContext", "taskName", "taskSdate", "taskEdate", "taskDdate"];
	var defFieldvals = ["Enter task name", "Enter task start date", "Enter task end date", "Enter task due date"];
	var validCount = 0;

	//var getInvalidfields; 
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
		//alert("First Stop - round " + iCount);
		if (validStatus[iCount] === "false") {
			//alert("Second stop - Round " + iCount);
			addTo = (fieldsChecked[iCount]);
			errorFields.push(addTo);
			//alert("addTo:" + addTo);
			//alert("Third stop - Round " + iCount);
			//alert(fieldsChecked);
			//alert("Error Fields:" + errorFields);
		} 
	}
	alert("Outside forloop - errorFields:" + errorFields);
	alert("Outside forloop - validCount:" + validCount);
	
	
	if (validCount === fieldsChecked.length) {
		alert("Form Submitted!");
		storeData(formData);
	} 
} 
/*run through each field to check true/false.  If equal to false print out what field needs correction.
	When everything checks out, call storeData and alert form submitted. */
//validateForm	

/*
	for () {
	document.write("if (getT" + formValidators[i] + "===" + "\"\") {");
	var getFormitem = (document.getElementById(" + formValidators[i] + "\").stuyle.border = \"2px solid red\";"; 
	
	
	}
	*/

