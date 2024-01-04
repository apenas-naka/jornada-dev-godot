extends Control

const gameOver = preload("res://scenes/gameover.tscn");
	
@onready var labelHungry = get_node("CanvasLayer/TextureRect/bgControlLabel/hungryLabel"); 
@onready var labelStamina = get_node("CanvasLayer/TextureRect/bgControlLabel/staminaLabel");
@onready var labelPoints = get_node("CanvasLayer/TextureRect/bgControlLabel/pointsLabel"); 
#@onready var hungryRef = Player.playerHungry;
#@onready var fatRef = Player.playerFatigue;
#@onready var pointRef = Player.playerPoints;

#@onready var bonus_multiplier : int = 1;

func _process(_delta):
	if Game.playerHungry <= 0:	# SE A FOME ZERAR, MORRE!
		get_tree().change_scene_to_packed(gameOver);
		
	labelHungry.text = "Fome: " + str(Game.playerHungry)
	labelStamina.text = "Energia: " + str(Game.playerStamina);
	labelPoints.text = "Pontos:" + str(Game.playerPoints);

func _on_update_score_timeout():
	#Game.playerHungry -= 5;
	Game.playerPoints += 1 * Game.bonus_multiplier;
	#labelH.text = "Fome: " + str(hungryRef) + "%";
	#labelP.text = "Pontos: " + str(pointRef);
	Game.bonus_multiplier += 1;
	#get_node("CanvasLayer/TextureRect/bgControlLabel/hungryLabel").text = "Fome: " + str(Game.playerHungry);
	#get_node("CanvasLayer/TextureRect/bgControlLabel/pointsLabel").text = "Pontos:" + str(Game.playerPoints);
