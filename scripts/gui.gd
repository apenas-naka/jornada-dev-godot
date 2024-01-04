extends Control

@onready var gameOver = preload("res://scenes/game_over.tscn");
	
@onready var labelHungry = get_node("CanvasLayer/TextureRect/bgControlLabel/hungryLabel"); 
@onready var labelStamina = get_node("CanvasLayer/TextureRect/bgControlLabel/staminaLabel");
@onready var labelPoints = get_node("CanvasLayer/TextureRect/bgControlLabel/pointsLabel"); 

func _process(_delta):
	if Game.playerHungry <= 0:	# SE A FOME ZERAR, MORRE!
		get_tree().change_scene_to_packed(gameOver);
		
	labelHungry.text = "Fome: " + str(Game.playerHungry)
	labelStamina.text = "Energia: " + str(Game.playerStamina);
	labelPoints.text = "Pontos:" + str(Game.playerPoints);

func _on_update_score_timeout():
	Game.playerPoints += 1 * Game.bonus_multiplier;
	Game.bonus_multiplier += 1;
