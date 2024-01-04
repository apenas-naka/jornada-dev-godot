extends Control

@onready var mainGame = preload("res://scenes/game.tscn");

func _on_play_button_up():
	get_tree().change_scene_to_packed(mainGame);


func _on_quit_button_up():
	get_tree().quit();
