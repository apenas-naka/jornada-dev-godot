extends CharacterBody2D;

@export var playerSpeed : int = 80;

func get_input():
	var input_direction = Input.get_vector("move_left", "move_right", "move_up", "move_down");
	velocity = input_direction * playerSpeed;

func _physics_process(delta):
	get_input();
	var collided = move_and_collide(velocity * delta) # Verifica se esta colidindo.
	
	if collided:	# Se estiver vai normalizar a posição (pra não atravessar).
		velocity = velocity.bounce(collided.get_normal());
		
#func _on_hungry_timer_timeout():	# QUANDO CONTADOR DE FOME ZERAR
	#Game.playerHungry -= 100;	# TIRAR PONTOS DE FOME DO JOGADOR (UI)

func _input(event):
	if event.is_action_released("exit_key"):
		get_tree().quit();

#func _on_detect_body_entered(body):
	#if body.is_in_group("collectables"):
		#print("DEBUG");
#
#
#func _on_detect_area_entered(area):
	#if area.is_in_group("collectables"):
		#print("DEBUG");
