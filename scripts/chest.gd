extends StaticBody2D

func _ready():
	$Interact.hide();
	
func _process(_delta):
	if Input.is_action_just_released("interact"):
		if $Interact.visible:
			GameManager.chestCollected += 1;
			$CollectSFX.play();
			hide();
			$timerFree.start();

func _on_timer_free_timeout():
	queue_free();
	
func _on_detection_body_entered(body):
	if body.is_in_group("player"):
		$Interact.show();
	
func _on_detection_body_exited(_body):
	$Interact.hide();	
