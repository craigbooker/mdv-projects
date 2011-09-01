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
	var player1 = new PlayerClass();
	player1.name = "Captain Hook";
	var player2 = new PlayerClass();
	player2.name = "Blackbeard";
	
	console.log("Pirates Battle Begins!");
	
	console.log(player1);
	console.log(player2);

}

function turn(player){

	var hp = 0;
	var energy = 0;
	var modifier = 0;
	var defense = 0;

}

