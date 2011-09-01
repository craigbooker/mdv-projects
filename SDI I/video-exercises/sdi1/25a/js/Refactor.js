<script language="javascript">

var p1HP;
var p1Modifier;
var p1Energy;
var p1Defense;
var p1Name;

var p2HP;
var p2Modifier;
var p2Energy;
var p2Defense;
var p2Name;

vavr stopGame = false;

function PlayerClass(){
	this.hp = 10;
	this.modifier = 0;
	this.energy = 5;
	this.defense = 0;
	this.name = "";
}

function newGame(){
	p1HP = 10;
	p1Modifier = 0;
	p1Energy = 5;
	p1Defense = 0;
	p1Name = "Player 1";
	
	p2HP = 10;
	p2Modifier = 0;
	p2Energy = 5;
	p2Defense = 0;
	p2Name = "Player 1";
	
	console.log("Pirate Battle Begins!");
	showStats();
	turn(1);
}

function turn(player){

	var hp = 0;
	var energy = 0;
	var modifier = 0;
	var defense = 0;
	enemymod = false;
	attack = false;
	
	if(player == 1){
	
		var name = "Player 1";
		var availableEnergy = p1Energy;
	} else {
		var name = "Player 2";
		var availableEnergy = p2Energy;
	
	}
	
	var opts = name + " - What would you like to do?\n========================\n";
	opts += "1. Reinforce the Ship. (+Health, +1 Energy)\n";
	opts += "2. Batten Down the Hatches. (+Defense, -1 Energy)\n";
	opts += "3. Broadside the Enemy. (+Attack, -21 Energy)\n";
	opts += "4. Sabotage Enemy Ship. (Reset Enemy Attack, -5 Energy)\n";
	opts += "5. Fire Cannons!";
	
	var action = parseInt(prompt(opts));
	
	var actionMsg = "";
	
	switch(action){
		case 1:
			hp += 1;
			energy += 1;
			actionMsg = name + " Fixes Their Ship!\n";
			break;
		case 2:	
	
	
	
	}



