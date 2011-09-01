/*jslint devel: true, browser: true, sloppy: true, plusplus: true, maxerr: 50, indent: 4 */

//***************************************************************************************************************************************
// Author: Craig Booker
// Today's Date: 08/__/2011
// Assignment: Deliverable 3
//***************************************************************************************************************************************


//***************************************************************************************************************************************
// START VAR DECLARATIONS
//***************************************************************************************************************************************

var readyToGo = true,								/* A boolean var to set game play status */
    subjectName = "Raj",
    leadScientist = "Sheldon Cooper",							/* A string containing the name of the lead scientist */
    findingsAnnounce = "The findings that we established in this experiment are as follows.",
    hasMetCond = true,  /* Sheldon wanted to make sure Raj had not had any liquids or food after 11pm and that he slept 8 hours the night before. */
    hasHadAdultBev = false,
    hasHadDrink = false,
    hasHadFood = false,
    hasHadSleep = true,
//inside JSON data file    teamMemberNames = ["Howard Wolowitz", "Leonard Hofstadter", "Penny", "Sheldon Cooper"], /* Array listing team member names */
//inside JSON data file    leadScientistGroupie = "Amy Farrah-fowler",
    numDrinks = 0,
    numHoursDrink = 0,
    rajWeight = 160, /* Raj's weight in Pounds */
 
	eventLength = 1, /* Measured in hours */
	maxOneHour = 5,
	participants = [];




//oneHourBacScale = [0.023, 0.047, 0.070, 0.094, 0.117], /* BAC over a 1 hour time period, based on number of drinks in 1 hour time period. */
//***************************************************************************************************************************************
// START Function (2) - Boolean - Sheldon wants to confirm that the subject of the experiment (Raj) has not tainted the experiment by drinking beforehand.
// Function 2  Takes two arguments and does some kind of Boolean comparison between them. The data type of the arguments
//              doesn't matter for this function.

//***************************************************************************************************************************************
// START BOOLEAN CONDITIONAL = TRUE
//***************************************************************************************************************************************


		

//***************************************************************************************************************************************	
// FUNCTION 2 - END BOOLEAN CONDITIONAL = FALSE
// END - Function 2 - Boolean Function
//***************************************************************************************************************************************

//***************************************************************************************************************************************
// START - Function 3 - Number - args (1) number || uses it in a while loop somehow || doing some math at the same time. || can be simple (counting or summing)
// Need a function to calculate blood alcohol level passed args ( 

var json = {
	"participantsData" : [
		{
			"uuid" : "001000000",
			"name" : "Rajesh Koothrappali",
			"age" : 30,
			"weight" : 160,
			"title" : "Experiment Subject",
			"classification" : "Subject",
			"bioDesc" : "A physicist specializing in particle astrophysics. A quiet guy around women.",
			"moodDesc" : ["Mute", "Stammering", "Great", "Questionable", "Obnoxious"],
			"condition" : "Selctive Mutism",
			"condDescription" : "can't speak around women unless he has had an adult beverage."		

		},
		{
			"uuid" : "001000001",
			"name" : "Howard Wolowitz",
			"age" : 30,
			"weight" : 160,
			"title" : "Peon Scientist",
			"classification" : "Scientist",
			"bioDesc" : "Just an engineer.  No Ph.D. here. A master's degree in Engineering from MIT. A ladies's man.",
			"moodDesc" : ["Normal", "Slightly Relaxed", "Great", "Questionable", "Obnoxious"],
			"condition" : "Peanut Allergy",
			"condDescription" : "they pose a life-threatening risk"		


		},
		{
			"uuid" : "001000002",
			"name" : "Leonard Hofstadter",
			"age" : 42,
			"weight" : 160,
			"title" : "Peon Scientist",
			"classification" : "Scientist",
			"bioDesc" : "A experimental physicist, Ph.D., with an IQ of 173.",
			"moodDesc" : ["Normal", "Slightly Relaxed", "Great", "Questionable", "Obnoxious"],
			"condition" : "Lactose Intolerant",
			"condDescription" : "the inability to digest and metabolize lactose, a sugar found in milk."		

		},
		{
			"uuid" : "001000003",
			"name" : "Penny",
			"age" : 23,
			"weight" : 160,
			"title" : "Bar Tender",
			"classification" : "Scientist",
			"bioDesc" : "An aspiring actress from Omaha, Nebraska.",
			"moodDesc" : ["Normal", "Slightly Relaxed", "Feeling Good", "Questionable", "Obnoxious"],
			"conidtion" : "Childhood issues stemming from her father wanting a son instead of a girl.",
			"condDescription" : "Makes sloppy decisions when she drinks."		

		},
		{
			"uuid" : "001000004",
			"name" : "Sheldon Cooper",
			"age" : 28,
			"weight" : 160,
			"title" : "Lead Scientist",
			"classification" : "Scientist",
			"bioDesc" : "Has an IQ of 187 and two PhDs",
			"moodDesc" : ["Normal", "Slightly Relaxed", "Great", "Questionable", "Obnoxious"],
			"conidtion" : "Low alcohol tolerance",
			"condDescription" : "Due to adhering to a diet without alcohol, he is known to act foolishly."		

		},
		{
			"uuid" : "001000005",
			"name" : "Amy Farah-fowler",
			"age" : 28,
			"weight" : 160,
			"title" : "Lead Scientist Groupie",
			"classification" : "Observer",
			"bioDesc" : "A brilliant tag-along!",
			"moodDesc" : ["Normal", "Slightly Relaxed", "Great", "Questionable", "Obnoxious"],
			"conidtion" : "Discusses inappropriate topics",
			"condDescription" : "Has a tendency to make others uncomfortable casually discussing female hygiene and anatomy."		
		
		}
	]

};




