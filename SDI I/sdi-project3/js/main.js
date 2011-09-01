// Author: Craig Booker
// Control File


var handleData = function (json) {
	for (var i = 0; i < json.participants.length; i++) {
		var participant = json.participants[i];
		console.log("User ID: " + participant.uuid + ", Name: " + participant.name + ", Age: " + participant.age + ", Weight:" + participant.weight + ", Title:" + participant.title + ", Classification:" + participant.classification + ", Mood Descriptions:" + participant.moodDesc);
	};
};

handleData(json);

//
var jsonstring = JSON.stringify(json);
//console.log(jsonstring);

var receivedjson = JSON.parse(jsonstring);
console.log(receivedjson);