// Author: Craig Booker
// Control File

var handleData = function (json) {
	for (var i = 0; i< json.friends.length; i++) {
		var friend = json.friends[i];
		console.log("User ID: " + friend.uuid + "Name: " + friend.name + ", Age:" + friend.age);
	};
};

handleData(json2);

//
var jsonstring = JSON.stringify(json);
console.log(jsonstring);

var receivedjson = JSON.parse(jsonstring);
console.log(receivedjson);