extends Area2D

func _on_body_entered(body):
	if not body.name != "player":
		print("Player comeu");
		queue_free();
	else:
		print("Colidiu em algo")
		
