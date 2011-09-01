/*jslint devel: true, browser: true, sloppy: true, plusplus: true, maxerr: 100, indent: 4 */

//***************************************************************************************************************************************
// Author: Craig Booker
// Today's Date: 08/__/2011
// Assignment: Deliverable 3
//***************************************************************************************************************************************
//"use strict";
//'use strict';


//***************************************************************************************************************************************
// START VAR DECLARATIONS
//***************************************************************************************************************************************

var readyToGo = true,								/* A boolean var to set game play status */
    subjectName = "Raj",
    leadScientist = "Sheldon Cooper",							/* A string containing the name of the lead scientist */
    experimentName = "Help Raj Speak to Women",								/* A string containing the experiement name. */
    findingsAnnounce = "The findings that we established in this experiment are as follows.",
    hasMetCond = true,  /* Sheldon wanted to make sure Raj had not had any liquids or food after 11pm and that he slept 8 hours the night before. */
    hasHadAdultBev = false,
    hasHadDrink = false,
    hasHadFood = false,
    hasHadSleep = true,
    teamMemberNames = ["Howard Wolowitz", "Leonard Hofstadter", "Penny", "Sheldon Cooper"], /* Array listing team member names */
    leadScientistGroupie = "Amy Farrah-fowler",
    rajConidtion = "Selctive mutism",
    rajCondDescription = 'can\'t speak around women unless he has had an adult beverage.',		/* string with escape */
    numDrinks = 0,
    numHoursDrink = 0,
    rajWeight = 160, /* Raj's weight in Pounds */
    numCalcBy = [0.0375, 0.03, 0.027, 0.023, 0.021, 0.019, 0.017, 0.016],
    weightScale = [100, 120, 140, 160, 180, 200, 220, 240],
    rajOneHourBacScale = [0.023, 0.047, 0.070, 0.094, 0.117], /* BAC over a 1 hour time period, based on number of drinks in 1 hour time period. */
    rajMoodDesc = ["Mute", "Stammering", "Great", "Questionable", "Obnoxious"],
    rajMoodRangeLow = [0.00, 0.01, 0.02, 0.05, 0.70],
    rajMoodRangeHigh = [0.00, 0.0199, 0.0499, 0.0699, 0.70],
    rajBac = 0,
	eventLength = 1, /* Measured in hours */
	maxOneHour = 5;

// Mute = 0.00 
// Stammering = 0.01 - 0.0199
// Great = 0.02 - 0.0499
// questionable = 0.05 - 0.0699
// obnoxious = > 0.70
    //avgEventLength = 3; /* Measured in hours */
	
//***************************************************************************************************************************************	
// END VAR DECLARATIONS	
//***************************************************************************************************************************************

//***************************************************************************************************************************************
// START - Function 1 - PROCEDURE - function that doesn't return a value .
// START - OUTPUT ALL VARIABLES
// This sets the stage for the experiment.
//***************************************************************************************************************************************

var outputStatus = function (readyToGo) {
        //'use strict';
        if (readyToGo === true) {
            console.log("SHELDON: Hello fellow scientists, I am the experiment leader " + leadScientist + ".");
            console.log("SHELDON: Welcome to the \"" + experimentName + "\" project."); 
            console.log("SHELDON: I, the lead scientist of the \""  + experimentName + "\" project, " + leadScientist + ", have been chosen to facilitate how the experiement will be conducted.");
            console.log("SHELDON: May I say how big of an honor this is to be chosen.");
            console.log("LEONARD: Sheldon, you nominated yourself, what choice did we have?");
       // console.log("The members of my team are " + gameOrder + " .");
            console.log("SHELDON: First, I would like to welcome my colleagues, the scientists I will be working with.");
            console.log("SHELDON: The first scientist, " + teamMemberNames[0] + ", doesn't have his PHD, but we'll let him play along.");
            console.log("SHELDON: Our second scientist, " + teamMemberNames[1] + ", is an experimental physicist.");
            console.log("SHELDON: The third member on the team, " + teamMemberNames[2] + ", is not technically a scientist, but is playing the role of bartender.");
         //   console.log("The fourth contestant, " + teamMemberNames[3] + ", " + rajCondDescription);
            console.log("SHELDON: And last, but not least! Myself, the lead scientist, " + teamMemberNames[3] + "   .... *applause* comes from " + leadScientistGroupie + ". \n\n");
        //console.log("Are we short any team members?  " + teamShortMember );
            console.log("SHELDON: Are we ready to begin our experiment? ..." + readyToGo + "  \n\n");
            console.log("SHELDON: Let's begin, shall we.");
        
        } else {
            console.log("SHELDON: We are not ready! Let's try again tomorrow.");
        } 
    
    };


