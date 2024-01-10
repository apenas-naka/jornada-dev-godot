extends  Node

var chestCollected : int = 0;


func _on_background_sound_finished():
	$backgroundSound.play();
