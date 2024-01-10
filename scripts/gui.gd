extends Control

@onready var totalChests = get_tree().get_nodes_in_group("collectables").size();

func _process(_delta):
	$CanvasLayer/Commands/chestsCollected.text = "Chests collected: " + str(GameManager.chestCollected) + "/" + str(totalChests);
	if GameManager.chestCollected == totalChests:
#		print("DEBUG - VOCE GANHOU");
		get_tree().change_scene_to_file("res://scenes/game_over.tscn");
