/*jslint devel: true, browser: true, sloppy: true, vars: true, plusplus: true, maxerr: 50, indent: 4 */
// Author: Craig Booker
// Assignment 4 :: SDI I



/* Display Status function */
function displayStatus(resultDispStatus) {
	this.resultDispStatus = resultDispStatus;
	console.log(this.resultDispStatus);
}


/* Category :: String :: 1 - Does a string follow a 123-456-7890 pattern like a phone number? */
function PhoneNumChecker(phoneNumber, goodPhone) {
	var regx = /\d{3}([\-])\d{3}\1\d{4}/;
	var resultConcatVar;
	var resultDispStatus;
	this.phoneNumber = phoneNumber;
	this.goodPhone = goodPhone;
	this.goodPhone = regx.exec(this.phoneNumber);
	if (!this.goodPhone) {
		resultConcatVar = (this.phoneNumber + " This number is not in the correct format."); 
		resultDispStatus = resultConcatVar;
		//console.log(this.phoneNumber + " This number is not in the correct format.");
		this.goodPhone = false;
		displayStatus(resultDispStatus);
		return this.goodPhone;
		//resultStatus = this.PhoneNumberChecker;
		//PhoneNumChecker = 
		//return PhoneNumChecker;
		
		
		//return (resultStatus, resultDispStatus);
	} else {
		resultConcatVar = (this.phoneNumber + " This number is a properly formatted number."); 
		resultDispStatus = resultConcatVar;
		//console.log(this.phoneNumber + " This is a properly formatted number.");
		//this.PhoneNumChecker = true;
		//resultStatus = this.PhoneNumberChecker;
		////return (resultStatus, resultDispStatus);
		displayStatus(resultDispStatus);
		this.goodPhone = true;
		return this.goodPhone;
	}
 //	return resultDispStatus;
	
}


/* Category :: String :: 2 - Does a string follow an aaa@bbb.ccc pattern like an email address?  */
function EmailAddChecker(emailAdd, goodEmail) {
	var regxEmail = /^([a-zA-Z0-9_\-])+@([a-zA-Z0-9\-]+\.)+([a-zA-Z0-9]{2,})+$/;
	var resultConcatVar;
	var resultDispStatus;
	this.emailAdd = emailAdd;
	this.goodEmail = goodEmail;
	this.goodEmail = regxEmail.test(this.emailAdd);
	
	if (!this.goodEmail) {
		// console.log(goodEmail);
		resultConcatVar = (this.emailAdd + " This email address is not in the correct format."); 
		resultDispStatus = resultConcatVar;
		//console.log(this.emailAdd + " This email address is not in the correct format.");
		displayStatus(resultDispStatus);
		this.EmailAddChecker = false;
		return this.EmailAddChecker;
	} else {
		//console.log(this.emailAdd + " This is a properly formatted email address.");
		//console.log(this.goodEmail);
		resultConcatVar = (this.emailAdd + " his is a properly formatted email address."); 
		resultDispStatus = resultConcatVar;
		displayStatus(resultDispStatus);
		this.EmailAddChecker = true;
		return EmailAddChecker;
	}
}




/* Category :: String :: 5 - Given a string that is a list of things separated by a given string, as well as another 
string separator, return a string with the first separator changed to the second: "a,b,c" + "," + "/" → "a/b/c". */
function ReplaceVar(list, currentVal, newVal, listResult) {
	var resultConcatVar;
	var resultDispStatus;
	this.list = list;
	this.currentVal = currentVal;
	this.newVal = newVal;
	this.listResult = listResult;
	this.listResult = list.replace(this.currentVal, newVal);
	resultConcatVar = ("Before the replacement: " + this.list + "\n" + "After the replacement:  " + this.listResult);
	resultDispStatus = resultConcatVar;
	listResult = this.listResult;
	displayStatus(resultDispStatus);
	return listResult;
}