//***************************************************************************************************************************************
// START -  Object - experimentInfo
var experimentInfo = function (json) {
	var experimentName = "Help Raj Overcome Selective Mutism";
	var getJsonData = function (json) { //procedure method
		var	jsonstring,
			receivedjson;
					
		jsonstring = JSON.stringify(json);
		receivedjson = JSON.parse(jsonstring);
		//experimentInfo.createParticObject(receivedjson);
		return receivedjson;	
	};

	var createParticObject = function (receivedjson) {
		var i;
		
		for (i = 0; i < receivedjson.participantsData.length; i++) {
			participants[i] = receivedjson.particpantData[i];
			console.log(participants[i]);	
		}
		return participants;
	},
		outputStatus = function (readyToGo) {
			if (readyToGo === true) {
				console.log("SHELDON: Hello fellow scientists, I am the experiment leader " + leadScientist + ".");
				console.log("SHELDON: Welcome to the \"" + experimentInfo.experimentName + "\" project."); 
				console.log("SHELDON: I, the lead scientist of the \""  + experimentInfo.experimentName + "\" project, " + leadScientist + ", have been chosen to facilitate how the experiement will be conducted.");
				console.log("SHELDON: May I say how big of an honor this is to be chosen.");
				console.log("LEONARD: Sheldon, you nominated yourself, what choice did we have?");
				console.log("SHELDON: First, I would like to welcome my colleagues, the scientists I will be working with.");
				console.log("SHELDON: The first scientist, " + experimentInfo.participants[1] + " " + experimentInfo.participants[1].bioDesc);
				console.log("SHELDON: Our second scientist, " + experimentInfo.participants[2] + experimentInfo.participants[2].bioDesc);
				console.log("SHELDON: The third member on the team, " + experimentInfo.participants[3] + experimentInfo.participants[3].bioDesc);
				console.log("SHELDON: And last, but not least! Myself, the lead scientist, " + experimentInfo.participants[4] + "   .... *applause* comes from " + experimentInfo.participants[5].name + ". \n\n");
				console.log("SHELDON: Are we ready to begin our experiment? ..." + readyToGo + "  \n\n");
				console.log("SHELDON: Let's begin, shall we.");
			
			} else {
				console.log("SHELDON: We are not ready! Let's try again tomorrow.");
			} 
		};
	
};
	
	//getData = experimentInfo.getJsonData(json),
	//createObject : 

 

 

//***************************************************************************************************************************************
// START - Method - PROCEDURE - function that doesn't return a value . START - OUTPUT ALL VARIABLES This sets the stage for the experiment.



//***************************************************************************************************************************************
// END FUNCTION PROCEDURE 1 - OUTPUT ALL VARIABLES 
//***************************************************************************************************************************************
//object 2
var somevariablename = {
	weightScale : [100, 120, 140, 160, 180, 200, 220, 240], // Weight Scale
	moodRangeLow : [0.00, 0.01, 0.02, 0.05, 0.70], // Standard Mood Range Low Values
	moodRangeHigh : [0.00, 0.0199, 0.0499, 0.0699, 0.70], // Standard Mood Range High Values
	somevar : [0.0375, 0.03, 0.027, 0.023, 0.021, 0.019, 0.017, 0.016]
};

// Constructor, Module Pattern

