// Author: Craig Booker
// Control File

// var handleData = function (json) {
// 	for (var i = 0; i< json.friends.length; i++) {
// 		var friend = json.friends[i];
// 		console.log("User ID: " + friend.uuid + "Name: " + friend.name + ", Age:" + friend.age);
// 	};
// };

// handleData(json2);

//
// var jsonstring = JSON.stringify(json);
// console.log(jsonstring);

// var receivedjson = JSON.parse(jsonstring);
// console.log(receivedjson);
//***************************************************************************************************************************************
// START - Second part of module 22.
// This module shows us how to hide data from users by using a function.  
//***************************************************************************************************************************************
//



// Constructor, Module Pattern

var pirateShip = function (name) {
	// private
	var cargoHold = [];
	var crew = [];
	var cargoLoad = function (item) {
		if (item !== "elephants") {
			cargoHold.push(item);
		} else {
			console.log("Not allowed to load elephants!");
		}
	};
	var crewLoad = function (crewMemName) {
		crew.push(crewMemName);
	};
	var cargoList = function () {
			console.log("Here is a list of the cargoHold: \n\n");
		for (var i = 0; i < cargoHold.length; i++) {
		console.log(name + " cargo " + i + ": " + cargoHold[i] + ".");
		}
	};
	var crewList = function () {
			console.log("Here is a list of the crew: \n\n");
		for (var j = 0; j < crew.length; j++) {
		console.log(name + " crew member " + j + ": " + crew[j] + ".");
		}
	};
	var getName = function () { return name; };	
	
		return {   // public 
		"name": getName,
// 		"captain": "",
// 		"crew": [],
		"crewLoad": crewLoad,
		"crewList": crewList,
		"cargoLoad": cargoLoad,
		"cargoList": cargoList
		
	};

};

var dauntless = pirateShip("Dauntless");
// api : application programming interface
// var interceptor = pirateShip("Interceptor");
// var bounty		= pirateShip("Bounty");
// var enterprise	= pirateShip("Enterprise");
dauntless.cargoLoad("oranges");
dauntless.cargoLoad("elephants");
dauntless.cargoList();
dauntless.crewLoad("Jack");
dauntless.crewList();

console.log(dauntless.name()); //getter, accessor
console.log(dauntless);