/* Category :: Number :: 1 - Format a number to use a specific number of decimal places, as for money: 2.1 → 2.10 */
function DecPlaceConv(numConv1, numDecPlaces) {
	var resultConcatVar;
	var resultDispStatus;   
	var numConvLocal1;
	var numDecPlacesLocal1 = 1; /*limit the output to 1 decimal place */
    this.numConv1 = numConv1;
    this.numConv1 = numConv1.toFixed(numDecPlaces);
	numConvLocal1 = numConv1.toFixed(numDecPlacesLocal1);
    numConv1 = this.numConv1;
    resultConcatVar = ("Before the conversion: " + numConvLocal1 + "\n" + "After the conversion:  " + numConv1);
	resultDispStatus = resultConcatVar;
	displayStatus(resultDispStatus);
    return numConv1;
}




/* Category :: Number :: 3 - Find the number of hours or days difference between two dates. var timeDiff=  */
 //var currentDate = Date.now();
    //console.log(currentDate);
function TimeDiff(dateVar1, dateVar2, timeDiffHours, timeDiffDays) {
	var resultConcatVar;
	var resultDispStatus; 
    this.dateVar1 = dateVar1;
    this.dateVar2 = dateVar2;
    this.timeDiffHours = timeDiffHours;
    this.timeDiffDays = timeDiffDays;
    
    var oneHourMilSec =  (1000 * 60 * 60); 
    var oneDayMilSec = (oneHourMilSec * 24);  
    var copy1 = new Date();
    var copy2 = new Date();
    this.copy1 = copy1.setTime(dateVar1.getTime());
    this.copy2 = copy2.setTime(dateVar2.getTime());
    var timeDiffVar1 = ((copy2.getTime() - copy1.getTime()));
    this.timeDiffHours = (timeDiffVar1 / oneHourMilSec);
    this.timeDiffDays = (timeDiffVar1 / oneDayMilSec);
    resultConcatVar = ("The time difference in milliseconds " + timeDiffVar1 + "\n" + "The time difference in hours " + this.timeDiffHours + "\n" + "The exact Time difference in days " + this.timeDiffDays);
    resultDispStatus = resultConcatVar;
	timeDiffHours = this.timeDiffHours;
	timeDiffDays = this.timeDiffDays;
	displayStatus(resultDispStatus);
	return timeDiffHours;
	//return timeDiffDays;  Could return number of days with minor changes
}


/* Category :: Number :: 4 - Given a string version of a number such as "42", return the value as an actual Number, such as 42. */
function ParseVal(strNum) {
	var resultConcatVar;
	var resultDispStatus; 
	this.strNum = strNum;
	var numLit = parseInt(strNum, 10);
	resultConcatVar = ("Before the conversion: " + "\"" + strNum + "\"" + "\n" + "After the conversion: " + numLit);
	resultDispStatus = resultConcatVar;
	displayStatus(resultDispStatus);
	strNum = numLit;
	return strNum;
}

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

/* Category :: String :: 3 - Is the string a URL? (Does it start with http: or https:?) */
/*  NOT WORKING 100% */
function checkUrlStr(strUrl1) {
    this.strUrl1 = strUrl1; 
    var regxUrl = /^(http|https):([a-zA-Z0-9\-]+\.)+([a-zA-Z0-9]{2,})/;
    var goodUrl;
    var resultConcatVar;
	var resultDispStatus;
    goodUrl = regxUrl.test(this.strUrl1);
    if (!goodUrl) {
		//console.log(this.strUrl1);
		resultConcatVar = (this.strUrl1 + " This URL is not in the correct format.");
		resultDispStatus = resultConcatVar;	
		displayStatus(resultDispStatus);
		//console.log(this.strUrl1 + " This URL is not in the correct format.");
		this.checkUrlStr = false;
		return this.checkUrlStr;
	} else {
		resultConcatVar = (this.strUrl1 + " This is a properly formatted URL.");
		resultDispStatus = resultConcatVar;		
		displayStatus(resultDispStatus);
		//console.log(this.strUrl1 + " This is a properly formatted URL.");
		//console.log(this.strUrl1);
		this.checkUrlStr = true;
		return checkUrlStr;
	}
}


