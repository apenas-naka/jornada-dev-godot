extends StaticBody2D

func _ready():
	$Interact.hide();
	
func _process(delta):
	if Input.is_action_just_released("interact"):
		if $Interact.visible:
			print("DEBUG");
			
func _on_detection_body_entered(body):
	if body.is_in_group("player"):
		$Interact.show();
	
func _on_detection_body_exited(body):
	$Interact.hide();	
