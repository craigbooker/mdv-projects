// Author: Craig Booker
// Assignment 4 :: SDI I

/* String - 1 Does a string follow a 123-456-7890 pattern like a phone number? */
/*
var phoneNum = "123-456-7890";
var numParts = phoneNum.split("-");
var position = [phoneNum.indexOf("-"), phoneNum.lastIndexOf("-")]

console.log(position);
for (var i=0; i < numParts.length; i++) {
console.log(numParts[i]);

*/

var regx = /\d{3}([-])\d{3}\1\d{4}/;
function checkPhoneNum(){
var phoneNum = "111-222-3333";
var goodPhone = regx.exec(phoneNum);
	if (!goodPhone) {
		console.log(phoneNum + " This is number not in the correct format.");
	} else {
		console.log(phoneNum + " This is a properly formatted number.");
	}
};
var c = new checkPhoneNum();
c.phoneNum = "123-456-7890";

/* String - 5 Given a string that is a list of things separated by a given string, as well as another 
string separator, return a string with the first separator changed to the second: "a,b,c" + "," + "/" → "a/b/c". */
function replaceVar() {
var list = "a,b,c";
var changeVar = /,/g;
var newList = list.replace(changeVar, "/");
console.log(newList);
}

var o = new replaceVar();
o.list = "a,b,c";
/*
var re = /\(?\d{3}\)?([-\/\.])\d{3}\1\d{4}/;
function chckForPhoneNum(phoneNum){
var OK = re.exec(phoneNum);
	if (!OK)
		console.log(RegExp.input + " isn't a phone number with area code!");
    else
        console.log("Thanks, your phone number is " + OK[0]);
      }
*/

/* String - 4 Given a string version of a number such as "42", return the value as an actual Number, such as 42. */

var sampObj = function () {
	var this.dumbNumb = "00"
var newNumLit = parseInt(dumbNumb);
console.log(newNumLit);
origVal = newNumLit;
return origVal;
}

var s = new sampObj();
s.dumbNumb = "42"


/*
String

	1 Does a string follow a 123-456-7890 pattern like a phone number?
	2 Does a string follow an aaa@bbb.ccc pattern like an email address?
	3 Is the string a URL? (Does it start with http: or https:?)
	4 Title-case a string (split into words, then uppercase the first letter of each word)
	5 Given a string that is a list of things separated by a given string, as well as another 
	string separator, return a string with the first separator changed to the second: "a,b,c" + "," + "/" → "a/b/c".

	
Number
	1 Format a number to use a specific number of decimal places, as for money: 2.1 → 2.10
    2 Fuzzy-match a number: is the number above or below a number within a certain percent?
    3 Find the number of hours or days difference between two dates.
    4 Given a string version of a number such as "42", return the value as an actual Number, such as 42.

	
Array
	1 Find the smallest value in an array that is greater than a given number
	2 Find the total value of just the numbers in an array, even if some of the items are not numbers.
	3 Given an array of objects and the name of a key, return the array sorted by the value 
	of that key in each of the objects: "a" + [{a:2},{a:3},{a:1}] → [{a:1},{a:2},{a:3}].

*/




/* Number - 3 Find the number of hours or days difference between two dates. */





/*

*/

/*

*/