/* Category :: Array :: 2 - Find the total value of just the numbers in an array, even if some of the items are not numbers. */
/* 
function ArrayValTotal(arrayVar1) {
    this.arrayVar1 = arrayVar1;
    var grandTotal;
    var k;
	for (k = 0; k < arrayVar1.length; k++) {
		grandTotal += (this.arrayVar1[k]);
		//this.arrayValTotal = grandTotal;
	}
	return grandTotal;
}	



*/

/* Category :: String :: 1 :: Data and Call */
//var phoneChecker;
var	phoneNumber = "123-456-7890";
var resultDispStatus;
var phoneChecker = new PhoneNumChecker(phoneNumber, resultDispStatus);


/* Category :: String :: 2 :: Data and Call  */
//var emailChecker;
var emailAdd = "someaddress@email.com";
var emailChecker = new EmailAddChecker(emailAdd);

 
/* Category :: String :: 5 :: Data and Call  */
var list = "a,b,c";
var currentVal = /,/g;
var newVal = "/";
var listResult = "notyet";
var	listObj = new ReplaceVar(list, currentVal, newVal, listResult);

// Category :: Number :: 3 :: Data and Call  
// YYYYMMDDHHMMSS  MM - starts at 0 for January.
var dateVar1 = new Date(2001, 4, 26, 2, 30, 0); 
var dateVar2 = new Date(2008, 3, 2, 1, 30, 0); /* */
var timeDiffHours;
var timeDiffDays;
var timeChecker = new TimeDiff(dateVar1, dateVar2, timeDiffDays, timeDiffHours);
    
/* Category :: Number :: 4 :: Data and Call  */
var strNum = "42";
var j = new ParseVal(strNum);

/* Category :: Number :: 1 :: Data and Call  */
var numConv1 = 2.1;
var numDecPlaces = 2;
var decPlaceConv1 = new DecPlaceConv(numConv1, numDecPlaces); 


/* Category :: String :: 3 :: Data and Call  */
// NOT WORKING 100%
//var strUrl1 = "http://www.craigbooker.com"; 
//var urlVar = checkUrlStr(strUrl1); 





/* Category :: String :: 4 - Title-case a string (split into words, then uppercase the first letter of each word) */


/* Category :: Number :: 2 - Fuzzy-match a number: is the number above or below a number within a certain percent? */
/*
var fuzzMatch= function (dateVar1, dateVar2)  {
    var dateDiff;
    this.dateVar1 = dateVar1;
    this.dateVar2 = dateVar2,
   // dateDiff 
    return someVarName2;

};
*/

/* Category :: Array :: 1 - Find the smallest value in an array that is greater than a given number */

/* Category :: Array :: 3 - Given an array of objects and the name of a key, return the array sorted by the value 
	of that key in each of the objects: "a" + [{a:2},{a:3},{a:1}] → [{a:1},{a:2},{a:3}]. */









/* Category :: String :: 4 :: Data and Call  */
// NOT YET COMPELETED 


/* Category :: Number :: 2 :: Data and Call  */
// NOT YET COMPELETED 


/* Category :: Array :: 1 :: Data and Call  */
// NOT YET COMPELETED 

/* Category :: Array :: 2 :: Data and Call  */
// NOT YET COMPELETED 
/* var arrayVar1 = [1, 2, 3, 4, 5];
var arrayTotal = new ArrayValTotal(arrayVar1);
*/

/* Category :: Array :: 3 :: Data and Call  */
// NOT YET COMPELETED 


/* Code Resources - Example Code - might use later in project4 

var phoneNum = "123-456-7890";
var numParts = phoneNum.split("-");
var position = [phoneNum.indexOf("-"), phoneNum.lastIndexOf("-")];
var i;
console.log(position);
for (i = 0; i < numParts.length; i++) {
	console.log(numParts[i]);
}
*/

