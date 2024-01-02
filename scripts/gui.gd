extends Control

@onready var labelH = get_node("CanvasLayer/TextureRect/bgControlLabel/hungryLabel"); 
@onready var labelF = get_node("CanvasLayer/TextureRect/bgControlLabel/fatLabel");
@onready var labelP = get_node("CanvasLayer/TextureRect/bgControlLabel/pointsLabel");

@onready var hungryRef = Player.playerHungry;
@onready var fatRef = Player.playerFatigue;
@onready var pointRef = Player.playerPoints;

func _on_update_score_timeout():
	hungryRef -= 1;
	pointRef += 10;
	labelH.text = "Fome: " + str(hungryRef) + "%";
	labelP.text = "Pontos: " + str(pointRef);
