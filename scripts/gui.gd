extends Control

const gameOver = preload("res://scenes/gameover.tscn");

@onready var labelH := get_node("CanvasLayer/TextureRect/bgControlLabel/hungryLabel"); 
@onready var labelF := get_node("CanvasLayer/TextureRect/bgControlLabel/fatLabel");
@onready var labelP := get_node("CanvasLayer/TextureRect/bgControlLabel/pointsLabel");

@onready var hungryRef := Player.playerHungry;
@onready var fatRef := Player.playerFatigue;
@onready var pointRef := Player.playerPoints;

@onready var bonus_multiplier : int = 1;

func _process(delta):
	if hungryRef <= 0:	# SE A FOME ZERAR, MORRE!
		get_tree().change_scene_to_packed(gameOver);

func _on_update_score_timeout():
	hungryRef -= 5;
	pointRef += 1 * bonus_multiplier;
	labelH.text = "Fome: " + str(hungryRef) + "%";
	labelP.text = "Pontos: " + str(pointRef);
	bonus_multiplier += 1.25;
