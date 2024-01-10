extends Control
@onready var gameScene = preload("res://scenes/game.tscn");

func _on_restart_button_up():
	GameManager.chestCollected = 0;
	get_tree().change_scene_to_packed(gameScene);

func _on_quit_button_up():
	get_tree().quit();
