var json = {
	"friends": {
		"001435235" : {
			"name": "Chris",
			"age": 30
		},
		"001435238" : {
			"name": "Scott",
			"age": 42
		},
		"001435230" : {
			"name": "Jason",
			"age": 32
		},
	}
};

// Can't guarantee the order without creating sorting algorithm.
//json.friends["00143230"].name
//for (var key in json.firneds) {
//	var friend = json.friends[key];
//	//friend.name
//	friend.age
//};

//***************************************************************************************************************************************
// START - @@@@@@
//***************************************************************************************************************************************

//***************************************************************************************************************************************
// END - @@@@@@@
//***************************************************************************************************************************************


// Use array as inside object.  Keys are automatically generated.



var json2 = {
	"friends" : [
		{
			"uuid" : "001435235",
			"name" : "Chris",
			"age" : 30
		
		},
			{
			"uuid" : "001435238",
			"name" : "Scott",
			"age" : 42
		
		},
			{
			"uuid" : "001435230",
			"name" : "Jason",
			"age" : 32
		
		},
	]
};
/*
Instructions

This activity is meant to help you get comfortable with the concepts behind JSON and structuring complex data. For your project you are required to have at least some JSON data. Since JSON is a subset of JavaScript literal values, even a single variable of any type is technically JSON. However, for the purpose of this project, the JSON requirement is as follows:

    The top level (outermost) data type must be an object or array.
    There must be at least two levels of additional types beneath the top level type, for a total of at least 3 levels of data. That is, you may have an object that has an array of objects, or an object with an array of arrays, or an array with objects within objects, etc.
    At the innermost level you will have the primitive data types: strings, numbers, and booleans.

For example, I might have a pirate object, with a ships array property, where each item was an object with properties such as shipName, cargoSpace, etc. There are three levels (pirate→ships→ship) and primitive data at the lowest level.

The intent here is to get you used to working with complex, nested data.
*/