//***************************************************************************************************************************************
// END FUNCTION PROCEDURE 1 - OUTPUT ALL VARIABLES 
//***************************************************************************************************************************************

//***************************************************************************************************************************************
// START Function (2) - Boolean - Sheldon wants to confirm that the subject of the experiment (Raj) has not tainted the experiment by drinking beforehand.
// Function 2  Takes two arguments and does some kind of Boolean comparison between them. The data type of the arguments
//              doesn't matter for this function.

//***************************************************************************************************************************************
// START BOOLEAN CONDITIONAL = TRUE
//***************************************************************************************************************************************

var hasMetAllCond = function (hasHadAdultBev, hasHadSleep, hasHadFood, hasHadDrink) {
    var hasMetAdultBev = hasHadAdultBev,
		hasMetSleep = hasHadSleep,
		hasMetFood = hasHadFood,
		hasMetDrink = hasHadDrink,
		hasMetCond = true,
		//adultBev = hasHadAdultBev, 
		//	sleep = hasHadSleep, 
		//	food = hasHadFood, 
		//	drink = hasHadDrink,
		
		
		hashadFoodDrink = function (food, drink) { 
			if ((food === false) && (drink === false)) { /* Check to see if Raj did abide by the conditions that he not eat or drink after 11pm */ 
				hashadFoodDrink = false;
				return hashadFoodDrink;
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
		
	if ((checkAlcSleep(hasMetAdultBev, hasMetSleep)) && (hashadFoodDrink(hasMetFood, hasMetDrink))) {
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
// FUNCTION 2 - END BOOLEAN CONDITIONAL = FALSE
// END - Function 2 - Boolean Function
//***************************************************************************************************************************************

//***************************************************************************************************************************************
// START - Function 3 - Number - args (1) number || uses it in a while loop somehow || doing some math at the same time. || can be simple (counting or summing)
// Need a function to calculate blood alcohol level passed args ( 
// calculate var rbal - Raj's blood alcohol level  
//
//  Some of this data will not be used until project 3.	
//Steps (1) Determine the number of drinks you've had. numDrinks
// One drink equals 12 ounces of beer,
//                   5 ounces of wine,
//                   1 ounce of hard liquor (80 to 100 proof). 
//                  160 pounds - 0.023
// Step (2) Multiply your number of drinks by the following numbers, depending on your weight:
//   numDrinks * numValByWeight
// - COULD PUT THESE VALS IN AN ARRAY - ASSIGNMENT 3
// 100 pounds - 0.0375
// 120 pounds - 0.03
// 140 pounds - 0.027
//  160 pounds - 0.023
//  180 pounds - 0.021
//  200 pounds - 0.019
//  220 pounds - 0.017
//  240 pounds - 0.016
//

//***************************************************************************************************************************************
// Calculates BAC Blood Alcohol Content
var calcBac = function (numDrinks, numHoursDrink) {		
		var amtPerHour = 0.015,
			multVal = weightScale[4],
			valStep2 = (numDrinks * multVal),
			calcRajBac = (valStep2 - (numHoursDrink * amtPerHour));
		rajBac = calcRajBac;
		console.log("Raj\'s Blood Alcohol Concentration (BAC) is " + rajBac + " percent.");
		return rajBac;
	};

//***************************************************************************************************************************************
// END - @@@@@@@
//***************************************************************************************************************************************


//***************************************************************************************************************************************
// START - Function 4 - One function that does something interesting with strings, after taking two strings as arguments. This can be simple concatenation, 
// but you are encouraged to look into other, more interesting string applications.
//  I was going to use this function to output some of the data that had been gathered based on function 3 - the number function.
// In this function, I am going to tell at what different levels, Raj would act in a civilized manner.
//***************************************************************************************************************************************
//

var outputFindings = function (subjectName, findingsAnnounce, rajMoodRangeLow, rajMoodRangeHigh) {
	var maxDrinks = [2, 2, 3],
		// minEventLength = 1,  /* This is based on the assumption that the minimum event length will not be less than 1 hour. */
		eventLength = [1, 2, 3], /* Array of event length(s) measured in hours */
       // maxEventLength = 0,
        i = 0,
		maxEventLength = eventLength[2];
	console.log(findingsAnnounce);
	
	for (i = 0; i < maxEventLength; i++) {
		console.log("If the event is " + eventLength[i] + " hour in length, " + subjectName + " can have " + maxDrinks[i] + " drinks.");
		if (eventLength[i] > 3) {
			console.log("Raj needs a designated driver.");
		}
	}
	console.log("At any given time, Raj needs to maintain a BAC between " + rajMoodRangeLow[2] + " - " +  rajMoodRangeHigh[2] + " to speak to women and not be obnoxious.");
         
};

//***************************************************************************************************************************************
// END - Function 4
//***************************************************************************************************************************************
//***************************************************************************************************************************************
// START - Function 5 - The ARRAY function. 
// This function gets passed an array and does calculations to fill the array with the following values.
// rajOneHourBacScale = [0.023, 0.047, 0.070, 0.094, 0.117], /* BAC over a 1 hour time period, based on number of drinks in 1 hour time period. */
// This array then gets passed to checkBacCalcs - which double checks the computations in function 4, number function, which calculates
// BAC or blood alcohol concentration. I was confused on how to tie this function into the whole story. to verify they are correct. 
//***************************************************************************************************************************************
//
var calcHourBac = function (rajOneHourBacScale, maxOneHour) {
	var maxNumDrinks = maxOneHour,
		j = 0,
		rBacScale = [],
		isOdd = function (j) { 
			return (j % 2) === 1;
		};
		
	for (j = 1; j <= maxNumDrinks; j++) {
		if (isOdd(j)) {
			rBacScale[j] += 0.23;
		} else {
			rBacScale[j] += 0.24;
		}
		
	}
	rajOneHourBacScale = rBacScale;
	return rajOneHourBacScale; 
};


//***************************************************************************************************************************************
// END - Function 5
//***************************************************************************************************************************************


//***************************************************************************************************************************************
// START - MAIN
//***************************************************************************************************************************************
//
outputStatus(readyToGo); /* call procedure function - returns no values */
hasMetAllCond(hasHadAdultBev, hasHadSleep, hasHadFood, hasHadDrink); /* call boolean function */
outputFindings(subjectName, findingsAnnounce, rajMoodRangeLow, rajMoodRangeHigh); /* call string function */
calcHourBac(rajOneHourBacScale, maxOneHour); /* call array function */
calcBac(numDrinks, numHoursDrink, rajWeight); /* call number function */
// checkBacCalcs(rajBac);  Save for project 3



//***************************************************************************************************************************************
// END - MAIN
//***************************************************************************************************************************************


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

//  (1)function - doesn't return a value (a procedure). || Is  ||
//  (2)function - args (2) arguments || does Boolean comparison between them. || The data type of the arguments doesn't matter for this function.
// args isRajDrunk = false, bloodAlcoholLevel
//  (3)function - args (1) number || uses it in a while loop somehow || doing some math at the same time. || can be simple (counting or summing)
// Need a function to calculate blood alcohol level passed args ( 
// calculate var rbal - Raj's blood alcohol level  
// (1) Determine the number of drinks you've had. numDrinks
// One drink equals 12 ounces of beer,
//                   5 ounces of wine,
//                   1 ounce of hard liquor (80 to 100 proof). 
//                  160 pounds - 0.023
// Multiply your number of drinks by the following numbers, depending on your weight:
//   numDrinks * weight
// - COULD PUT THESE VALS IN AN ARRAY - ASSIGNMENT 3
// 100 pounds - 0.0375
// 120 pounds - 0.03
// 140 pounds - 0.027
//  160 pounds - 0.023
//  180 pounds - 0.021
//  200 pounds - 0.019
//  220 pounds - 0.017
//  240 pounds - 0.016
// raj2HourBacScale = [0.008, 0.032, 0.055, 0.079, 0.102], /* BAC over a 2 hour time period, based on number of drinks in 2 hour time period. */
// raj3HourBacScale = [0.000, 0.017, 0.040, 0.074, 0.087], /* BAC over a 3 hour time period, based on number of drinks in 3 hour time period. */

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
//  (4)function - args = (2) strings || does something interesting with strings, after . This can be concatenation
//  (5)function -args (1) array and (1) number || uses them in for loop of some kind. || This should not be a simple index dereference
//Since four of those functions return values, you should do something interesting with the values when you get them back. You are encouraged, but 
// not required, to use the return values from earlier functions as the inputs for later functions. You'll need this for Project 3, so it's
// something you should get comfortable with now.
// Some of the functions in your project require arguments with specific data types (Number, String, Array). Others, marked simply "Argument", can 
// be whatever data type you choose. Your functions can accept more arguments than those on the flowchart, but they cannot accept fewer.
//***************************************************************************************************************************************
// END INSTRUCTIONS
//***************************************************************************************************************************************