var measurementInfo = function (somevar) {
// private

	var numCalcBy = [0.0375, 0.03, 0.027, 0.023, 0.021, 0.019, 0.017, 0.016],
		//weightScale = [100, 120, 140, 160, 180, 200, 220, 240],
		rajBac = 0,
		moodDesc = [],
		weightScale = [],  // This is going to be a range of values starting with 100 and increasing by 20 lbs
		weightScaleLoad = function (weightScaleVal) {
			weightScale.push(weightScaleVal);
		},
		moodDescLoad = function (moodDescVal) {
			moodDesc.push(moodDescVal);
		},
		weightScaleList = function () {
			var i;
			console.log("Here is a list of the weight scale: \n\n");
			for (i = 0; i < weightScale.length; i++) {
				console.log(subjectName + " weight " + i + ": " + weightScale[i] + ".");
			}
		},
		moodDescList = function () {
			var j;
			console.log("Here is a list of the crew: \n\n");
			for (j = 0; j < moodDesc.length; j++) {
				console.log(experimentInfo.participant[j].name + " mood description " + j + ": " + moodDesc[j] + ".");
			}
		},
		getSubjectName = function () { return subjectName; };
	return {   // public 
		"weightScaleLoad": weightScaleLoad,
		"weightScaleList": weightScaleList,
		"moodDescLoad": moodDescLoad,   // Method Mutator - adds to mood description list
		"moodDescList": moodDescList		
	};

};
experimentInfo.outputStatus(readyToGo);
var raj = measurementInfo("Raj");//raj.weightScaleLoad(100);
raj.weightScaleList();
raj.moodDescLoad("Mute");
// api : application programming interface
console.log(raj.measurementInfo()); //getter, accessor
console.log(raj);

//***************************************************************************************************************************************
// START BOOLEAN CONDITIONAL = TRUE
//***************************************************************************************************************************************

var hasMetAllCond = function (hasHadAdultBev, hasHadSleep, hasHadFood, hasHadDrink) {
	var hasMetAdultBev = hasHadAdultBev,
		hasMetSleep = hasHadSleep,
		hasMetFood = hasHadFood,
		hasMetDrink = hasHadDrink,
		hasMetCond = true,	
		hasHadFoodDrink = function (food, drink) { 
			if ((food === false) && (drink === false)) { /* Check to see if Raj did abide by the conditions that he not eat or drink after 11pm */ 
				hasHadFoodDrink = false;
				return hasHadFoodDrink;
			}
		},
		checkAlcSleep = function (adultBev, sleep) {  /* Check to see if Raj did get sleep and didn't consume alcohol prior to experiment. */
			if ((adultBev !== true) && (sleep === true)) {
				checkAlcSleep = true;
				return checkAlcSleep;
			} else {
				checkAlcSleep = false;
				return checkAlcSleep;
			}
		};
		
	if ((checkAlcSleep(hasMetAdultBev, hasMetSleep)) && (hasHadFoodDrink(hasMetFood, hasMetDrink))) {
		console.log("Team, it looks like we are a go!");
		console.log("We are ready to begin our experiement");
		hasMetCond = true;
		hasMetAllCond = hasMetCond;
		return hasMetAllCond;		
	} else {
		if ((hasMetCond === false) || (hasHadDrink === true)) {
			console.log(leadScientist + " says, Raj did not meet the agreed upon coniditions.");
			console.log("Raj, do you want help or not?");
			hasMetCond = false;
			hasMetAllCond = hasMetCond;
			return hasMetAllCond;
		} /* Goes to hasMetCond && hasHadDrink check */
		//hasMetAllCond(hasHadAdultBev, hasHadSleep, hasHadFood, hasHadDrink);	
	} /* Goes to else statement */
};




























//***************************************************************************************************************************************
// START INSTRUCTIONS
//***************************************************************************************************************************************
//
//
//  Raj doesn't speak to women unless he has had an adult
// beverage.  Sheldon and crew are wanting to help Raj overcome his social anxiety.
// So, Raj can drink and talk to women, but he doesn't know how much he can drink without becoming obnoxious.
//  Sheldon seeks to find out what BAC blood alcohol content level dictates Raj's level of intoxication.
//  They decide to run a test to see the different levels for Raj.
//        Obnoxious
//        Questionable - Borderline obnoxious
//        Great - Everything is good.  Perfect balance.
//        Not enough - need more to drink, still struggling to speak
//        Mute - Can't relax enough to talk to women.       
//***************************************************************************************************************************************
//***************************************************************************************************************************************

//Your project requires five functions:


// (1) Determine the number of drinks you've had. numDrinks 
//                  160 pounds - 0.023
// Multiply your number of drinks by the following numbers, depending on your weight:
//   numDrinks * weight
// - COULD PUT THESE VALS IN AN ARRAY - ASSIGNMENT 3


// (3) Subtract 0.015 per hour since you started drinking from the number you got in step 2. This factor represents how fast most people metabolize alcohol. If you are a 160-pound person downing 6 drinks in 2 hours, your estimated BAC is 0.108.
// CALCULATE METABOLISM AMOUNT - DETERMINE HOW MUCH HAS BEEN METABLIZED 
// var amtPerHour = 0.015,
// numHoursDrinking = 2,
// amtMetab = numHoursDrinking * amtPerHour (Amount Metab for average person)
// weight = 170,
// numHoursDrinking = 0,
// numDrinks = 0;
// numMetab
//------
// numbBrewskys = 0,  leave for assignment 3
// numGlassWine = 0,
// numShots = 0,
// numCrickets = 0;
//
//***************************************************************************************************************************************
// END INSTRUCTIONS
//***************************************************************************************************************************************